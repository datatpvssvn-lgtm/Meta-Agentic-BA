param(
    [Parameter(Mandatory = $false)]
    [string]$WorkspaceRoot = (Get-Location).Path
)

$required = @(
    'AGENTS.md',
    'context\WORKSPACE_CONTEXT.md',
    'context\CURRENT_INTENT.md',
    '.agents\skills\intent-skill\SKILL.md',
    '.agents\skills\context-skill\SKILL.md',
    '.agents\skills\codex-skill-studio\SKILL.md'
)

$results = foreach ($relativePath in $required) {
    [PSCustomObject]@{
        Check = "Required file: $relativePath"
        Pass = Test-Path -LiteralPath (Join-Path $WorkspaceRoot $relativePath)
    }
}

$activeFiles = @(
    'AGENTS.md',
    'context\WORKSPACE_CONTEXT.md',
    'context\CURRENT_INTENT.md',
    '.agents\workflows\start-phase.md'
) | ForEach-Object { Join-Path $WorkspaceRoot $_ } | Where-Object { Test-Path -LiteralPath $_ }

$inputsRoot = Join-Path $WorkspaceRoot '01_inputs'
$caseContexts = if (Test-Path -LiteralPath $inputsRoot) {
    Get-ChildItem -LiteralPath $inputsRoot -Directory -ErrorAction SilentlyContinue |
        ForEach-Object { Join-Path $_.FullName 'context.md' } |
        Where-Object { Test-Path -LiteralPath $_ }
} else {
    @()
}

$activeFiles += $caseContexts

foreach ($contextFile in $caseContexts) {
    $content = Get-Content -LiteralPath $contextFile -Raw -Encoding UTF8
    $results += [PSCustomObject]@{
        Check = "Three-layer context: $contextFile"
        Pass = ($content -match 'Objective Context') -and
               ($content -match 'Mong mu') -and
               ($content -match 'Current Operating Context')
    }
}

$stalePatterns = @('0_agent[\/]', '\.agent[\/]', '0_agent\context\.md')
foreach ($pattern in $stalePatterns) {
    $matches = Select-String -LiteralPath $activeFiles -Pattern $pattern -AllMatches
    $results += [PSCustomObject]@{
        Check = "No stale reference: $pattern"
        Pass = -not $matches
    }
}

$results | Format-Table -AutoSize

if ($results.Pass -contains $false) {
    exit 1
}
