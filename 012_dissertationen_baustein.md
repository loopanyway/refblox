# [012]_dissertationen_baustein.md

## Baustein-Metadaten
- **ID**: [012]
- **Name**: dissertationen
- **Typ**: baustein
- **Version**: 1.0.0 (Entwurf)
- **Status**: In Entwicklung
- **Kompatibilität**: [010], [020], [030], [040], [060]
- **Abhängigkeiten**: [010] (Grundlagen wissenschaftlicher Texte)
- **Letzte Änderung**: 2025-05-30
- **Erstellt**: 2025-05-30

## Funktionsbeschreibung

Dieser Baustein erstellt **strukturierte Vorlagen für Dissertationen** (Promotionsarbeiten) basierend auf den wissenschaftlichen Grundlagen von [010]. Er definiert spezifische Gliederungen, Abstract-Strukturen, Formulierungshilfen und Bewertungskriterien.

## Eingabeparameter (Input)

```json
{
  "dissertationstyp": "monographie|kumulative", 
  "fachbereich": "string",
  "themengebiet": "string",
  "forschungsmethodik": "empirisch|theoretisch|mixed",
  "umfang_seiten": "number",
  "bearbeitungszeit_jahre": "number",
  "institution": "universitaet|fachhochschule|sonstige",
  "betreuungsanforderungen": ["string"],
  "grundlagen_von_010": {
    "wissenschaftlichkeits_framework": "object",
    "sprachstil_grundlagen": "object",
    "qualitaetskriterien": "object",
    "abstract_grundlagen": "object"
  }
}
```

## Ausgabeparameter (Output)

```json
{
  "dissertation_struktur": {
    "gliederung_template": {
      "kapitel": ["object"],
      "seitengewichtung_prozent": ["number"]
    },
    "formale_vorgaben": {
      "gesamtumfang": "string",
      "zeitrahmen": "string",
      "abgabeformat": "string"
    }
  },
  "dissertationstyp_spezifika": {
    "monographie": "object|null",
    "kumulative": "object|null"
  },
  "formulierungshilfen": {
    "einleitungen": ["string"],
    "methodenkapitel": ["string"],
    "diskussionen": ["string"],
    "schlussfolgerungen": ["string"]
  },
  "bewertungskriterien": {
    "inhaltlich": ["kriterien"],
    "formal": ["kriterien"],
    "gewichtung": "object"
  },
  "qualitaetssicherung": {
    "checkliste_vor_abgabe": ["string"],
    "selbstbewertung": "object"
  }
}
```

## Dissertations-Typologien

### Monographie
**Einsatzbereich**: Klassische Einzelarbeit

### Kumulative Dissertation
**Einsatzbereich**: Aufsatzbasierte Dissertation (Sammelpublikation)

## Wissenschaftliche Standards
- **Wissenschaftlichkeit**: Objektivität, Präzision, Klarheit (Übernommen aus [010])
- **Sprachstil**: Tempus, Fachsprache, Formulierungshilfen
- **Qualitätskriterien**: Inhaltlich, Strukturell, Sprachlich

## Abstract für Dissertationen
- Struktur: 5-Schritt-Modell (Kontext, Problemstellung, Vorgehen, Ergebnisse, Bedeutung)
- Länge: 300-500 Wörter

## Qualitätssicherung
- Checklisten für Vorabgabe
- Selbstbewertungsraster basierend auf wissenschaftlichen Kriterien

## Schnittstellen zu anderen Bausteinen

### Input von:
- **[010]** Grundlagen wissenschaftlicher Texte
- **[020]** Literaturmanagement
- **[030]** Methodendesign
- **[040]** Datenanalyse
- **[060]** Formatierung & Layout

### Output an Montage-Chats
- Strukturierte Dissertationsvorlagen
- Formulierungshilfen für wissenschaftliches Schreiben
- Qualitätskriterien für Promotionsarbeiten

## Verbesserungspotenzial
- Entwicklung einer typischen Dissertationsstruktur (Standardgliederung)
- Fachspezifische Varianten
- Leitfäden für Methodenkapitel und Diskussionen
- Erweiterung um kumulative Dissertationen und internationale Standards

## Versionierung und Updates

### Version 1.0.0 (Entwurf)
- Grundstruktur definiert
- Scope und Schnittstellen festgelegt
- Input-/Output-Parameter erstellt

### Geplante Erweiterungen
- Fachbereichsspezifische Strukturen
- Kumulative Dissertationsmodelle
- Integration internationaler Promotionsstandards

---

**Baustein [012] - Dissertationen**  
**Status**: In Entwicklung  
**Kompatibilität**: Basiert auf [010], erweiterbar durch [020], [030], [040], [060]  
**Letzte Aktualisierung**: 2025-05-30
