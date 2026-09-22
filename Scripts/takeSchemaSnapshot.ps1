<#
.SYNOPSIS
    Downloads a live GraphQL endpoint's schema as SDL and saves a point-in-time snapshot.

.DESCRIPTION
    Requests the endpoint's SDL (appends `?sdl`) and saves it as <Name>-snapshot-<stamp>.graphql.
    Pure PowerShell — no Node or other dependencies.

.PARAMETER Endpoint
    URL of the live GraphQL endpoint.

.PARAMETER Name
    Logical name prefix for the snapshot file.

.PARAMETER OutputDir
    Directory to store the snapshot (local, UNC, or relative). Created if missing.

.PARAMETER IncludeTime
    Stamp the filename with date and time (yyyy-MM-dd-HHmmss) instead of date only.

.PARAMETER SkipIfUnchanged
    If the download is identical to the most recent snapshot in OutputDir, don't store it.

.PARAMETER Headers
    Optional hashtable of HTTP headers (e.g. auth) for the request.

.EXAMPLE
    .\takeSchemaSnapshot.ps1 -Endpoint https://api.example.com/graphql -Name gateway -OutputDir .\snapshots
#>
param(
    [Parameter(Mandatory = $true)]  [string]$Endpoint,
    [Parameter(Mandatory = $true)]  [string]$Name,
    [Parameter(Mandatory = $true)]  [string]$OutputDir,
    [Parameter(Mandatory = $false)] [switch]$IncludeTime,
    [Parameter(Mandatory = $false)] [switch]$SkipIfUnchanged,
    [Parameter(Mandatory = $false)] [hashtable]$Headers = @{}
)

$ErrorActionPreference = 'Stop'

# ── Helper: resolve unique file path (never overwrites) ───────────────────────
function Get-UniqueFilePath {
    param([string]$Dir, [string]$BaseName, [string]$Extension)
    $candidate = Join-Path $Dir "$BaseName$Extension"
    if (-not (Test-Path $candidate)) { return $candidate }
    $counter = 1
    do {
        $candidate = Join-Path $Dir "$BaseName($counter)$Extension"
        $counter++
    } while (Test-Path $candidate)
    return $candidate
}

# ── Resolve and create output directory ───────────────────────────────────────
if (-not [System.IO.Path]::IsPathRooted($OutputDir) -and $OutputDir -notmatch "^\\\\") {
    $OutputDir = Join-Path (Get-Location) $OutputDir
}
if (-not (Test-Path $OutputDir)) {
    New-Item -ItemType Directory -Path $OutputDir -Force | Out-Null
}

# ── Build target file name ─────────────────────────────────────────────────────
$stamp    = if ($IncludeTime) { Get-Date -Format "yyyy-MM-dd-HHmmss" } else { Get-Date -Format "yyyy-MM-dd" }
$baseName = "$Name-snapshot-$stamp"
$outPath  = Get-UniqueFilePath -Dir $OutputDir -BaseName $baseName -Extension ".graphql"

# Capture the most recent existing snapshot before writing (for -SkipIfUnchanged).
$previousSnapshot = $null
if ($SkipIfUnchanged) {
    $previousSnapshot = Get-ChildItem -LiteralPath $OutputDir -Filter "$Name-snapshot-*.graphql" -File -ErrorAction SilentlyContinue |
        Sort-Object Name | Select-Object -Last 1
}

# ── Download the schema SDL ────────────────────────────────────────────────────
$sdlUrl = if ($Endpoint -match 'sdl') { $Endpoint } elseif ($Endpoint -match '\?') { "${Endpoint}&sdl" } else { "${Endpoint}?sdl" }
Write-Host "Downloading SDL: $sdlUrl" -ForegroundColor Cyan

# Download straight to the file so the raw SDL text is written as-is (piping
# $response.Content can be a byte array, which Set-Content writes one byte per line).
try {
    Invoke-WebRequest -Uri $sdlUrl -Headers $Headers -OutFile $outPath -UseBasicParsing -ErrorAction Stop
} catch {
    Write-Error "Schema download failed: $_"
    exit 1
}

if (-not (Test-Path -LiteralPath $outPath) -or (Get-Item -LiteralPath $outPath).Length -eq 0) {
    Remove-Item -LiteralPath $outPath -Force -ErrorAction SilentlyContinue
    Write-Error "Downloaded schema is empty."
    exit 1
}

# ── Skip storing if identical to the previous snapshot ────────────────────────
if ($SkipIfUnchanged -and $previousSnapshot) {
    if ((Get-FileHash -LiteralPath $outPath).Hash -eq (Get-FileHash -LiteralPath $previousSnapshot.FullName).Hash) {
        Remove-Item -LiteralPath $outPath -Force -ErrorAction SilentlyContinue
        Write-Host "No change since $($previousSnapshot.Name) — snapshot not stored." -ForegroundColor Yellow
        return
    }
}

# ── Done ───────────────────────────────────────────────────────────────────────
Write-Host ""
Write-Host "Snapshot saved: $outPath" -ForegroundColor Green
Write-Host "  Endpoint : $Endpoint"
Write-Host "  Name     : $Name"
Write-Host "  Stamp    : $stamp"

# Output the path so callers can capture it
Write-Output $outPath
