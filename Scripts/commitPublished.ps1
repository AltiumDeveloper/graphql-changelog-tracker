<#
.SYNOPSIS
    Stages, commits, and pushes a published changelog page, if any. Generic and reusable.

.PARAMETER Path
    One or more paths (files or directories) containing the published page to commit.

.PARAMETER Message
    Commit message.

.PARAMETER UserName / UserEmail
    Git identity for the commit (defaults to the github-actions bot).
#>
param(
    [Parameter(Mandatory = $true)]  [string[]]$Path,
    [Parameter(Mandatory = $false)] [string]$Message   = "chore: publish changelog page",
    [Parameter(Mandatory = $false)] [string]$UserName  = 'github-actions[bot]',
    [Parameter(Mandatory = $false)] [string]$UserEmail = 'github-actions[bot]@users.noreply.github.com'
)

$ErrorActionPreference = 'Stop'

git config user.name  $UserName
git config user.email $UserEmail
git add -- $Path

# Only commit the given paths if they actually changed.
if (git status --porcelain -- $Path) {
    git commit -m $Message -- $Path
    git push
} else {
    Write-Host "No published-page changes to commit."
}
