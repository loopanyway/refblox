# update-german-clean.ps1 - RefBlox auf deutsche Inhalte anpassen (ohne Emojis)

Write-Host "Updating RefBlox setup for German academic system..." -ForegroundColor Green

# 1. Dependencies.json aktualisieren
Write-Host "Updating dependencies.json for German content..." -ForegroundColor Yellow
$germanDependencies = @{
    "system" = @{
        "name" = "RefBlox"
        "version" = "1.0.0" 
        "description" = "Modular Academic Writing System - German Focus"
        "language" = "deutsch"
        "target_region" = "DACH"
    }
    "010" = @{
        "name" = "wissenschaftliche_grundlagen"
        "status" = "ready"
        "version" = "2.0.0"
        "affects" = @("011", "012", "013")
        "description" = "Übergreifende Grundlagen für alle wissenschaftlichen Texttypen"
        "language" = "deutsch"
    }
    "011" = @{
        "name" = "studienarbeiten"
        "status" = "ready"
        "version" = "1.0.0"
        "requires" = @("010")
        "compatible_with" = @("020", "030", "040", "060")
        "description" = "Templates für Hausarbeiten, Bachelor- und Masterarbeiten"
        "focus" = "deutsche_hochschulstandards"
    }
    "012" = @{
        "name" = "dissertationen"
        "status" = "ready"
        "version" = "1.0.0"
        "requires" = @("010")
        "compatible_with" = @("020", "030", "040", "060")
        "description" = "Strukturen für Dissertationen und Habilitationen"
        "focus" = "deutsche_promotionsordnungen"
    }
    "013" = @{
        "name" = "publikationen"
        "status" = "planned"
        "requires" = @("010")
        "compatible_with" = @("020", "030", "040", "060")
        "description" = "Deutsche Fachpublikationen und Zeitschriftenartikel"
        "focus" = "deutsches_wissenschaftssystem"
    }
    "020" = @{
        "name" = "literaturmanagement"
        "status" = "planned"
        "requires" = @("010")
        "compatible_with" = @("011", "012", "013")
        "description" = "Deutsche Quellenarbeit und Zitierstandards"
        "focus" = "deutsche_zitierweisen"
    }
    "030" = @{
        "name" = "methodendesign"
        "status" = "planned"
        "compatible_with" = @("011", "012", "013")
        "description" = "Forschungsmethoden im deutschen Wissenschaftskontext"
        "focus" = "deutsche_methodenstandards"
    }
    "060" = @{
        "name" = "formatierung_layout"
        "status" = "planned"
        "compatible_with" = @("011", "012", "013")
        "description" = "Deutsche Formatierungsstandards und DIN-Normen"
        "focus" = "deutsche_formatstandards"
    }
}

$germanDependencies | ConvertTo-Json -Depth 3 | Out-File -FilePath "dependencies.json" -Encoding UTF8

# 2. Status.md auf Deutsch aktualisieren
Write-Host "Updating status.md for German content..." -ForegroundColor Yellow
$germanStatus = @()
$germanStatus += "# RefBlox Status Übersicht"
$germanStatus += ""
$germanStatus += "Letzte Aktualisierung: $(Get-Date -Format 'yyyy-MM-dd HH:mm:ss')"
$germanStatus += "Fokus: Deutsches Wissenschaftssystem (DACH-Raum)"
$germanStatus += ""
$germanStatus += "## Fertige Blox"
$germanStatus += "* 010 wissenschaftliche_grundlagen (v2.0.0) Basis für alle wissenschaftlichen Texte"
$germanStatus += "* 011 studienarbeiten (v1.0.0) Deutsche Hochschulstandards"
$germanStatus += "* 012 dissertationen (v1.0.0) Deutsche Promotionsordnungen"
$germanStatus += ""
$germanStatus += "## In Entwicklung"
$germanStatus += "* 013 publikationen Deutsche Fachpublikationen"
$germanStatus += ""
$germanStatus += "## Geplante Blox"
$germanStatus += "* 020 literaturmanagement Deutsche Quellenarbeit und Zitierstandards"
$germanStatus += "* 030 methodendesign Deutsche Forschungsmethoden"
$germanStatus += "* 060 formatierung_layout Deutsche Formatierungsstandards (DIN-Normen)"
$germanStatus += ""
$germanStatus += "## Abhängigkeiten"
$germanStatus += "* 011 benötigt 010 (kompatibel)"
$germanStatus += "* 012 benötigt 010 (kompatibel)"
$germanStatus += "* 013 benötigt 010 (in Entwicklung)"
$germanStatus += "* 020 benötigt 010 (geplant)"
$germanStatus += ""
$germanStatus += "## Fortschritt"
$germanStatus += "* Fertig: 3 von 8 Blox"
$germanStatus += "* In Entwicklung: 1 von 8"
$germanStatus += "* Geplant: 4 von 8"
$germanStatus += ""
$germanStatus += "## Deutsche Fokus-Bereiche"
$germanStatus += "* Hochschulstandards: Universität, FH, Berufsakademie"
$germanStatus += "* Promotionsordnungen: Deutsche Dissertationsanforderungen"
$germanStatus += "* Publikationswesen: VHB, DGF, Deutsche Fachzeitschriften"
$germanStatus += "* Zitierstandards: DIN 1505, Deutsche Wissenschaftstraditionen"
$germanStatus += "* Qualitätssicherung: DFG-Richtlinien, Deutsche Wissenschaftsethik"

$germanStatus | Out-File -FilePath "status.md" -Encoding UTF8

# 3. Chat-Template für deutsche Blox aktualisieren
Write-Host "Creating German chat template..." -ForegroundColor Yellow
$germanChatTemplate = @()
$germanChatTemplate += "# AUTOMATISIERTER CHAT SETUP - RefBlox Deutsch"
$germanChatTemplate += ""
$germanChatTemplate += "## Blox-Entwicklung: [XXX] - [NAME]"
$germanChatTemplate += ""
$germanChatTemplate += "### Repository Info:"
$germanChatTemplate += "Repository: https://github.com/loopanyway/refblox"
$germanChatTemplate += "Fokus: Deutsches Wissenschaftssystem (DACH-Raum)"
$germanChatTemplate += "Status: Siehe status.md"
$germanChatTemplate += "Dependencies: Siehe dependencies.json"
$germanChatTemplate += ""
$germanChatTemplate += "### Verfügbare deutsche Grundlagen:"
$germanChatTemplate += "[010] Wissenschaftliche Grundlagen: Deutsche Wissenschaftlichkeit, Sprachstil"
$germanChatTemplate += "[011] Studienarbeiten: Deutsche Hochschulstandards"
$germanChatTemplate += "[012] Dissertationen: Deutsche Promotionsordnungen"
$germanChatTemplate += ""
$germanChatTemplate += "### Deutsche Wissenschaftsstandards berücksichtigen:"
$germanChatTemplate += "VHB-Rankings und deutsche Fachgesellschaften"
$germanChatTemplate += "DFG-Richtlinien und deutsche Wissenschaftsethik"
$germanChatTemplate += "DIN-Normen für Zitation und Formatierung"
$germanChatTemplate += "Deutsche vs. österreichische vs. Schweizer Besonderheiten"
$germanChatTemplate += ""
$germanChatTemplate += "### RefBlox Entwicklungsprozess:"
$germanChatTemplate += "1. Scope-Definition für deutschen Wissenschaftsbetrieb"
$germanChatTemplate += "2. Input/Output-Parameter definieren"
$germanChatTemplate += "3. Material-Phase: [XXX]_[name]_material.md entwickeln"
$germanChatTemplate += "4. Deutsche Standards integrieren"
$germanChatTemplate += "5. Blox-Phase: [XXX]_[name]_blox.md finalisieren"
$germanChatTemplate += "6. Beide Dateien in Repository speichern"
$germanChatTemplate += ""
$germanChatTemplate += "### Nach Fertigstellung:"
$germanChatTemplate += "Material-Datei in material/ Ordner"
$germanChatTemplate += "Blox-Datei in blox/ Ordner"
$germanChatTemplate += "sync.ps1 ausführen"
$germanChatTemplate += "dependencies.json um deutschen Blox erweitern"
$germanChatTemplate += ""
$germanChatTemplate += "Entwickle deutschen Blox mit Fokus auf DACH-Wissenschaftssystem..."

$germanChatTemplate | Out-File -FilePath "scripts\german-chat-template.md" -Encoding UTF8

Write-Host ""
Write-Host "RefBlox successfully updated for German academic system!" -ForegroundColor Green
Write-Host ""
Write-Host "Changes made:" -ForegroundColor Cyan
Write-Host "1. dependencies.json - Added German focus and DACH region info" -ForegroundColor White
Write-Host "2. status.md - Updated to reflect German academic standards" -ForegroundColor White  
Write-Host "3. german-chat-template.md - Template for German-focused blox development" -ForegroundColor White
Write-Host ""
Write-Host "Next steps:" -ForegroundColor Cyan
Write-Host "1. Review existing blox for German alignment" -ForegroundColor White
Write-Host "2. Use german-chat-template.md for new blox development" -ForegroundColor White
Write-Host "3. Upload changes: git add . then git commit then git push" -ForegroundColor White