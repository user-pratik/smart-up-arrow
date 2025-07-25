# SmartUpArrow.ps1
# Binds UpArrow and DownArrow to prefix-based history search

Import-Module PSReadLine

Set-PSReadLineKeyHandler -Key UpArrow -Function HistorySearchBackward
Set-PSReadLineKeyHandler -Key DownArrow -Function HistorySearchForward

Write-Host "✅ Smart Up Arrow enabled for PowerShell"

