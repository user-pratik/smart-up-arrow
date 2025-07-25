# uninstall.ps1
# Removes Smart Up Arrow from PowerShell profile

$profilePath = $PROFILE

if (Test-Path $profilePath) {
    $lines = Get-Content $profilePath
    $filtered = $lines | Where-Object { $_ -notmatch "SmartUpArrow.ps1" }
    Set-Content -Path $profilePath -Value $filtered
    Write-Host "❌ Smart Up Arrow removed from PowerShell profile."
} else {
    Write-Host "⚠️ PowerShell profile not found. Nothing to remove."
}

