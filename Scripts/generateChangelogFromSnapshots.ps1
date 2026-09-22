<#
.SYNOPSIS
    Generates a schema changelog from already-captured snapshots (generic, reusable).
    Capturing snapshots is a separate concern (takeSchemaSnapshot.ps1) — this script
    only diffs and writes the changelog.

.DESCRIPTION
    Two modes:
      - Automated (default): diffs the newest snapshot in -SnapshotDir against the
        most recent snapshot from an EARLIER day (which may be more than one day back),
        writing the changelog to -ChangelogDir as <Name>-changelog-<newestDate>.md.
        Idempotent — if that changelog already exists, it does nothing.
      - Manual (-OldSnapshot and -NewSnapshot supplied): diffs those two snapshots,
        writing to -ChangelogDir with an optional custom name.

    All service-specific values (name, directories) are arguments — the caller decides
    which environment/series to diff. It orchestrates generateSchemaDiff.ps1 alongside it.

.PARAMETER Name
    Logical schema name used as the snapshot/changelog filename prefix.

.PARAMETER SnapshotDir
    Directory of the snapshot series to diff.

.PARAMETER ChangelogDir
    Directory the changelog is written to.

.PARAMETER OldSnapshot / NewSnapshot
    Manual mode: snapshot files (a path, or a bare name looked up under -SnapshotDir).

.PARAMETER ChangelogName
    Manual mode: optional changelog file name. Defaults to
    <Name>-changelog-<oldDate>-to-<newDate>.md

.PARAMETER IncludeSummary
    Passed through to generateSchemaDiff.ps1 to show/hide the summary table.
#>
param(
    [Parameter(Mandatory = $true)]  [string]$Name,
    [Parameter(Mandatory = $true)]  [string]$SnapshotDir,
    [Parameter(Mandatory = $true)]  [string]$ChangelogDir,
    [Parameter(Mandatory = $false)] [string]$OldSnapshot,
    [Parameter(Mandatory = $false)] [string]$NewSnapshot,
    [Parameter(Mandatory = $false)] [string]$ChangelogName,
    [Parameter(Mandatory = $false)] [bool]$IncludeSummary = $true
)

$ErrorActionPreference = 'Stop'

$changelogScript = Join-Path $PSScriptRoot 'generateSchemaDiff.ps1'
New-Item -ItemType Directory -Force -Path $ChangelogDir | Out-Null

# Extract the yyyy-MM-dd stamp from a snapshot file name.
function Get-SnapshotDate([string]$fileName) {
    if ($fileName -match '(\d{4}-\d{2}-\d{2})') { return $Matches[1] }
    return $null
}

# Resolve a snapshot input to a real file: a path that exists, or a bare name under $SnapshotDir.
function Resolve-Snapshot([string]$value) {
    if (Test-Path $value) { return (Resolve-Path $value).Path }
    $inDir = Join-Path $SnapshotDir $value
    if (Test-Path $inDir) { return (Resolve-Path $inDir).Path }
    return $null
}

# Emit a step output when running under GitHub Actions (no-op otherwise).
function Set-Output([string]$name, [string]$value) {
    if ($env:GITHUB_OUTPUT) { "$name=$value" | Out-File -FilePath $env:GITHUB_OUTPUT -Append -Encoding utf8 }
}

# Total changes across all categories, read from the changelog's section headers.
function Get-ChangeCount([string]$changelogPath) {
    if (-not (Test-Path -LiteralPath $changelogPath)) { return 0 }
    $total = 0
    foreach ($line in Get-Content -LiteralPath $changelogPath) {
        if ($line -match 'Changes \((\d+)\)') { $total += [int]$Matches[1] }
    }
    return $total
}

if ($OldSnapshot -and $NewSnapshot) {
    # ── Manual: diff two given snapshots ────────────────────────────────────────
    $oldPath = Resolve-Snapshot $OldSnapshot
    $newPath = Resolve-Snapshot $NewSnapshot
    if (-not $oldPath) { Write-Error "Old snapshot not found: $OldSnapshot"; exit 1 }
    if (-not $newPath) { Write-Error "New snapshot not found: $NewSnapshot"; exit 1 }

    if ($ChangelogName) {
        $logName = $ChangelogName
        if ($logName -notmatch '\.md$') { $logName += '.md' }
    } else {
        $logName = "$Name-changelog-$(Get-SnapshotDate $oldPath)-to-$(Get-SnapshotDate $newPath).md"
    }
    $changelog = Join-Path $ChangelogDir $logName

    Write-Host "Manual diff"
    Write-Host "  Old : $oldPath"
    Write-Host "  New : $newPath"
    Write-Host "  Out : $changelog"
    & $changelogScript -OldSchema $oldPath -NewSchema $newPath -OutputFile $changelog -IncludeSummary:$IncludeSummary
    $diffExit = $LASTEXITCODE
}
else {
    # ── Automated: newest snapshot vs the most recent one from an EARLIER day ────
    $snapshots = Get-ChildItem -LiteralPath $SnapshotDir -Filter "$Name-snapshot-*.graphql" -File -ErrorAction SilentlyContinue |
        ForEach-Object { $d = Get-SnapshotDate $_.Name; if ($d) { [pscustomobject]@{ File = $_; Date = $d } } } |
        Sort-Object Date

    $newest = $snapshots | Select-Object -Last 1
    if (-not $newest) {
        Write-Host "No snapshots in $SnapshotDir — nothing to diff."
        Set-Output 'changelog' ''; Set-Output 'changed' 'false'; exit 0
    }

    # Baseline = most recent snapshot from an earlier day (yesterday for a daily series,
    # ~2 weeks ago for a fortnightly series — whatever the previous stored day was).
    $baseline = $snapshots | Where-Object { $_.Date -lt $newest.Date } | Select-Object -Last 1
    if (-not $baseline) {
        Write-Host "Only one day of snapshots so far — nothing to diff."
        Set-Output 'changelog' ''; Set-Output 'changed' 'false'; exit 0
    }

    $changelog = Join-Path $ChangelogDir "$Name-changelog-$($newest.Date).md"
    if (Test-Path -LiteralPath $changelog) {
        Write-Host "Changelog already exists for $($newest.Date) — skipping."
        Set-Output 'changelog' ''; Set-Output 'changed' 'false'; exit 0
    }

    Write-Host "Automated diff"
    Write-Host "  Baseline : $($baseline.File.FullName) (day $($baseline.Date))"
    Write-Host "  Newest   : $($newest.File.FullName) (day $($newest.Date))"
    Write-Host "  Out      : $changelog"
    & $changelogScript -OldSchema $baseline.File.FullName -NewSchema $newest.File.FullName -OutputFile $changelog -IncludeSummary:$IncludeSummary
    $diffExit = $LASTEXITCODE
}

# generateSchemaDiff exit codes: 0 = no breaking, 1 = breaking (a verdict we still
# want committed → warning), 2+ = hard failure (fail the run).
if ($diffExit -eq 0) {
    Write-Host "No breaking changes detected."
} elseif ($diffExit -eq 1) {
    Write-Host "::warning::Breaking changes detected — see the generated changelog."
} else {
    Write-Error "Schema diff failed (exit code $diffExit)."
    exit 1
}

# Report the changelog path and whether it has at least one change, so the workflow
# can gate committing/publishing on real changes.
$totalChanges = Get-ChangeCount $changelog
$changed      = if ($totalChanges -gt 0) { 'true' } else { 'false' }
Write-Host "Total changes: $totalChanges (changed=$changed)"
Set-Output 'changelog' $changelog
Set-Output 'changed' $changed
exit 0
