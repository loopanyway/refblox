# check.ps1
Write-Host 'RefBlox Status Check' -ForegroundColor Green
Write-Host 'Repository Structure:' -ForegroundColor Yellow
Get-ChildItem -Directory | Select-Object Name
Write-Host 'Available Blox:' -ForegroundColor Yellow
if (Test-Path 'blox') {
    Get-ChildItem 'blox' | Select-Object Name
} else {
    Write-Host 'No blox folder found' -ForegroundColor Red
}
if (Test-Path 'dependencies.json') {
    Write-Host 'Dependencies file exists' -ForegroundColor Green
} else {
    Write-Host 'No dependencies.json found' -ForegroundColor Red
}
