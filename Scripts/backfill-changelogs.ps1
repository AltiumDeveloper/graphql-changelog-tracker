#requires -Version 7.6
# Generates changelogs for every consecutive snapshot pair that doesn't yet have one.
# Run after backfill-snapshots.sh has populated the Snapshots/Scheduled directory.

param(
    [string]$SnapshotDir  = (Join-Path $PSScriptRoot "../PlatformApi/Cloud/Snapshots/Scheduled"),
    [string]$ChangelogDir = (Join-Path $PSScriptRoot "../PlatformApi/Cloud/Changelogs/Scheduled")
)

$ErrorActionPreference = 'Stop'
$diffScript = Join-Path $PSScriptRoot "generateSchemaDiff.ps1"

New-Item -ItemType Directory -Force -Path $ChangelogDir | Out-Null

$snapshots = Get-ChildItem -LiteralPath $SnapshotDir -Filter "gateway-snapshot-*.graphql" -File |
    Sort-Object Name

if ($snapshots.Count -lt 2) {
    Write-Host "Need at least two snapshots — nothing to diff."
    exit 0
}

$generated = 0
$skipped   = 0

# The snapshot at 2026-09-17 (backfill source: fusion-gateway test file) and
# 2026-09-24 (live source: running gateway) come from different sources. Diffing
# them produces ~395 spurious directive changes. Skip that boundary pair.
$sourceBoundaryDate = '2026-09-24'

for ($i = 1; $i -lt $snapshots.Count; $i++) {
    $old = $snapshots[$i - 1]
    $new = $snapshots[$i]

    $newDate = if ($new.Name -match '(\d{4}-\d{2}-\d{2})') { $Matches[1] } else { continue }

    if ($newDate -eq $sourceBoundaryDate) {
        Write-Host "  skip  $newDate (source boundary — backfill/live switch)"
        $skipped++
        continue
    }

    $changelogPath = Join-Path $ChangelogDir "gateway-changelog-$newDate.md"
    if (Test-Path -LiteralPath $changelogPath) {
        Write-Host "  skip  $newDate (exists)"
        $skipped++
        continue
    }

    Write-Host "  diff  $($old.Name) → $($new.Name)"
    & $diffScript `
        -OldSchema     $old.FullName `
        -NewSchema     $new.FullName `
        -OutputFile    $changelogPath `
        -IncludeSummary $false | Out-Null
    $diffExit = $LASTEXITCODE
    if ($diffExit -eq 3) {
        Write-Host "  no-change $newDate (skipped)"
    } elseif ($diffExit -le 1) {
        $generated++
    } else {
        Write-Error "generateSchemaDiff failed (exit code $diffExit) for $newDate."
        exit 1
    }
}

Write-Host ""
Write-Host "Done. Generated: $generated  Skipped (existing): $skipped"
