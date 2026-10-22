#requires -Version 7.6

<#
.SYNOPSIS
    Diffs two GraphQL schemas using @graphql-inspector/core and writes a Markdown report.

.DESCRIPTION
    Runs the Node helper schema-diff.mjs (which calls @graphql-inspector/core's diff())
    and buckets the resulting changes by their criticality level (BREAKING / DANGEROUS
    / NON_BREAKING) — no CLI output parsing. Each schema file may be SDL or an
    introspection-JSON result; the format is detected from the file contents.

.PARAMETER OldSchema
    Path to the old (baseline) GraphQL schema file (SDL or introspection JSON).

.PARAMETER NewSchema
    Path to the new GraphQL schema file (SDL or introspection JSON).

.PARAMETER OutputFile
    Destination for the Markdown report. Supports:
      - Filename only          → saved in the current directory  (report.md)
      - Relative/absolute path → saved to that local path        (.\reports\report.md)
      - UNC path               → saved to a network share        (\\server\share\report.md)
      - HTTP/HTTPS URL         → uploaded via HTTP PUT            (https://host/path/report.md)

.PARAMETER HttpHeaders
    Optional hashtable of extra headers to include when uploading via HTTP PUT.
    Example: @{ Authorization = "Bearer token123" }

.EXAMPLE
    .\generateSchemaDiff.ps1 -OldSchema old.graphql -NewSchema new.graphql -OutputFile report.md

.EXAMPLE
    .\generateSchemaDiff.ps1 -OldSchema old.graphql -NewSchema new.graphql -OutputFile .\reports\report.md

.EXAMPLE
    .\generateSchemaDiff.ps1 -OldSchema old.graphql -NewSchema new.graphql -OutputFile \\fileserver\schemas\report.md

.EXAMPLE
    .\generateSchemaDiff.ps1 -OldSchema old.graphql -NewSchema new.graphql -OutputFile https://storage.example.com/reports/report.md -HttpHeaders @{ Authorization = "Bearer mytoken" }
#>

param(
    [Parameter(Mandatory = $true, HelpMessage = "Path or URL to the old GraphQL schema")]
    [string]$OldSchema,

    [Parameter(Mandatory = $true, HelpMessage = "Path or URL to the new GraphQL schema")]
    [string]$NewSchema,

    [Parameter(Mandatory = $true, HelpMessage = "Local path, UNC path, or HTTP/HTTPS URL for the output .md file")]
    [string]$OutputFile,

    [Parameter(Mandatory = $false, HelpMessage = "Extra HTTP headers for remote PUT upload (hashtable)")]
    [hashtable]$HttpHeaders = @{},

    [Parameter(Mandatory = $false, HelpMessage = "@graphql-inspector/core diff rules to apply. Defaults to ignoreDescriptionChanges. Pass -Rules @() to apply no rules.")]
    [string[]]$Rules = @("ignoreDescriptionChanges"),

    [Parameter(Mandatory = $false, HelpMessage = "Include the summary table (status/schemas/generated/rules) at the top. Shown by default; pass -IncludeSummary:`$false to hide it.")]
    [bool]$IncludeSummary = $true
)

# Exit codes: 0 = no breaking changes, 1 = breaking changes found (a verdict),
# 2 = hard failure (bad input, missing deps, write/upload error). This lets a
# caller tell a real "breaking" verdict apart from a crash.

# ── Preflight: check Node is available ────────────────────────────────────────
if (-not (Get-Command "node" -ErrorAction SilentlyContinue)) {
    Write-Error "Node.js is not installed or not on PATH."
    exit 2
}

$diffHelper = Join-Path $PSScriptRoot "schema-diff.mjs"
if (-not (Test-Path -LiteralPath $diffHelper)) {
    Write-Error "Diff helper not found: $diffHelper"
    exit 2
}

# Normalise a schema path to an absolute, OS-native path so Node reads it correctly
# regardless of slash style (e.g. Windows-style backslashes given on macOS/Linux).
function Resolve-SchemaPath([string]$path) {
    $native   = $path -replace '[\\/]', [System.IO.Path]::DirectorySeparatorChar
    $resolved = Resolve-Path -LiteralPath $native -ErrorAction SilentlyContinue
    if ($resolved) { return $resolved.Path }
    Write-Error "Schema file not found: $path"
    exit 2
}

$oldPath = Resolve-SchemaPath $OldSchema
$newPath = Resolve-SchemaPath $NewSchema

# ── Run the diff via @graphql-inspector/core (schema-diff.mjs) ────────────────
Write-Host "Diffing schemas with @graphql-inspector/core..." -ForegroundColor Cyan

# Only pass non-empty rule names; the helper maps them to DiffRule functions.
$ruleArgs = @($Rules | Where-Object { $_ -and $_.Trim() -ne "" } | ForEach-Object { $_.Trim() })

# Capture node's stderr separately so its real error surfaces on failure.
$errFile  = [System.IO.Path]::GetTempFileName()
$diffJson = & node $diffHelper $oldPath $newPath @ruleArgs 2>$errFile
$nodeExit = $LASTEXITCODE
$errText  = (Get-Content -LiteralPath $errFile -Raw -ErrorAction SilentlyContinue)
Remove-Item -LiteralPath $errFile -Force -ErrorAction SilentlyContinue

if ($nodeExit -ne 0) {
    $hint = if ($errText -match "ERR_MODULE_NOT_FOUND|Cannot find package") {
        "Dependencies are missing. Run 'npm ci' in the repo root ($(Split-Path $PSScriptRoot -Parent))."
    } else {
        "Check the schema files are valid SDL or introspection JSON, and the rules are supported."
    }
    Write-Error "Schema diff failed (node exit $nodeExit). $hint`n$errText"
    exit 2
}

# ── Bounded-context lookup tables (most-specific pattern first) ───────────────
# Tested against the first path segment for type-level and field-level changes.
$script:TYPE_RULES = @(
    # Procurement
    @{ re = '^(CostedBoms|Bom)';                                                                ctx = 'Procurement' }
    # Collaboration
    @{ re = '^DesAnnotation';                                                                   ctx = 'Collaboration' }
    # Insights
    @{ re = '^DesWorkspaceIns';                                                                 ctx = 'Insights' }
    # Platform — workspace / user types under Des* prefix
    @{ re = '^(DesWorkspaceTeam|DesWorkspaceGroup|DesWorkspaceUser|DesProjectGuest|DesProfile)'; ctx = 'Platform' }
    # Design
    @{ re = '^(DesDesignData|DesRuleCheck|DesComparison|Design|Rule|LatestGeneration)';         ctx = 'Design' }
    # Library Management
    @{ re = '^(DesPart|DesSearch)';                                                             ctx = 'Library Management' }
    @{ re = '^Des';                                                                             ctx = 'Design' }       # Des* catch-all
    # Customization (must precede Glo* catch-all)
    @{ re = '^(GloCus|GloScr)';                                                                ctx = 'Customization' }
    # Platform — all remaining Glo*, App*, Platform, TokenQueries, Sol* (includes SolBld)
    @{ re = '^(Glo|App|Platform|TokenQueries|Sol)';                                             ctx = 'Platform' }
    # Renesas (preview) — must precede Sup* catch-all for SupSoftwareProject
    @{ re = '^SupSoftwareProject';                                                              ctx = 'Renesas (preview)' }
    # Supply
    @{ re = '^Sup';                                                                             ctx = 'Supply' }
    # System Design
    @{ re = '^(SysEsd|SysSdm|SysLib)';                                                         ctx = 'System Design' }
    # Requirements
    @{ re = '^Requirements';                                                                    ctx = 'Requirements' }
    # Renesas (preview)
    @{ re = '^(Rsa|Dm|Sft)';                                                                    ctx = 'Renesas (preview)' }
)

# Tested against the operation field name (second segment) for Query/Mutation/Subscription.
$script:OP_RULES = @(
    # Procurement
    @{ re = '^bom';                                            ctx = 'Procurement' }
    # Collaboration
    @{ re = '^desAnnotation';                                  ctx = 'Collaboration' }
    # Insights
    @{ re = '^desWorkspaceIns';                                ctx = 'Insights' }
    # Platform — workspace / user ops under des* prefix
    @{ re = '^des(WorkspaceTeam|WorkspaceGroup|WorkspaceUser)'; ctx = 'Platform' }
    # Design
    @{ re = '^des(DesignData|RuleCheck|Comparison|Compare)';   ctx = 'Design' }
    # Library Management
    @{ re = '^des(Part|Search|PermissionsById)';               ctx = 'Library Management' }
    @{ re = '^des';                                            ctx = 'Design' }       # des* catch-all
    # Customization (must precede glo* catch-all)
    @{ re = '^glo(Cus|Scr)';                                   ctx = 'Customization' }
    # Platform — all remaining glo*, app*, ping, platform, sol* (includes solBld), global*
    @{ re = '^(glo|global|app|ping|platform|sol)';              ctx = 'Platform' }
    # Renesas (preview) — must precede sup* catch-all for supSoftwareProject
    @{ re = '^supSoftwareProject';                             ctx = 'Renesas (preview)' }
    # Supply
    @{ re = '^sup';                                            ctx = 'Supply' }
    # System Design
    @{ re = '^(sysEsd|sysSdm|sysLib)';                         ctx = 'System Design' }
    # Requirements
    @{ re = '^requirements';                                   ctx = 'Requirements' }
    # Renesas (preview)
    @{ re = '^(rsa|sft|dm)';                                   ctx = 'Renesas (preview)' }
)

function Get-BoundedContext([string]$path, [string]$changeType) {
    if (-not $path) { return 'Common' }
    $segs  = $path -split '\.'
    $first = $segs[0]
    if ($first -match '^\@') { return 'Common' }
    if ($first -in @('Query', 'Mutation', 'Subscription')) {
        if ($segs.Count -lt 2) { return 'Common' }
        $field = $segs[1]
        foreach ($r in $script:OP_RULES) { if ($field -match $r.re) { return $r.ctx } }
        return 'Common'
    }
    foreach ($r in $script:TYPE_RULES) { if ($first -match $r.re) { return $r.ctx } }
    return 'Common'
}

function Get-ChangeKind([string]$path, [string]$changeType, [string]$msg = '') {
    # Root-operation check applies to ALL change types
    if (-not $path) { return 'Schema' }
    $segs  = $path -split '\.'
    $first = $segs[0]
    if ($first -match '^\@') { return 'Schema' }
    if ($first -in @('Query', 'Mutation', 'Subscription')) { return $first }
    if ($changeType -match '^(TYPE_|UNION_MEMBER_|ENUM_VALUE_|OBJECT_TYPE_INTERFACE_)') { return 'Type' }
    if ($changeType -match '^INPUT_FIELD_') { return 'Input / Payload' }
    if ($changeType -match '^FIELD_ARGUMENT_') { return 'Argument' }
    if ($changeType -match '^(DIRECTIVE_|SCHEMA_)') {
        if ($msg -match 'input object') { return 'Input / Payload' }
        if ($segs.Count -ge 2)          { return 'Field' }
        if ($segs.Count -eq 1)         { return 'Type' }
        return 'Schema'
    }
    if ($changeType -match '^FIELD_') { return 'Field' }
    return 'Schema'
}

# ── Parse the change list and bucket by criticality level + bounded context ────
$breaking    = [System.Collections.Generic.List[string]]::new()
$dangerous   = [System.Collections.Generic.List[string]]::new()
$nonBreaking = [System.Collections.Generic.List[string]]::new()

$breakingGroups    = @{}
$dangerousGroups   = @{}
$nonBreakingGroups = @{}

# The helper emits a JSON array; an empty diff yields "[]".
$changes = @($diffJson | ConvertFrom-Json)
foreach ($change in $changes) {
    $msg  = $change.message.Replace(" to field '", " to '")
    $typ  = "$($change.type)"
    $pth  = "$($change.path)"
    $ctx  = Get-BoundedContext $pth $typ
    $kind = Get-ChangeKind $pth $typ $msg

    if ($change.level -eq 'BREAKING') {
        $breaking.Add($msg)
        $grp = $breakingGroups
    } elseif ($change.level -eq 'DANGEROUS') {
        $dangerous.Add($msg)
        $grp = $dangerousGroups
    } elseif ($change.level -eq 'NON_BREAKING') {
        $nonBreaking.Add($msg)
        $grp = $nonBreakingGroups
    } else {
        Write-Warning "Unknown criticality level '$($change.level)' — treating as breaking."
        $breaking.Add($msg)
        $grp = $breakingGroups
    }

    if (-not $grp.ContainsKey($ctx))       { $grp[$ctx] = @{} }
    if (-not $grp[$ctx].ContainsKey($kind)) { $grp[$ctx][$kind] = [System.Collections.Generic.List[string]]::new() }
    $grp[$ctx][$kind].Add($msg)
}

# ── Kind ordering and display labels ──────────────────────────────────────────
$script:KIND_ORDER = @('Query', 'Mutation', 'Subscription', 'Type', 'Argument', 'Field', 'Input / Payload', 'Schema')
$script:KIND_LABEL = @{
    'Query'           = '🔍 Query'
    'Mutation'        = '✏️ Mutation'
    'Subscription'    = '🔔 Subscription'
    'Type'            = 'Types'
    'Argument'        = 'Arguments'
    'Field'           = 'Fields'
    'Input / Payload' = 'Input / Payload'
    'Schema'          = 'Directives'
}

function Format-LevelSection([string]$title, [hashtable]$grp) {
    $total = 0
    foreach ($ctx in $grp.Keys) {
        foreach ($k in $grp[$ctx].Keys) { $total += $grp[$ctx][$k].Count }
    }
    if ($total -eq 0) { return $null }

    $md = "## $title ($total)`n`n"
    foreach ($ctx in ($grp.Keys | Sort-Object)) {
        $km   = $grp[$ctx]
        $md  += "### $ctx`n`n"
        foreach ($kind in $script:KIND_ORDER) {
            if (-not $km.ContainsKey($kind) -or $km[$kind].Count -eq 0) { continue }
            $md += "#### $($script:KIND_LABEL[$kind])`n`n"
            foreach ($item in $km[$kind]) { $md += "- $item`n" }
            $md += "`n"
        }
    }
    return $md
}

# ── Determine overall status ───────────────────────────────────────────────────
$status      = if ($breaking.Count -gt 0) { "Breaking changes detected" } else { "No breaking changes detected" }
$statusEmoji = if ($breaking.Count -gt 0) { "🔴" } else { "🟢" }

# ── Build Markdown ─────────────────────────────────────────────────────────────
$timestamp = Get-Date -Format "yyyy-MM-dd HH:mm:ss"

# Title mirrors the chosen output file name (without extension), e.g. test.md → "test".
# Split on both / and \ so the leaf is found regardless of OS (Path.GetFileName only
# treats \ as a separator on Windows), then drop the extension.
$outputLeaf  = ($OutputFile -split '[\\/]' | Where-Object { $_ -ne "" } | Select-Object -Last 1)
$reportTitle = [System.IO.Path]::GetFileNameWithoutExtension($outputLeaf)
if (-not $reportTitle) { $reportTitle = "GraphQL Schema Diff Report" }

# Show the applied rules as inline code, or "_None_" when the list is empty
$appliedRules = @($Rules | Where-Object { $_ -and $_.Trim() -ne "" } | ForEach-Object { $_.Trim() })
$rulesDisplay = if ($appliedRules.Count -gt 0) {
    ($appliedRules | ForEach-Object { "``$_``" }) -join ", "
} else {
    "_None_"
}

$md = "# $reportTitle`n`n"

# Summary table (optional — shown by default, hidden when -IncludeSummary:$false)
if ($IncludeSummary) {
    $md += @"
| | |
|---|---|
| **Status** | $statusEmoji $status |
| **Old schema** | ``$OldSchema`` |
| **New schema** | ``$NewSchema`` |
| **Generated** | $timestamp |
| **Rules** | $rulesDisplay |

---

"@
}

$sections = @()
if ($breaking.Count -gt 0)    { $s = Format-LevelSection "🔴 Breaking Changes"     $breakingGroups;    if ($s) { $sections += $s } }
if ($dangerous.Count -gt 0)   { $s = Format-LevelSection "⚠️ Dangerous Changes"    $dangerousGroups;   if ($s) { $sections += $s } }
if ($nonBreaking.Count -gt 0) { $s = Format-LevelSection "✅ Non-Breaking Changes" $nonBreakingGroups; if ($s) { $sections += $s } }

if ($sections.Count -gt 0) {
    $md += ($sections -join "`n---`n`n")
} else {
    $md += "_No changes detected._`n"
}


# ── Write the file (local, UNC, or remote HTTP) ───────────────────────────────
function Resolve-OutputPath([string]$path) {
    # A filename with no directory component → resolve to current directory
    if (-not [System.IO.Path]::IsPathRooted($path) -and
        $path -notmatch "^https?://" -and
        $path -notmatch "^\\\\" -and
        -not ($path -match "[/\\]")) {
        return Join-Path (Get-Location) $path
    }
    return $path
}

# Never overwrite: if the target exists, append " (1)", " (2)", … before the
# extension until a free name is found — the way an OS handles duplicate downloads.
function Get-UniqueOutputPath([string]$path) {
    if (-not (Test-Path -LiteralPath $path)) { return $path }

    $dir  = [System.IO.Path]::GetDirectoryName($path)
    $name = [System.IO.Path]::GetFileNameWithoutExtension($path)
    $ext  = [System.IO.Path]::GetExtension($path)

    $counter = 1
    do {
        $candidate = if ($dir) { Join-Path $dir "$name ($counter)$ext" } else { "$name ($counter)$ext" }
        $counter++
    } while (Test-Path -LiteralPath $candidate)

    return $candidate
}

$isRemoteHttp = $OutputFile -match "^https?://"

if ($isRemoteHttp) {
    # ── HTTP/HTTPS: PUT the markdown content to the remote URL ────────────────
    Write-Host "Uploading report to: $OutputFile" -ForegroundColor Cyan
    try {
        $bytes = [System.Text.Encoding]::UTF8.GetBytes($md)
        # Start from defaults, then let caller headers override — avoids the
        # duplicate-key error that hashtable addition ($a + $b) throws on.
        $mergedHeaders = @{ "Content-Type" = "text/markdown; charset=utf-8" }
        foreach ($key in $HttpHeaders.Keys) { $mergedHeaders[$key] = $HttpHeaders[$key] }

        $response = Invoke-WebRequest `
            -Uri     $OutputFile `
            -Method  PUT `
            -Body    $bytes `
            -Headers $mergedHeaders `
            -UseBasicParsing `
            -ErrorAction Stop

        Write-Host "Upload successful (HTTP $($response.StatusCode))" -ForegroundColor Green
    } catch {
        Write-Error "Failed to upload report: $_"
        exit 2
    }
} else {
    # ── Local or UNC path ─────────────────────────────────────────────────────
    # Normalise separators to native so Split-Path/Join-Path behave correctly
    # regardless of slash style (e.g. Windows-style backslashes given on macOS/Linux).
    $OutputFile   = $OutputFile -replace '[\\/]', [System.IO.Path]::DirectorySeparatorChar
    $resolvedPath = Resolve-OutputPath $OutputFile

    # Create parent directory if it doesn't exist (not applicable to UNC roots).
    # GetDirectoryName + -LiteralPath so paths containing [ ] aren't treated as wildcards.
    $parentDir = [System.IO.Path]::GetDirectoryName($resolvedPath)
    if ($parentDir -and -not (Test-Path -LiteralPath $parentDir)) {
        New-Item -ItemType Directory -Path $parentDir -Force | Out-Null
    }

    # Resolve a non-colliding name so an existing report is never overwritten
    $resolvedPath = Get-UniqueOutputPath $resolvedPath

    try {
        $md | Set-Content -LiteralPath $resolvedPath -Encoding UTF8 -ErrorAction Stop
    } catch {
        Write-Error "Failed to write report to '$resolvedPath': $_"
        exit 2
    }
    $OutputFile = $resolvedPath   # update for the summary line below
}

Write-Host ""
Write-Host "Report written to: $OutputFile" -ForegroundColor Green
Write-Host "Status: $statusEmoji $status"
Write-Host "  Breaking   : $($breaking.Count)"
Write-Host "  Dangerous  : $($dangerous.Count)"
Write-Host "  Non-breaking: $($nonBreaking.Count)"

# ── Exit non-zero when breaking changes exist so CI/callers can react ─────────
if ($breaking.Count -gt 0) { exit 1 } else { exit 0 }
