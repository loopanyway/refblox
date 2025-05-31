# [012]_dissertationen_material.md

## Entwicklungsnotizen und Materialsammlung

**Status**: Material/Entwicklungsversion  
**Baustein-ID**: [012]  
**Funktion**: Dissertationen, Habilitationen  
**Einsatzbereich**: Eigenständige wissenschaftliche Forschung, Promotionsarbeiten

## Scope-Definition

### ✅ Gehört IN diesen Baustein:
- Dissertationen: Strukturen, Vorgaben, Anforderungen
- Habilitationen (optional): Erweiterung auf Habilitationsschriften
- Dissertations-spezifische Gliederungen
- Methodik-Spezifika: Vertiefte Methodenkapitel
- Abstracts für Dissertationen
- Formulierungshilfen auf Dissertationsniveau
- Bewertungskriterien für Promotionsarbeiten
- Eigenständigkeit und Originalität
- Betreuungs- und Abgabestandards

### ❌ Gehört NICHT in diesen Baustein:
- Haus-/Bachelor-/Masterarbeiten → [011]
- Journalartikel, Konferenzbeiträge → [013]
- Literaturverwaltung/Zitation → [020]
- Datenanalyse-Details → [040]
- Layout/Formatierungsvorgaben → [060]
- Publikationsprozesse → [090]

### 🔄 Schnittstellen zu anderen Bausteinen:
- Erhält von [010]: Grundlagen-Framework (Wissenschaftlichkeit, Sprachstil, Qualitätskriterien, Abstract-Grundlagen)
- Erhält von [020]: Literaturmanagement
- Erhält von [030]: Methodendesign
- Erhält von [040]: Datenanalyse
- Erhält von [060]: Formatierungsstandards
- Liefert an Montage-Chats: Vollständige Dissertationsarchitektur

### Besonderheiten Dissertationen:
- Umfang: 150-400 Seiten
- Bearbeitungszeit: 3-5 Jahre
- Struktur: Theorie, Methode, Empirie, Diskussion, Schluss
- Abstract-Länge: 300-500 Wörter
- Originalität: Eigener wissenschaftlicher Beitrag

---

## Input-Parameter (Entwurf)

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

## Output-Parameter (Entwurf)

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

---

## Entwicklungsnotizen

### Zu entwickelnde Bereiche
- Dissertationsstrukturen: Standard-Gliederungen (mit Variationen je nach Disziplin)
- Abstract-Regeln: Struktur + Längenvorgaben
- Methodenkapitel: Vertiefte Beschreibung und Anforderungen
- Wissenschaftliche Sprache: Formulierungshilfen für Dissertationen
- Bewertungskriterien: Wissenschaftliche Tiefe, methodische Qualität, Originalität
- Checklisten für Abgabe und Selbstbewertung

### Offene Entwicklungsfragen
- Soll eine Habilitationserweiterung direkt integriert werden oder später?
- Wie viele fachspezifische Varianten sollen direkt enthalten sein?
- Unterscheidung nationale vs. internationale Promotionsstandards?
- Integration von Open-Access-Anforderungen?

---

## Verbesserungspotenzial

- Entwicklung einer **typischen Dissertationsstruktur** (Kapitelaufbau, Standardgliederung) zur besseren Orientierung.
- Erweiterung um spezifische Varianten für verschiedene Fachdisziplinen.
- Integration von Leitfäden für die Erstellung von Methodenkapiteln und Diskussionen.

### Mögliche Ausbaustufen
- **Standardgliederung** mit Kapiteln wie Einleitung, Theoretischer Hintergrund, Methodik, Ergebnisse, Diskussion, Fazit.
- **Fachspezifische Varianten**: Anpassungen für Naturwissenschaften, Sozialwissenschaften, Geisteswissenschaften.
- **Kumulative Dissertation**: Gliederung für Sammelarbeiten (Publikationsbasierte Dissertation).
- **Internationale Standards**: Berücksichtigung von PhD-Programmen außerhalb des deutschsprachigen Raums.
- **Open Access Integration**: Empfehlungen zur Strukturierung im Hinblick auf digitale Veröffentlichung.

### Iterationen geplant
**v0.1**: Scope + Input-/Output-Parameter  
**v0.2**: Struktur- und Template-Entwurf  
**v0.3**: Formulierungshilfen entwickeln  
**v0.4**: Checklisten und Bewertungskriterien ausarbeiten

---

**Entwicklungsstand**: Scope und erste Parameter definiert  
**Nächste Phase**: Strukturvorlagen und Formulierungshilfen erstellen  
**Verantwortlich**: Modulare Baustein-Entwicklung [012]
