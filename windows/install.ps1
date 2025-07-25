# install.ps1
# Sets up Smart Up Arrow and adds it to PowerShell profile

$profilePath = $PROFILE
$scriptPath = "$PSScriptRoot\SmartUpArrow.ps1"

# Make sure profile exists
if (-not (Test-Path -Path $profilePath)) {
    New-Item -ItemType File -Path $profilePath -Force | Out-Null
}

# Check if already installed
$existing = Get-Content $profilePath | Select-String -Pattern 'SmartUpArrow.ps1'
if ($existing) {
    Write-Host "⚠️ Smart Up Arrow is already installed in your profile."
} else {
    Add-Content -Path $profilePath -Value "`n. `"$scriptPath`""
    Write-Host "✅ Installed Smart Up Arrow to your PowerShell profile."
}

# Run now
. $scriptPath

