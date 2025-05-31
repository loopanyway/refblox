# setup.ps1 - RefBlox PowerShell Setup (FINAL WORKING VERSION)

Write-Host "Setting up RefBlox Repository..." -ForegroundColor Green
Write-Host "RefBlox - Modular Academic Writing System" -ForegroundColor Cyan

# 1. Ordnerstruktur erstellen
Write-Host "Creating folder structure..." -ForegroundColor Yellow
New-Item -ItemType Directory -Force -Path "blox", "material", "montage", "scripts" | Out-Null

# 2. Dependencies JSON erstellen
Write-Host "Creating dependencies.json..." -ForegroundColor Yellow
$dependenciesContent = @{
    "system" = @{
        "name" = "RefBlox"
        "version" = "1.0.0"
        "description" = "Modular Academic Writing System"
    }
    "010" = @{
        "name" = "academic_foundations"
        "status" = "ready"
        "version" = "2.0.0"
        "affects" = @("011", "012", "013")
        "description" = "Core principles for all academic text types"
    }
    "011" = @{
        "name" = "student_papers"
        "status" = "ready"
        "version" = "1.0.0"
        "requires" = @("010")
        "compatible_with" = @("020", "030", "040", "060")
        "description" = "Templates for term papers, bachelor and master theses"
    }
    "020" = @{
        "name" = "literature_management"
        "status" = "planned"
        "requires" = @("010")
        "compatible_with" = @("011", "012", "013")
        "description" = "Research, management and citation of sources"
    }
    "030" = @{
        "name" = "methodology_design"
        "status" = "planned"
        "compatible_with" = @("011", "012", "013")
        "description" = "Quantitative and qualitative research methods"
    }
    "060" = @{
        "name" = "formatting_layout"
        "status" = "planned"
        "compatible_with" = @("011", "012", "013")
        "description" = "Citation styles and document formatting"
    }
}

$dependenciesContent | ConvertTo-Json -Depth 3 | Out-File -FilePath "dependencies.json" -Encoding UTF8

# 3. Status-Datei erstellen (komplett anders)
Write-Host "Creating status.md..." -ForegroundColor Yellow
$lines = @()
$lines += "# RefBlox Status Overview"
$lines += ""
$lines += "Last updated: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
$lines += ""
$lines += "## Ready Blox"
$lines += "* 010 academic_foundations (v2.0.0) Foundation for all other blox"
$lines += "* 011 student_papers (v1.0.0) German university standards"
$lines += ""
$lines += "## In Development"
$lines += "* Currently none"
$lines += ""
$lines += "## Planned Blox"
$lines += "* 020 literature_management Source research and citation"
$lines += "* 030 methodology_design Research methods"
$lines += "* 060 formatting_layout Formatting standards"
$lines += ""
$lines += "## Dependencies"
$lines += "* 011 requires 010 (compatible)"
$lines += "* 020 requires 010 (planned)"
$lines += "* 030 independent (planned)"
$lines += ""
$lines += "## Progress"
$lines += "* Ready: 2/10 Blox (20%)"
$lines += "* In Development: 0/10 (0%)"
$lines += "* Planned: 3/10 (30%)"

$lines | Out-File -FilePath "status.md" -Encoding UTF8

# 4. Sync-Script
Write-Host "Creating sync script..." -ForegroundColor Yellow
$syncLines = @()
$syncLines += "# sync.ps1"
$syncLines += "Write-Host 'Syncing RefBlox...' -ForegroundColor Green"
$syncLines += "try {"
$syncLines += "    git pull origin main"
$syncLines += "    Write-Host 'Repository updated' -ForegroundColor Green"
$syncLines += "} catch {"
$syncLines += "    Write-Host 'Git pull failed' -ForegroundColor Red"
$syncLines += "}"
$syncLines += "Write-Host 'Recent changes:' -ForegroundColor Yellow"
$syncLines += "git log --oneline -3"
$syncLines += "if (Test-Path 'dependencies.json') {"
$syncLines += "    Write-Host 'Dependencies file exists' -ForegroundColor Green"
$syncLines += "}"
$syncLines += "Write-Host 'Sync complete' -ForegroundColor Green"

$syncLines | Out-File -FilePath "scripts\sync.ps1" -Encoding UTF8

# 5. Chat-Template
Write-Host "Creating chat template..." -ForegroundColor Yellow
$chatLines = @()
$chatLines += "# AUTOMATISIERTER CHAT SETUP"
$chatLines += ""
$chatLines += "## Blox-Entwicklung: 020 Literature Management"
$chatLines += ""
$chatLines += "### Repository Info:"
$chatLines += "Repository: https://github.com/USERNAME/refblox"
$chatLines += "Status: Siehe status.md"
$chatLines += "Dependencies: Siehe dependencies.json"
$chatLines += ""
$chatLines += "### Entwicklungsauftrag:"
$chatLines += "Entwickle Blox 020 basierend auf dem RefBlox System."
$chatLines += ""
$chatLines += "### Workflow:"
$chatLines += "1. Scope-Definition"
$chatLines += "2. Input/Output-Parameter definieren"
$chatLines += "3. Funktionen entwickeln"
$chatLines += "4. Artifact erstellen: 020_literature_management_blox.md"
$chatLines += "5. GitHub Upload"
$chatLines += ""
$chatLines += "### Nach Fertigstellung:"
$chatLines += "Artifact-Datei speichern"
$chatLines += "sync.ps1 ausführen"
$chatLines += "dependencies.json aktualisieren"
$chatLines += ""
$chatLines += "Starte mit Scope-Definition für Blox 020..."

$chatLines | Out-File -FilePath "scripts\new-chat-template.md" -Encoding UTF8

# 6. Check-Script
Write-Host "Creating check script..." -ForegroundColor Yellow
$checkLines = @()
$checkLines += "# check.ps1"
$checkLines += "Write-Host 'RefBlox Status Check' -ForegroundColor Green"
$checkLines += "Write-Host 'Repository Structure:' -ForegroundColor Yellow"
$checkLines += "Get-ChildItem -Directory | Select-Object Name"
$checkLines += "Write-Host 'Available Blox:' -ForegroundColor Yellow"
$checkLines += "if (Test-Path 'blox') {"
$checkLines += "    Get-ChildItem 'blox' | Select-Object Name"
$checkLines += "} else {"
$checkLines += "    Write-Host 'No blox folder found' -ForegroundColor Red"
$checkLines += "}"
$checkLines += "if (Test-Path 'dependencies.json') {"
$checkLines += "    Write-Host 'Dependencies file exists' -ForegroundColor Green"
$checkLines += "} else {"
$checkLines += "    Write-Host 'No dependencies.json found' -ForegroundColor Red"
$checkLines += "}"

$checkLines | Out-File -FilePath "scripts\check.ps1" -Encoding UTF8

# 7. Upload-Script
Write-Host "Creating upload script..." -ForegroundColor Yellow
$uploadLines = @()
$uploadLines += "# upload-blox.ps1"
$uploadLines += "param([string]`$BloxFile)"
$uploadLines += "if (-not `$BloxFile) {"
$uploadLines += "    Write-Host 'Usage: upload-blox.ps1 filename.md' -ForegroundColor Red"
$uploadLines += "    exit 1"
$uploadLines += "}"
$uploadLines += "Write-Host 'Uploading blox:' `$BloxFile -ForegroundColor Green"
$uploadLines += "if (`$BloxFile -like '*_blox.md') {"
$uploadLines += "    Move-Item `$BloxFile 'blox\' -Force"
$uploadLines += "    Write-Host 'Moved to blox folder' -ForegroundColor Green"
$uploadLines += "}"
$uploadLines += "git add ."
$uploadLines += "git commit -m 'Add blox: ' + `$BloxFile"
$uploadLines += "git push origin main"
$uploadLines += "Write-Host 'Upload complete' -ForegroundColor Green"

$uploadLines | Out-File -FilePath "scripts\upload-blox.ps1" -Encoding UTF8

# 8. Migration-Script
Write-Host "Creating migration script..." -ForegroundColor Yellow
$migrationLines = @()
$migrationLines += "# init-existing-files.ps1"
$migrationLines += "Write-Host 'Migrating existing files...' -ForegroundColor Green"
$migrationLines += "`$files = @{"
$migrationLines += "    '010_wissenschaftliche_texte_baustein.md' = 'blox\010_academic_foundations_blox.md'"
$migrationLines += "    '011_studienarbeiten_baustein.md' = 'blox\011_student_papers_blox.md'"
$migrationLines += "    '010_wissenschaftliche_texte_material.md' = 'material\010_academic_foundations_material.md'"
$migrationLines += "    '011_studienarbeiten_material.md' = 'material\011_student_papers_material.md'"
$migrationLines += "    '000_wissenschaftliche_bausteine_root.md' = '000_refblox_root.md'"
$migrationLines += "}"
$migrationLines += "foreach (`$old in `$files.Keys) {"
$migrationLines += "    if (Test-Path `$old) {"
$migrationLines += "        Copy-Item `$old `$files[`$old] -Force"
$migrationLines += "        Write-Host 'Migrated:' `$old -ForegroundColor Green"
$migrationLines += "    }"
$migrationLines += "}"
$migrationLines += "Write-Host 'Migration complete' -ForegroundColor Green"

$migrationLines | Out-File -FilePath "scripts\init-existing-files.ps1" -Encoding UTF8

Write-Host ""
Write-Host "RefBlox setup complete!" -ForegroundColor Green
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Cyan
Write-Host "1. Run: .\scripts\init-existing-files.ps1" -ForegroundColor White
Write-Host "2. Run: git add . && git commit -m 'Initial RefBlox setup' && git push" -ForegroundColor White
Write-Host "3. Test with: .\scripts\check.ps1" -ForegroundColor White