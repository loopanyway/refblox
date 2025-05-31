# Wissenschaftliche Bausteine - Modulares System für wissenschaftliches Arbeiten

## Projektübersicht

Dieses Projekt entwickelt ein modulares Baukastensystem für wissenschaftliche Texte, bei dem einzelne Bausteine eigenständig funktionieren und später in "Montagechats" kombiniert werden können.

## Namenskonvention

### Grundstruktur
Alle Dateien im System folgen einer einheitlichen Namenskonvention:

```
[XXX]_name_typ.md
```

Wobei:
- **[XXX]** = Dreistellige Baustein-ID (000-999)
- **name** = Beschreibender Name des Bausteins (Kleinbuchstaben, Unterstriche statt Leerzeichen)
- **typ** = Kennzeichnung des Dateityps (siehe unten)
- **.md** = Dateiendung (Markdown)

### Dateitypen

- **root**: Zentrales Koordinationsdokument für das Gesamtsystem
- **material**: Materialsammlung und Entwicklungsversion eines Bausteins
- **baustein**: Fertiger, einsatzbereiter Baustein für Montage-Chats

### Beispiele
- `[000]_wissenschaftliche_bausteine_root.md` - Masterdokument (dieses Dokument)
- `[010]_wissenschaftliche_texte_material.md` - Entwicklungsversion Baustein 010
- `[010]_wissenschaftliche_texte_baustein.md` - Fertiger Baustein 010
- `[020]_literaturmanagement_material.md` - Entwicklungsversion Baustein 020
- `[020]_literaturmanagement_baustein.md` - Fertiger Baustein 020

### Grundprinzipien
- **Modularität**: Jeder Baustein ist eigenständig funktionsfähig
- **Kompatibilität**: Bausteine können nahtlos kombiniert werden
- **Universalität**: Einsetzbar für verschiedene wissenschaftliche Texttypen
- **Erweiterbarkeit**: Neue Bausteine können hinzugefügt werden

### Baustein-Struktur
Jeder Baustein folgt einem einheitlichen Schema:
- **ID-System**: [XXX] - dreistellige Nummerierung
- **Eigenständigkeit**: Vollständig dokumentierte Funktion
- **Schnittstellen**: Definierte Input/Output-Parameter
- **Dokumentation**: Markdown-Format für Kompatibilität

## Baustein-Katalog

### Baustein [010] - Grundlagen wissenschaftlicher Texte (ÜBERGREIFEND)
**Status**: ✅ Fertiggestellt (v2.0.0)
**Funktion**: Gemeinsame Grundlagen für alle wissenschaftlichen Texttypen
**Einsatzbereich**: Wissenschaftlicher Sprachstil, Gliederungslogik, Qualitätskriterien
**Schnittstellen**: 
- Input: Texttyp-Parameter, Disziplin
- Output: Grundlagen-Framework für [011-013]
- Kompatibel mit: [011-013] (direkt), [020-090] (indirekt)

### Baustein [011] - Studienarbeiten (AKTUELL IN ENTWICKLUNG)
**Status**: 🔄 In Entwicklung
**Funktion**: Hausarbeiten, Bachelor- und Masterarbeiten
**Einsatzbereich**: Deutsche Hochschulstandards, akademische Übungen
**Schnittstellen**: 
- Input: Grundlagen von [010], Studientyp, Umfang
- Output: Strukturierte Studienarbeiten
- Kompatibel mit: [010] (basis), [020-090] (kombinierbar)

### Baustein [012] - Dissertationen
**Status**: 📋 Geplant
**Funktion**: Forschungsarbeiten, Dissertationen, Habilitationen
**Einsatzbereich**: Eigenständige Forschung, wissenschaftlicher Beitrag
**Schnittstellen**: 
- Input: Grundlagen von [010], Forschungsdesign
- Output: Dissertationsstruktur
- Kompatibel mit: [010] (basis), [020-090] (kombinierbar)

### Baustein [013] - Publikationen
**Status**: 📋 Geplant
**Funktion**: Journal Papers, Konferenzbeiträge, Buchkapitel
**Einsatzbereich**: Internationale Publikationsstandards
**Schnittstellen**: 
- Input: Grundlagen von [010], Journal-Spezifikationen
- Output: Publikationsfertige Texte
- Kompatibel mit: [010] (basis), [020-090] (kombinierbar)

### Geplante Bausteine

#### Baustein [020] - Literaturmanagement
- Recherche, Verwaltung und Zitation von Quellen
- Integration mit Zotero, Mendeley, EndNote

#### Baustein [030] - Methodendesign
- Quantitative und qualitative Forschungsmethoden
- Versuchsplanung und Datenerhebung

#### Baustein [040] - Datenanalyse
- Statistische Auswertungen
- Visualisierung von Ergebnissen

#### Baustein [050] - Argumentationsstruktur
- Logische Aufbaumodelle
- Rhetorische Strategien

#### Baustein [060] - Formatierung & Layout
- Zitierweisen (APA, MLA, Chicago, etc.)
- Dokumentenformatierung

#### Baustein [070] - Qualitätssicherung
- Plagiatsprüfung
- Peer-Review-Prozesse

#### Baustein [080] - Kollaboration
- Gemeinsames Arbeiten an Dokumenten
- Versionskontrolle

#### Baustein [090] - Publikationswege
- Journal-Auswahl
- Einreichungsprozesse

## Chat-Workflow und Koordination

### Entwicklungsprozess
1. **Root-Chat** (dieser Chat): Zentrale Koordination und Masterplan
2. **Baustein-Chats**: Spezialisierte Entwicklung einzelner Module
3. **Montage-Chats**: Kombination mehrerer fertiger Bausteine

### Anweisungen für Baustein-Chats
Jeder Baustein-Chat soll:
- **Dieses Root-Dokument als Referenz verwenden**
- **Zu Beginn den Scope definieren**: Was gehört IN den Baustein, was NICHT
- **Abgrenzungen kommunizieren**: Bei Unklarheiten mitteilen, welcher andere Baustein [XXX] besser geeignet wäre
- **Cross-References setzen**: Hinweise geben, wenn Themen in anderen Bausteinen behandelt werden
- **Ein Markdown-Artefakt erstellen** mit der vollständigen Baustein-Spezifikation
- **Die definierten Schnittstellen einhalten** (Input/Output-Parameter)
- **Kompatibilität zum Gesamtsystem sicherstellen**

### Scope-Definition Template
Jeder Baustein-Chat soll am Anfang klären:
```markdown
## Baustein [XXX] - Scope-Definition

### ✅ Gehört IN diesen Baustein:
- [Aufzählung der Kernfunktionen]

### ❌ Gehört NICHT in diesen Baustein:
- [Funktion] → siehe Baustein [YYY]
- [Funktion] → siehe Baustein [ZZZ]

### 🔄 Schnittstellen zu anderen Bausteinen:
- Erhält von [XXX]: [Datentyp/Information]
- Liefert an [YYY]: [Datentyp/Information]
```

### Kommunikation bei Unklarheiten
**Standardformulierung für Baustein-Chats:**
"Dieses Thema sehe ich eher in Baustein [XXX], weil..."
"Diese Funktion ist bereits in Baustein [YYY] beschrieben"
"Soll ich das hier behandeln oder gehört es zu [ZZZ]?"

### Informationen für Baustein-Entwickler
**Aus diesem Root-Dokument entnehmen:**
- Systemarchitektur und Grundprinzipien
- Baustein-ID und Nummerierungsschema
- Kompatibilitätsanforderungen
- Technische Spezifikationen (JSON-Format)
- Einheitliche Dokumentationsstruktur

**Zurück an Root liefern:**
- Fertiges Markdown-Artefakt zur Integration
- Aktualisierte Schnittstellen-Definitionen
- Kompatibilitäts-Updates für die Matrix

### Kompatibilitätsmatrix
```
      [010] [011] [012] [013] [020] [030] [040] [050] [060] [070] [080] [090]
[010]  ✓     ✓     ✓     ✓     ✓     ✓     ✓     ✓     ✓     ✓     ✓     ✓
[011]  ✓     ✓     ○     ○     ✓     ✓     ✓     ✓     ✓     ✓     ✓     ✓
[012]  ✓     ○     ✓     ○     ✓     ✓     ✓     ✓     ✓     ✓     ✓     ✓
[013]  ✓     ○     ○     ✓     ✓     ✓     ✓     ✓     ✓     ✓     ✓     ✓
[020]  ✓     ✓     ✓     ✓     ✓     ✓     ✓     ✓     ✓     ✓     ✓     ✓
...
```
Legende: ✓ = vollkompatibel, ○ = bedingt kompatibel, ✗ = nicht kompatibel

## Qualitätskontrolle

### Baustein-Kriterien
- [ ] Vollständige Input/Output-Spezifikation
- [ ] Eindeutige Scope-Abgrenzung  
- [ ] Kompatibilitäts-Tests durchgeführt
- [ ] Dokumentation nach Standard
- [ ] Praxistest in Montage-Chat

### System-Kriterien  
- [ ] Konsistente Versionierung
- [ ] Lückenlose Schnittstellen
- [ ] Redundanz-Minimierung

### Update-Mechanismus
**Bei Änderungen an Grundlagen-Bausteinen:**
1. Versions-Bump des geänderten Bausteins
2. Kompatibilitäts-Check für abhängige Bausteine  
3. Propagation von Breaking Changes dokumentieren
4. Update-Hinweise für betroffene Montage-Chats

## Implementierungsplan

### Phase 1: Kern-Bausteine (Aktuell)
- [010] Grundlagen wissenschaftlicher Texte ✅ **ABGESCHLOSSEN**
- [011] Studienarbeiten 🔄 **IN ENTWICKLUNG**
- [020] Literaturmanagement 📋 **GEPLANT**
- [060] Formatierung & Layout 📋 **GEPLANT**

### Phase 2: Erweiterte Funktionen
- [012] Dissertationen
- [013] Publikationen
- [030] Methodendesign
- [040] Datenanalyse
- [050] Argumentationsstruktur

### Phase 3: Kollaboration & Publikation
- [070] Qualitätssicherung
- [080] Kollaboration
- [090] Publikationswege

## Technische Spezifikationen

### Dateiformate
- **Entwicklung**: Markdown (.md)
- **Austausch**: JSON für Schnittstellen
- **Output**: Multiple Formate (PDF, DOCX, HTML)

### Versionierung
- Semantic Versioning (MAJOR.MINOR.PATCH)
- Kompatibilitäts-Tags für Baustein-Interaktion

## Nächste Schritte

### Für Baustein-Entwicklung
1. **Root-Dokument studieren** - Alle notwendigen Infos sind hier
2. **Baustein-Chat starten** - Neuen Chat für spezifischen Baustein
3. **Markdown-Artefakt erstellen** - Vollständige Baustein-Dokumentation
4. **Zurück zum Root** - Upload des fertigen Artefakts zur Integration

### Workflow-Stufen
1. **Material-Phase**: Entwicklung und Iteration in `_material.md`
2. **Baustein-Phase**: Finalisierung in `_baustein.md` 
4. **Qualitätskontrolle**: Review durch Aufpasser-System

---

## Änderungshistorie

### **Version 1.1 → 1.2** (2025-05-30)
**Baustein [010] aufgeteilt:** Universeller Textbaustein wird zu 4 spezialisierten Bausteinen [010-013] für Grundlagen, Studienarbeiten, Dissertationen und Publikationen. Kompatibilitätsmatrix und Schnittstellen entsprechend erweitert. **Status:** Implementiert.

### **Version 1.2 → 1.3** (2025-05-30)
**Baustein [010] finalisiert:** Grundlagen-Framework abgeschlossen (v2.0.0). Status-Tracking und Qualitätskontrolle-System ergänzt. **Status:** Implementiert.

---

**Projekt-Status**: Aktive Entwicklung
**Letzte Aktualisierung**: 2025-05-29
**Verantwortlich**: Modulare Baustein-Entwicklung