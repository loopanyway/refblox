# migrate-actual-files.ps1 - Migration für deine tatsächlichen Dateien

Write-Host "Migrating your files to RefBlox structure..." -ForegroundColor Green

# Zeige erstmal was da ist
Write-Host "Current files in directory:" -ForegroundColor Yellow
Get-ChildItem *.md | Select-Object Name | Format-Table -HideTableHeaders

# Korrekte Zuordnung deiner Dateien
$fileMapping = @{
    "011_studienarbeiten_baustein.md" = "blox\011_student_papers_blox.md"
    "011_studienarbeiten_material.md" = "material\011_student_papers_material.md" 
    "012_dissertationen_baustein.md" = "blox\012_dissertations_blox.md"
    "012_dissertationen_material.md" = "material\012_dissertations_material.md"
    "wissenschaftliche_bausteine_root.md" = "000_refblox_root.md"
}

Write-Host ""
Write-Host "Starting migration..." -ForegroundColor Cyan

foreach ($oldFile in $fileMapping.Keys) {
    if (Test-Path $oldFile) {
        $newFile = $fileMapping[$oldFile]
        
        # Erstelle Zielordner falls nicht vorhanden
        $targetDir = Split-Path $newFile -Parent
        if ($targetDir -and -not (Test-Path $targetDir)) {
            New-Item -ItemType Directory -Path $targetDir -Force | Out-Null
        }
        
        Copy-Item $oldFile $newFile -Force
        Write-Host "✅ Migrated: $oldFile → $newFile" -ForegroundColor Green
    } else {
        Write-Host "❌ File not found: $oldFile" -ForegroundColor Red
    }
}

Write-Host ""
Write-Host "Checking results..." -ForegroundColor Yellow

Write-Host "Blox folder:" -ForegroundColor Cyan
if (Test-Path "blox") {
    Get-ChildItem "blox" | Select-Object Name | Format-Table -HideTableHeaders
} else {
    Write-Host "No blox folder created" -ForegroundColor Red
}

Write-Host "Material folder:" -ForegroundColor Cyan  
if (Test-Path "material") {
    Get-ChildItem "material" | Select-Object Name | Format-Table -HideTableHeaders
} else {
    Write-Host "No material folder created" -ForegroundColor Red
}

Write-Host "Root files:" -ForegroundColor Cyan
Get-ChildItem "000_*.md" 2>$null | Select-Object Name | Format-Table -HideTableHeaders

Write-Host ""
Write-Host "🎯 Migration complete!" -ForegroundColor Green
Write-Host "Next: Run .\scripts\check.ps1 to verify everything works" -ForegroundColor White