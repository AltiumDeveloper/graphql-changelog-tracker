<#
.SYNOPSIS
    Takes a snapshot of a live GraphQL schema via introspection and saves it as
    either SDL (.graphql) or the raw introspection result (.json).

.PARAMETER Endpoint
    URL of the live GraphQL endpoint to introspect.

.PARAMETER Name
    Logical name for this schema (e.g. "gateway", "products-api").
    Used as a prefix in the filename: <Name>-snapshot-<DATE>.<graphql|json>

.PARAMETER OutputDir
    Directory where the snapshot file will be stored.
    Supports local paths, UNC paths (\\server\share), or an existing directory.
    Created automatically if it does not exist (local/UNC only).

.PARAMETER Format
    Output format:
      - graphql (default) : SDL, converted from the introspection result.
      - json              : the raw introspection result.

.PARAMETER IncludeTime
    Stamp the filename with date and time (yyyy-MM-dd-HHmmss) instead of date only.
    Use for on-demand/ad-hoc captures so multiple same-day snapshots don't collide.

.PARAMETER SkipIfUnchanged
    If the newly captured snapshot is byte-identical to the most recent snapshot of
    the same format already in OutputDir, delete it and output nothing — so an
    unchanged schema is neither stored nor committed. (Reliable for SDL, whose
    output is deterministic; raw JSON may differ run-to-run due to response noise.)

.PARAMETER Headers
    Optional hashtable of HTTP headers to include in the introspection request.
    Example: @{ Authorization = "Bearer token123" }

.EXAMPLE
    .\takeSchemaSnapshot.ps1 -Endpoint https://api.example.com/graphql -Name gateway -OutputDir .\snapshots

.EXAMPLE
    .\takeSchemaSnapshot.ps1 -Endpoint https://api.example.com/graphql -Name gateway -OutputDir .\snapshots -Format json

.EXAMPLE
    .\takeSchemaSnapshot.ps1 -Endpoint https://api.example.com/graphql -Name gateway -OutputDir \\fileserver\schemas\snapshots -Headers @{ Authorization = "Bearer mytoken" }
#>

param(
    [Parameter(Mandatory = $true, HelpMessage = "URL of the live GraphQL endpoint")]
    [string]$Endpoint,

    [Parameter(Mandatory = $true, HelpMessage = "Logical name prefix for the snapshot file")]
    [string]$Name,

    [Parameter(Mandatory = $true, HelpMessage = "Directory to store the snapshot (local, UNC, or relative path)")]
    [string]$OutputDir,

    [Parameter(Mandatory = $false, HelpMessage = "Output format: graphql (SDL, default) or json (raw introspection)")]
    [ValidateSet('graphql', 'json')]
    [string]$Format = 'graphql',

    [Parameter(Mandatory = $false, HelpMessage = "Include the time in the filename stamp (yyyy-MM-dd-HHmmss) instead of date only")]
    [switch]$IncludeTime,

    [Parameter(Mandatory = $false, HelpMessage = "Skip storing the snapshot if it is identical to the most recent snapshot already in OutputDir")]
    [switch]$SkipIfUnchanged,

    [Parameter(Mandatory = $false, HelpMessage = "Extra HTTP headers for the introspection request (hashtable)")]
    [hashtable]$Headers = @{}
)

# ── Introspection query ────────────────────────────────────────────────────────
$introspectionQuery = @'
query IntrospectionQuery {
  __schema {
    queryType { name }
    mutationType { name }
    subscriptionType { name }
    types {
      ...FullType
    }
    directives {
      name
      description
      locations
      args { ...InputValue }
    }
  }
}

fragment FullType on __Type {
  kind
  name
  description
  fields(includeDeprecated: true) {
    name
    description
    args { ...InputValue }
    type { ...TypeRef }
    isDeprecated
    deprecationReason
  }
  inputFields { ...InputValue }
  interfaces { ...TypeRef }
  enumValues(includeDeprecated: true) {
    name
    description
    isDeprecated
    deprecationReason
  }
  possibleTypes { ...TypeRef }
}

fragment InputValue on __InputValue {
  name
  description
  type { ...TypeRef }
  defaultValue
}

fragment TypeRef on __Type {
  kind
  name
  ofType {
    kind name
    ofType {
      kind name
      ofType {
        kind name
        ofType {
          kind name
          ofType {
            kind name
            ofType {
              kind name
              ofType { kind name }
            }
          }
        }
      }
    }
  }
}
'@

# ── Helper: convert introspection JSON to SDL via the Node helper ──────────────
function ConvertTo-SDL {
    param([string]$JsonPath, [string]$SdlPath)

    $helper = Join-Path $PSScriptRoot 'introspection-to-sdl.mjs'
    if (-not (Get-Command "node" -ErrorAction SilentlyContinue)) {
        Write-Error "Node.js is required to produce SDL (.graphql) output. Use -Format json, or install Node."
        return $false
    }
    if (-not (Test-Path -LiteralPath $helper)) {
        Write-Error "SDL helper not found: $helper"
        return $false
    }

    $sdl = & node $helper $JsonPath
    if ($LASTEXITCODE -ne 0 -or -not $sdl) {
        Write-Error "Failed to convert introspection JSON to SDL. Ensure dependencies are installed (npm ci)."
        return $false
    }

    $sdl | Set-Content -Path $SdlPath -Encoding UTF8
    return $true
}

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
    Write-Host "Creating output directory: $OutputDir" -ForegroundColor Cyan
    New-Item -ItemType Directory -Path $OutputDir -Force | Out-Null
}

# ── Build target file name ─────────────────────────────────────────────────────
# Daily/automated runs stamp with the date only; on-demand runs add the time so
# multiple same-day captures get distinct names.
$stamp     = if ($IncludeTime) { Get-Date -Format "yyyy-MM-dd-HHmmss" } else { Get-Date -Format "yyyy-MM-dd" }
$baseName  = "$Name-snapshot-$stamp"
$extension = if ($Format -eq 'json') { ".json" } else { ".graphql" }
$outPath   = Get-UniqueFilePath -Dir $OutputDir -BaseName $baseName -Extension $extension

# When skipping unchanged snapshots, capture the most recent EXISTING snapshot of
# the same format now (before writing the new one) to compare against afterwards.
$previousSnapshot = $null
if ($SkipIfUnchanged) {
    $previousSnapshot = Get-ChildItem -LiteralPath $OutputDir -Filter "$Name-snapshot-*$extension" -File -ErrorAction SilentlyContinue |
        Sort-Object Name | Select-Object -Last 1
}

# ── Run introspection ──────────────────────────────────────────────────────────
Write-Host "Introspecting: $Endpoint" -ForegroundColor Cyan

$body = @{ query = $introspectionQuery } | ConvertTo-Json -Depth 3 -Compress

$defaultHeaders = @{ "Content-Type" = "application/json" }
$mergedHeaders  = $defaultHeaders + $Headers

try {
    $response = Invoke-RestMethod `
        -Uri         $Endpoint `
        -Method      POST `
        -Body        $body `
        -Headers     $mergedHeaders `
        -ErrorAction Stop
} catch {
    Write-Error "Introspection request failed: $_"
    exit 1
}

# ── Validate response ──────────────────────────────────────────────────────────
if ($response.errors) {
    Write-Error "GraphQL returned errors:`n$($response.errors | ConvertTo-Json -Depth 5)"
    exit 1
}

if (-not $response.data.__schema) {
    Write-Error "Response did not contain a valid __schema. Introspection may be disabled on this endpoint."
    exit 1
}

# ── Write the snapshot in the requested format ────────────────────────────────
if ($Format -eq 'json') {
    # Raw introspection result.
    $response | ConvertTo-Json -Depth 100 | Set-Content -Path $outPath -Encoding UTF8
} else {
    # SDL: serialise the introspection result to a temp file, then convert to SDL.
    $tmpJson = [System.IO.Path]::GetTempFileName() + ".json"
    $response | ConvertTo-Json -Depth 100 | Set-Content -Path $tmpJson -Encoding UTF8

    $ok = ConvertTo-SDL -JsonPath $tmpJson -SdlPath $outPath
    Remove-Item $tmpJson -Force -ErrorAction SilentlyContinue

    if (-not $ok) {
        Write-Error "Failed to write snapshot file."
        exit 1
    }
}

# ── Skip storing if identical to the previous snapshot ────────────────────────
if ($SkipIfUnchanged -and $previousSnapshot) {
    $newHash = (Get-FileHash -LiteralPath $outPath).Hash
    $oldHash = (Get-FileHash -LiteralPath $previousSnapshot.FullName).Hash
    if ($newHash -eq $oldHash) {
        Remove-Item -LiteralPath $outPath -Force -ErrorAction SilentlyContinue
        Write-Host "No change since $($previousSnapshot.Name) — snapshot not stored." -ForegroundColor Yellow
        return   # nothing written to the output stream; caller sees no new path
    }
}

# ── Done ───────────────────────────────────────────────────────────────────────
Write-Host ""
Write-Host "Snapshot saved: $outPath" -ForegroundColor Green
Write-Host "  Endpoint : $Endpoint"
Write-Host "  Name     : $Name"
Write-Host "  Format   : $Format"
Write-Host "  Stamp    : $stamp"

# Output the path so callers (e.g. the orchestrator action) can capture it
Write-Output $outPath
