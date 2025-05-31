# 011_studienarbeiten_material.md

## Entwicklungsnotizen und Materialsammlung

**Status**: Material/Entwicklungsversion  
**Baustein-ID**: [011]  
**Funktion**: Hausarbeiten, Bachelor- und Masterarbeiten  
**Einsatzbereich**: Deutsche Hochschulstandards, akademische Übungen  
**Entwicklungsstart**: 2025-05-30

## Scope-Definition (bestätigt)

### ✅ Gehört IN diesen Baustein [011]:
- **Hausarbeiten**: Seminararbeiten, Proseminar-/Hauptseminararbeiten (5-25 Seiten)
- **Bachelorarbeiten**: Struktur, Umfang, Anforderungen für BA-Arbeiten (30-60 Seiten)
- **Masterarbeiten**: Struktur, Umfang, Anforderungen für MA-Arbeiten (60-120 Seiten)
- **Deutsche Hochschulstandards**: Spezifische Anforderungen deutscher Unis/FHs
- **Textstruktur-Templates**: Konkrete Gliederungsvorlagen für Studienarbeiten
- **Umfangs-/Formatvorgaben**: Seitenzahlen, Zeitrahmen, formale Anforderungen
- **Bewertungskriterien**: Was Dozenten bei Studienarbeiten bewerten
- **Studienarbeits-spezifische Formulierungen**: Einleitungen, Übergänge, Schlüsse

### ❌ Gehört NICHT in diesen Baustein [011]:
- **Grundlegende Wissenschaftlichkeit** → [010] Grundlagen (bereits implementiert)
- **Dissertationen/Habilitationen** → [012] Dissertationen
- **Journal Papers/Publikationen** → [013] Publikationen  
- **Literaturrecherche/Zitation** → [020] Literaturmanagement
- **Formatierung/Layout-Details** → [060] Formatierung & Layout
- **Methodendesign** → [030] Methodendesign
- **Datenanalyse** → [040] Datenanalyse

### 🔄 Schnittstellen zu anderen Bausteinen:
- **Erhält von [010]**: Grundlagen-Framework (Wissenschaftlichkeit, Sprachstil, Qualitätskriterien, Abstract-Grundlagen)
- **Liefert an Montage-Chats**: Fertige Studienarbeits-Strukturen und Templates
- **Kompatibel mit [020]**: Literaturmanagement für Quellenarbeit
- **Kompatibel mit [060]**: Formatierung für finale Gestaltung
- **Kompatibel mit [030]**: Methodendesign für empirische Studienarbeiten
- **Kompatibel mit [040]**: Datenanalyse für quantitative Studienarbeiten

## Kernfunktionen entwickelt

### 1. Studienarbeits-Typologien
- **Hausarbeiten** (Seminar-/Proseminar-/Hauptseminararbeiten)
- **Bachelorarbeiten** (akademischer Erstabschluss)
- **Masterarbeiten** (vertiefende wissenschaftliche Auseinandersetzung)

### 2. Strukturvorlagen für jeden Typ
- Standardgliederungen mit Variationsmöglichkeiten
- Kapitelgewichtung und Umfangsverteilung
- Spezifische Anforderungen pro Arbeitstyp

### 3. Deutsche Hochschulkonventionen
- Formale Standards deutscher Unis/FHs
- Bewertungskriterien und Benotungsmaßstäbe
- Institutionelle Besonderheiten

### 4. Studienarbeits-spezifische Formulierungen
- Einleitungsstrategien für verschiedene Arbeitstypen
- Übergänge zwischen theoretischen und praktischen Teilen
- Schlussformulierungen und Ausblicke

## Entwicklungsnotizen

### Abgrenzung zu [010] erfolgreich:
- ✅ Nutze Wissenschaftlichkeits-Framework von [010]
- ✅ Übernehme Sprachstil-Grundlagen von [010]
- ✅ Verwende Qualitätskriterien von [010]
- ✅ Adaptiere Abstract-Grundlagen (150-300 Wörter für Studienarbeiten)

### Eigenständige Entwicklungen:
- ✅ Textstruktur-Templates für Hausarbeiten/BA/MA
- ✅ Deutsche Hochschulstandards integriert
- ✅ Umfangs- und Zeitvorgaben definiert
- ✅ Bewertungskriterien aus Dozentensicht entwickelt

### Testmaterial entwickelt:
- **Hausarbeit-Template**: 5-25 Seiten, 6-8 Wochen Bearbeitungszeit
- **Bachelorarbeit-Template**: 30-60 Seiten, 8-12 Wochen Bearbeitungszeit  
- **Masterarbeit-Template**: 60-120 Seiten, 20-26 Wochen Bearbeitungszeit
- **Formulierungshilfen**: Studienarbeits-spezifische Wendungen
- **Bewertungsraster**: Kriterien deutscher Hochschulen

### Offene Entwicklungsfragen:
- Wie detailliert sollen fachspezifische Varianten sein?
- Integration von Praxisanteilen (Praktikumsberichte, etc.)?
- Berücksichtigung von Gruppenarbeiten?

### Iterationen:
**v0.1**: Grundstruktur und Abgrenzung zu [010] definiert
**v0.2**: Hausarbeits-Templates entwickelt  
**v0.3**: Bachelorarbeits-Strukturen ausgearbeitet
**v0.4**: Masterarbeits-Anforderungen integriert
**v0.5**: Deutsche Hochschulstandards recherchiert und eingearbeitet
**v0.6**: Bewertungskriterien und Formulierungshilfen entwickelt

## Input/Output-Parameter (Entwurf)

### Input-Parameter:
```json
{
  "arbeitstyp": "hausarbeit|bachelorarbeit|masterarbeit",
  "fachbereich": "string",
  "umfang_seiten": "number",
  "bearbeitungszeit": "string",
  "institution": "string",
  "dozent_anforderungen": ["string"],
  "grundlagen_von_010": {
    "wissenschaftlichkeits_framework": "object",
    "sprachstil_grundlagen": "object", 
    "qualitaetskriterien": "object",
    "abstract_grundlagen": "object"
  }
}
```

### Output-Parameter:
```json
{
  "studienarbeit_struktur": {
    "gliederung_template": "object",
    "kapitel_gewichtung": "object",
    "umfangs_verteilung": "object"
  },
  "formale_anforderungen": {
    "seitenzahl": "string",
    "zeitrahmen": "string", 
    "bewertungskriterien": ["string"]
  },
  "formulierungshilfen": {
    "einleitungen": ["string"],
    "uebergaenge": ["string"],
    "schluesse": ["string"]
  },
  "qualitaetssicherung": {
    "checklisten": ["object"],
    "selbstbewertung": "object"
  }
}
```

## Verbesserungsvorschläge (nicht umgesetzt)

### Detaillierte Template-Entwicklung
**Vorschlag**: Alle drei Arbeitstypen vollständig ausarbeiten
- **Hausarbeit-Template**: Kapitel 1-6 mit Umfangsangaben, Inhaltsrichtlinien
- **Bachelorarbeit-Template**: Erweiterte Struktur mit empirischen/theoretischen Varianten
- **Masterarbeit-Template**: Komplexe Gliederung mit Forschungskomponente
- **Fachspezifische Varianten**: MINT, Geisteswissenschaften, Sozialwissenschaften
- **Flexibilität**: Anpassbare Module je nach Anforderungen

### Formulierungshilfen-Erweiterung
**Vorschlag**: Studienarbeits-spezifische Wendungen systematisch sammeln
- **Einleitungsformulierungen**: "Die vorliegende Hausarbeit...", "Im Rahmen des Seminars..."
- **Kapitelübergänge**: Spezifisch für BA/MA-Arbeiten
- **Methodendarstellung**: Für empirische Studienarbeiten
- **Ergebnispräsentation**: Angemessen für Studienniveau
- **Fazit-Formulierungen**: Mit Ausblick und Reflexion
- **Fachsprachliche Wendungen**: Nach Disziplinen differenziert

### Deutsche Hochschulstandards-Integration
**Vorschlag**: Vollständige Recherche und systematische Erfassung
- **Formale Vorgaben**: Seitenzahlen, Formatierung, Abgabeformen
- **Bewertungskriterien**: Note 1-5 System, Gewichtungsfaktoren
- **Institutionelle Unterschiede**: Uni vs. FH vs. Berufsakademie
- **Fachbereichs-Spezifika**: Unterschiedliche Konventionen je Disziplin
- **Aktualisierungsmechanismus**: Änderungen in Prüfungsordnungen verfolgen

### Qualitätssicherung-Tools
**Vorschlag**: Entwicklung von Checklisten und Selbstbewertungstools
- **Pre-Writing-Checkliste**: Vor dem Schreiben abzuhaken
- **Chapter-by-Chapter-Review**: Qualitätsprüfung pro Kapitel
- **Selbstbewertungsraster**: Studenten können sich selbst einschätzen
- **Peer-Review-Leitfaden**: Für Austausch unter Kommilitonen
- **Abgabe-Checkliste**: Finale Überprüfung vor Einreichung

### Kompatibilitäts-Optimierung
**Vorschlag**: Nahtlose Integration mit anderen Bausteinen sicherstellen
- **[010]-Integration**: Grundlagen-Framework vollständig übernehmen
- **[020]-Schnittstelle**: Literaturmanagement-Kompatibilität
- **[060]-Koordination**: Formatierung für deutsche Standards
- **[030]/[040]-Anschluss**: Für empirische Studienarbeiten
- **Montage-Chat-Vorbereitung**: Kombinierbarkeit testen

### Praxisnahe Anwendungsbeispiele
**Vorschlag**: Konkrete Beispiele für verschiedene Szenarien entwickeln
- **Muster-Gliederungen**: Reale Beispiele mit Seitenzahlen
- **Zeitpläne**: Realistische Bearbeitungspläne für 6-26 Wochen
- **Themenfindung**: Hilfen für geeignete Forschungsfragen
- **Betreuungskommunikation**: Wie mit Dozenten interagieren
- **Krisenmanagement**: Was tun bei Schreibblockaden, Zeitproblemen

### Digitale Tools-Integration
**Vorschlag**: Moderne Schreibtools berücksichtigen
- **LaTeX-Templates**: Für MINT-Fächer
- **Word-Vorlagen**: Für Geisteswissenschaften
- **Kollaborationstools**: Google Docs, Notion-Integration
- **KI-Schreibhilfen**: Ethische Nutzung von ChatGPT & Co
- **Plagiatsprüfung**: Präventive Strategien

### Internationalisierung
**Vorschlag**: Vorbereitung für internationale Standards
- **Englische Pendants**: Templates für international students
- **ECTS-Kompatibilität**: European Credit Transfer System
- **Bologna-Prozess**: Harmonisierung mit EU-Standards
- **Austauschprogramme**: Spezielle Anforderungen für Erasmus etc.

## Prioritätsbewertung der Verbesserungsvorschläge

### Hoch (sofort umsetzbar):
- Detaillierte Template-Entwicklung
- Formulierungshilfen-Erweiterung
- Deutsche Hochschulstandards-Integration

### Mittel (mittelfristig):
- Qualitätssicherung-Tools
- Praxisnahe Anwendungsbeispiele
- Kompatibilitäts-Optimierung

### Niedrig (langfristig):
- Digitale Tools-Integration
- Internationalisierung

### Für Übergang zu 011_studienarbeiten_baustein.md:
**Mindestanforderungen erfüllt:**
- ✅ Grundstruktur definiert
- ✅ Schnittstellen zu [010] geklärt
- ✅ Scope-Abgrenzung dokumentiert
- ✅ Input/Output-Parameter entworfen
- ✅ Entwicklungsrichtung festgelegt

**Status**: Bereit für Finalisierung als Baustein, Verbesserungen optional

## Nächste Entwicklungsschritte

### Für Baustein-Finalisierung:
1. **Templates vervollständigen**: Alle drei Arbeitstypen detailliert ausarbeiten
2. **Formulierungshilfen erweitern**: Studienarbeits-spezifische Wendungen sammeln
3. **Bewertungsraster finalisieren**: Deutsche Hochschulstandards vollständig integrieren
4. **Qualitätssicherung**: Checklisten und Selbstbewertungstools entwickeln
5. **Kompatibilitätstests**: Integration mit [010] und anderen Bausteinen testen

### Für Übergang zu 011_studienarbeiten_baustein.md:
- Vollständige Dokumentation aller Funktionen
- Schnittstellen-Definition finalisiert
- Anwendungsbeispiele ausgearbeitet
- Qualitätskriterien erfüllt

---

**Entwicklungsstand**: Templates und Grundstruktur entwickelt  
**Status**: Basis für deutschen Hochschulkontext gelegt  
**Nächste Phase**: Detailausarbeitung und Finalisierung  
**Verantwortlich**: Modulare Baustein-Entwicklung [011]