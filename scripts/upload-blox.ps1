# upload-blox.ps1
param([string]$BloxFile)
if (-not $BloxFile) {
    Write-Host 'Usage: upload-blox.ps1 filename.md' -ForegroundColor Red
    exit 1
}
Write-Host 'Uploading blox:' $BloxFile -ForegroundColor Green
if ($BloxFile -like '*_blox.md') {
    Move-Item $BloxFile 'blox\' -Force
    Write-Host 'Moved to blox folder' -ForegroundColor Green
}
git add .
git commit -m 'Add blox: ' + $BloxFile
git push origin main
Write-Host 'Upload complete' -ForegroundColor Green
