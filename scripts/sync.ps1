# sync.ps1
Write-Host 'Syncing RefBlox...' -ForegroundColor Green
try {
    git pull origin main
    Write-Host 'Repository updated' -ForegroundColor Green
} catch {
    Write-Host 'Git pull failed' -ForegroundColor Red
}
Write-Host 'Recent changes:' -ForegroundColor Yellow
git log --oneline -3
if (Test-Path 'dependencies.json') {
    Write-Host 'Dependencies file exists' -ForegroundColor Green
}
Write-Host 'Sync complete' -ForegroundColor Green
