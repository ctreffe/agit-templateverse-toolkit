[CmdletBinding()]
param(
    [string]$ConfigPath = (Join-Path ([Environment]::GetFolderPath('UserProfile')) '.codex\config.toml')
)

$ErrorActionPreference = 'Stop'
$failures = 0

function Write-Check {
    param([string]$Status, [string]$Id, [string]$Message)
    Write-Output "[$Status] $Id`: $Message"
    if ($Status -eq 'FAIL') { $script:failures++ }
}

$git = Get-Command git -ErrorAction SilentlyContinue
if ($null -eq $git) {
    Write-Check FAIL 'git-installed' 'Git is not available on PATH.'
} else {
    Write-Check PASS 'git-installed' 'Git is available on PATH.'
}

$gcm = Get-Command git-credential-manager -ErrorAction SilentlyContinue
$systemGcm = Join-Path ([Environment]::GetFolderPath('ProgramFiles')) 'Git\mingw64\bin\git-credential-manager.exe'
if ($null -eq $gcm -and -not (Test-Path -LiteralPath $systemGcm -PathType Leaf)) {
    Write-Check FAIL 'gcm-installed' 'Git Credential Manager is not available on PATH.'
} else {
    Write-Check PASS 'gcm-installed' 'Git Credential Manager is installed in a standard discoverable location.'
}

if (-not (Test-Path -LiteralPath $ConfigPath -PathType Leaf)) {
    Write-Check FAIL 'codex-config' 'The declared Codex config file does not exist.'
} else {
    $text = Get-Content -LiteralPath $ConfigPath -Raw
    $expected = @{
        GIT_CONFIG_COUNT = '1'
        GIT_CONFIG_KEY_0 = 'credential.helper'
        GIT_CONFIG_VALUE_0 = 'manager'
    }
    foreach ($key in $expected.Keys) {
        $escapedKey = [regex]::Escape($key)
        $escapedValue = [regex]::Escape($expected[$key])
        $matches = [regex]::Matches($text, "(?m)^\s*$escapedKey\s*=\s*`"$escapedValue`"\s*$")
        if ($matches.Count -eq 1) {
            Write-Check PASS "config-$($key.ToLowerInvariant())" "The expected value is declared exactly once."
        } else {
            Write-Check FAIL "config-$($key.ToLowerInvariant())" "The expected value is missing, different or duplicated."
        }
    }
}

$effective = @{
    GIT_CONFIG_COUNT = $env:GIT_CONFIG_COUNT
    GIT_CONFIG_KEY_0 = $env:GIT_CONFIG_KEY_0
    GIT_CONFIG_VALUE_0 = $env:GIT_CONFIG_VALUE_0
}
if ($effective.GIT_CONFIG_COUNT -eq '1' -and
    $effective.GIT_CONFIG_KEY_0 -eq 'credential.helper' -and
    $effective.GIT_CONFIG_VALUE_0 -eq 'manager') {
    Write-Check PASS 'codex-environment' 'The current process inherited the expected runtime Git configuration.'
} else {
    Write-Check WARN 'codex-environment' 'The current process did not inherit the recipe; restart Codex or run this check through Codex.'
}

if ($null -ne $git) {
    $helpers = @(& git config --get-all credential.helper 2>$null)
    if ($helpers -contains 'manager') {
        Write-Check PASS 'git-effective-helper' 'Git resolves manager as an effective credential helper.'
    } else {
        Write-Check WARN 'git-effective-helper' 'Git does not currently resolve manager; a Codex restart may still be required.'
    }
}

Write-Output 'No credential value, network request or Git push was used.'
if ($failures -gt 0) { exit 1 }
exit 0
