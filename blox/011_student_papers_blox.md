# 011_studienarbeiten_baustein.md

## Baustein-Metadaten
- **ID**: [011]
- **Name**: studienarbeiten
- **Typ**: baustein
- **Version**: 1.0.0
- **Status**: Einsatzbereit
- **Kompatibilität**: [010], [020], [030], [040], [060], [070], [080]
- **Abhängigkeiten**: [010] (Grundlagen wissenschaftlicher Texte)
- **Letzte Änderung**: 2025-05-30
- **Erstellt**: 2025-05-30

## Funktionsbeschreibung

Dieser Baustein erstellt **strukturierte Vorlagen für deutsche Studienarbeiten** (Hausarbeiten, Bachelor- und Masterarbeiten) basierend auf den wissenschaftlichen Grundlagen von [010]. Er definiert spezifische Templates, Umfangsvorgaben und Bewertungskriterien für den deutschen Hochschulkontext.

## Eingabeparameter (Input)

```json
{
  "arbeitstyp": "hausarbeit|bachelorarbeit|masterarbeit",
  "fachbereich": "string",
  "umfang_seiten": "number",
  "bearbeitungszeit_wochen": "number",
  "institution": "universitaet|fachhochschule|berufsakademie",
  "dozent_anforderungen": ["string"],
  "empirische_komponente": "boolean",
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
  "studienarbeit_struktur": {
    "gliederung_template": {
      "kapitel": ["object"],
      "gewichtung_prozent": ["number"],
      "seiten_verteilung": ["number"]
    },
    "formale_vorgaben": {
      "gesamtumfang": "string",
      "zeitrahmen": "string",
      "abgabeformat": "string"
    }
  },
  "arbeitstyp_spezifika": {
    "hausarbeit": "object|null",
    "bachelorarbeit": "object|null", 
    "masterarbeit": "object|null"
  },
  "formulierungshilfen": {
    "einleitungen": ["string"],
    "kapitelübergänge": ["string"],
    "fazit_formulierungen": ["string"]
  },
  "bewertungskriterien": {
    "inhaltlich": ["kriterien"],
    "formal": ["kriterien"],
    "gewichtung": "object"
  },
  "qualitätssicherung": {
    "checkliste_vor_abgabe": ["string"],
    "selbstbewertung": "object"
  }
}
```

## Studienarbeits-Typologien

### Hausarbeiten (5-25 Seiten)
**Einsatzbereich**: Seminar-, Proseminar-, Hauptseminararbeiten  
**Bearbeitungszeit**: 6-8 Wochen  
**Ziel**: Wissenschaftliche Auseinandersetzung mit abgegrenztem Thema

**Standardgliederung:**
```
1. Einleitung (10-15%)
   1.1 Problemstellung und Relevanz
   1.2 Forschungsfrage
   1.3 Vorgehensweise und Aufbau

2. Theoretischer Rahmen (20-30%)
   2.1 Begriffsdefinitionen
   2.2 Forschungsstand
   2.3 Theoretische Grundlagen

3. Hauptteil/Analyse (40-50%)
   3.1 [Themenspezifisch]
   3.2 [Themenspezifisch]
   3.3 [Themenspezifisch]

4. Fazit und Ausblick (10-15%)
   4.1 Zusammenfassung der Ergebnisse
   4.2 Beantwortung der Forschungsfrage
   4.3 Ausblick und offene Fragen

5. Literaturverzeichnis
6. Anhang (falls erforderlich)
```

### Bachelorarbeiten (30-60 Seiten)
**Einsatzbereich**: Abschlussarbeit Bachelor-Studium  
**Bearbeitungszeit**: 8-12 Wochen  
**Ziel**: Eigenständige wissenschaftliche Bearbeitung mit methodischer Komponente

**Standardgliederung:**
```
1. Einleitung (8-12%)
   1.1 Ausgangslage und Problemstellung
   1.2 Zielsetzung und Forschungsfrage
   1.3 Abgrenzung und Vorgehensweise
   1.4 Aufbau der Arbeit

2. Theoretische Grundlagen (25-35%)
   2.1 Begriffliche Grundlagen
   2.2 Theoretischer Bezugsrahmen
   2.3 Stand der Forschung
   2.4 Hypothesen/Forschungsannahmen

3. Methodisches Vorgehen (10-15%)
   3.1 Forschungsdesign
   3.2 Datenerhebung/-analyse
   3.3 Methodenkritik

4. Empirischer Teil/Analyse (35-45%)
   4.1 Darstellung der Ergebnisse
   4.2 Interpretation und Diskussion
   4.3 Kritische Würdigung

5. Fazit und Ausblick (8-12%)
   5.1 Zusammenfassung der Erkenntnisse
   5.2 Beantwortung der Forschungsfrage
   5.3 Praktische Implikationen
   5.4 Grenzen der Untersuchung
   5.5 Forschungsausblick

6. Literaturverzeichnis
7. Anhang
8. Eigenständigkeitserklärung
```

### Masterarbeiten (60-120 Seiten)
**Einsatzbereich**: Abschlussarbeit Master-Studium  
**Bearbeitungszeit**: 20-26 Wochen  
**Ziel**: Vertiefende wissenschaftliche Forschung mit eigenständigem Beitrag

**Standardgliederung:**
```
1. Einleitung (6-10%)
   1.1 Ausgangssituation und Relevanz
   1.2 Problemstellung und Zielsetzung
   1.3 Forschungsfragen und Hypothesen
   1.4 Wissenschaftlicher Beitrag
   1.5 Aufbau und Vorgehensweise

2. Theoretischer Rahmen (25-30%)
   2.1 Begriffliche Grundlagen
   2.2 Theoretische Ansätze
   2.3 Aktueller Forschungsstand
   2.4 Forschungslücken
   2.5 Theoretisches Modell

3. Forschungsdesign und Methodik (12-18%)
   3.1 Forschungsphilosophie
   3.2 Forschungsansatz
   3.3 Forschungsstrategie
   3.4 Datenerhebung
   3.5 Datenanalyse
   3.6 Gütekriterien

4. Empirische Untersuchung (35-40%)
   4.1 Beschreibung der Stichprobe/des Falls
   4.2 Darstellung der Ergebnisse
   4.3 Interpretation der Befunde
   4.4 Diskussion im Theoriekontext
   4.5 Implikationen

5. Diskussion und Bewertung (8-12%)
   5.1 Zusammenfassung der Kernerkenntnisse
   5.2 Theoretische Implikationen
   5.3 Praktische Implikationen
   5.4 Limitationen der Studie
   5.5 Forschungsausblick

6. Fazit (3-5%)
   6.1 Zentrale Erkenntnisse
   6.2 Beantwortung der Forschungsfragen
   6.3 Schlussbetrachtung

7. Literaturverzeichnis
8. Anhang
9. Eigenständigkeitserklärung
```

## Deutsche Hochschulstandards

### Formale Anforderungen

#### Universität
- **Hausarbeiten**: 5-25 Seiten, 12pt, 1,5-facher Zeilenabstand
- **Bachelorarbeiten**: 30-50 Seiten, ECTS-Punkte: 8-12
- **Masterarbeiten**: 80-120 Seiten, ECTS-Punkte: 15-30

#### Fachhochschule
- **Hausarbeiten**: 8-20 Seiten, praxisbezogener Fokus
- **Bachelorarbeiten**: 40-60 Seiten, stärkere Anwendungsorientierung
- **Masterarbeiten**: 60-100 Seiten, Praxisprojekt oft integriert

#### Berufsakademie
- **Studienarbeiten**: 15-30 Seiten, Unternehmensbezug
- **Bachelorarbeiten**: 40-60 Seiten, betriebliche Problemstellung
- **Praxistransfer**: Obligatorischer Anwendungsbezug

### Bewertungskriterien (deutsches Notensystem)

#### Inhaltliche Bewertung (60-70%)
- **Fachliche Kompetenz**: Theoriekenntnisse, Methodenbeherrschung
- **Analytische Fähigkeiten**: Problemdurchdringung, kritische Reflexion
- **Eigenständigkeit**: Eigene Gedanken, kreative Lösungsansätze
- **Argumentationsqualität**: Logik, Schlüssigkeit, Stringenz

#### Formale Bewertung (20-30%)
- **Aufbau und Struktur**: Gliederung, roter Faden
- **Sprachliche Qualität**: Wissenschaftlicher Stil, Grammatik
- **Zitation und Quellen**: Korrekte Quellenangaben, Literaturqualität
- **Layout und Format**: Einheitlichkeit, Professionalität

#### Prozessbewertung (10-20%)
- **Zeitmanagement**: Einhaltung von Terminen
- **Betreuungsgespräche**: Vorbereitung, Reflexionsfähigkeit
- **Selbstständigkeit**: Eigeninitiative, Problemlösungskompetenz

## Studienarbeits-spezifische Formulierungen

### Einleitungsformulierungen

#### Hausarbeiten
- "Die vorliegende Hausarbeit beschäftigt sich mit..."
- "Im Rahmen des Seminars [Titel] wird untersucht..."
- "Diese Arbeit verfolgt das Ziel..."
- "Die zentrale Fragestellung lautet..."

#### Bachelorarbeiten
- "Die vorliegende Bachelorarbeit untersucht..."
- "Ausgangspunkt der Untersuchung ist die Beobachtung, dass..."
- "In der wissenschaftlichen Diskussion ist umstritten..."
- "Die Relevanz der Fragestellung ergibt sich aus..."

#### Masterarbeiten
- "Die vorliegende Masterarbeit leistet einen Beitrag zur..."
- "Trotz umfangreicher Forschung besteht nach wie vor..."
- "Die wissenschaftliche Auseinandersetzung mit... zeigt..."
- "Vor dem Hintergrund aktueller Entwicklungen stellt sich die Frage..."

### Kapitelübergänge

#### Theorie zu Empirie
- "Basierend auf den theoretischen Überlegungen wird nun..."
- "Die dargestellten Konzepte sollen im Folgenden empirisch überprüft werden..."
- "Um die theoretischen Annahmen zu validieren..."

#### Zwischen Hauptkapiteln
- "Nachdem... dargestellt wurde, ist nun zu untersuchen..."
- "Aufbauend auf den Erkenntnissen zu... wird im Folgenden..."
- "Die bisherigen Ausführungen haben gezeigt, dass..."

### Fazit-Formulierungen

#### Hausarbeiten
- "Die Analyse hat verdeutlicht, dass..."
- "Zusammenfassend lässt sich festhalten..."
- "Die Untersuchung kommt zu dem Ergebnis..."

#### Bachelor-/Masterarbeiten
- "Die vorliegende Arbeit konnte zeigen, dass..."
- "Die empirischen Befunde bestätigen/widerlegen..."
- "Ein zentrales Ergebnis der Untersuchung ist..."
- "Für die Praxis ergeben sich folgende Implikationen..."
- "Weiterer Forschungsbedarf besteht in..."

## Integration der Grundlagen von [010]

### Wissenschaftlichkeits-Framework angewendet
- **Objektivität**: In allen Templates durch unpersönliche Formulierungen
- **Präzision**: Durch klare Begriffsdefinitionen in Kapitel 2
- **Klarheit**: Durch strukturierte Gliederungslogik

### Sprachstil-Grundlagen übernommen
- **Tempus-Regeln**: Angepasst für verschiedene Arbeitstypen
- **Formulierungshilfen**: Erweitert um studienarbeits-spezifische Wendungen
- **Fachsprachliche Konventionen**: Integriert in alle Templates

### Qualitätskriterien adaptiert
- **Inhaltliche Qualität**: Angepasst an Studienniveau
- **Strukturelle Qualität**: Durch klare Gliederungsvorlagen
- **Sprachliche Qualität**: Durch spezifische Formulierungshilfen

### Abstract-Grundlagen spezifiziert
- **Länge für Studienarbeiten**: 150-300 Wörter
- **5-Schritt-Struktur**: Übernommen von [010]
- **Stilistische Anpassungen**: Für deutschen Hochschulkontext

## Qualitätssicherung

### Checkliste vor Abgabe

#### Inhaltlich
- [ ] Forschungsfrage klar formuliert und beantwortet
- [ ] Theoretischer Rahmen angemessen dargestellt
- [ ] Argumentation logisch und nachvollziehbar
- [ ] Empirische Komponente (falls vorhanden) methodisch korrekt
- [ ] Fazit fasst Kernerkenntnisse zusammen

#### Strukturell
- [ ] Gliederung entspricht Vorgaben
- [ ] Kapitelgewichtung ausgewogen
- [ ] Roter Faden erkennbar
- [ ] Übergänge zwischen Kapiteln gelungen
- [ ] Abstract/Zusammenfassung vollständig

#### Formal
- [ ] Seitenzahl eingehalten
- [ ] Zitierweise konsistent
- [ ] Literaturverzeichnis vollständig
- [ ] Layout einheitlich
- [ ] Rechtschreibung und Grammatik korrekt

### Selbstbewertungsraster

#### Hausarbeiten (100 Punkte)
- **Inhalt** (60 Punkte): Fachkompetenz, Analyse, Argumentation
- **Struktur** (25 Punkte): Aufbau, Gliederung, roter Faden  
- **Form** (15 Punkte): Sprache, Zitation, Layout

#### Bachelor-/Masterarbeiten (100 Punkte)
- **Inhalt** (70 Punkte): Fachkompetenz, Methodik, Eigenständigkeit
- **Struktur** (20 Punkte): Aufbau, Logik, Kohärenz
- **Form** (10 Punkte): Sprache, Zitation, Professionalität

## Schnittstellen zu anderen Bausteinen

### Input VON [010] - Grundlagen wissenschaftlicher Texte
- **Wissenschaftlichkeits-Framework**: Objektivität, Präzision, Klarheit
- **Sprachstil-Grundlagen**: Tempus-Regeln, Formulierungshilfen
- **Qualitätskriterien**: Bewertungsmaßstäbe für alle Texttypen
- **Abstract-Grundlagen**: 5-Schritt-Struktur, Längenangaben

### Output AN Montage-Chats
- **Fertige Templates**: Gliederungsvorlagen für alle Arbeitstypen
- **Formale Vorgaben**: Deutsche Hochschulstandards
- **Bewertungskriterien**: Qualitätssicherung und Selbstbewertung
- **Formulierungshilfen**: Studienarbeits-spezifische Wendungen

### Kompatibilität MIT anderen Bausteinen
- **[020] Literaturmanagement**: Zitierweisen und Quellenarbeit
- **[030] Methodendesign**: Für empirische Studienarbeiten
- **[040] Datenanalyse**: Für quantitative Arbeitskomponenten
- **[060] Formatierung & Layout**: Deutsche Formatstandards
- **[070] Qualitätssicherung**: Plagiatsprüfung und Review-Prozesse

## Anwendungsbeispiel

### Szenario: Masterarbeit in Betriebswirtschaftslehre

**Input-Parameter:**
```json
{
  "arbeitstyp": "masterarbeit",
  "fachbereich": "Betriebswirtschaftslehre", 
  "umfang_seiten": 80,
  "bearbeitungszeit_wochen": 24,
  "institution": "universitaet",
  "empirische_komponente": true
}
```

**Output-Ergebnis:**
- **Gliederung**: 6-Kapitel-Struktur mit empirischem Teil
- **Gewichtung**: Theorie 30%, Methodik 15%, Empirie 40%, Diskussion 15%
- **Zeitplanung**: 24 Wochen aufgeteilt in Phasen
- **Formulierungshilfen**: BWL-spezifische wissenschaftliche Wendungen
- **Bewertungskriterien**: Universitärer Masterstudium-Standard

## Versionierung und Updates

### Version 1.0.0 (2025-05-30)
- **Grundfunktionen**: Alle drei Studienarbeits-Typen implementiert
- **Deutsche Standards**: Formale Anforderungen für Uni/FH/BA integriert
- **[010]-Integration**: Vollständige Kompatibilität mit Grundlagen-Framework
- **Qualitätssicherung**: Checklisten und Bewertungsraster entwickelt

### Geplante Erweiterungen (Version 1.x.x)
- **Fachspezifische Varianten**: MINT, Geisteswissenschaften, Sozialwissenschaften
- **Digitale Integration**: LaTeX/Word-Templates, KI-Tool-Kompatibilität
- **Internationalisierung**: Templates für internationale Studierende
- **Kollaborationsfeatures**: Gruppenarbeits-Varianten

## Abhängigkeits-Management

### Kritische Abhängigkeit von [010]
- **Bei [010] v2.x.x Updates**: Automatisch kompatibel
- **Bei [010] v3.0.0 Breaking Changes**: Anpassung von [011] erforderlich

### Baustein-Status
- **[010]**: ✅ v2.0.0 - Vollständig kompatibel
- **[020]**: 📋 Geplante Integration für Literaturmanagement  
- **[060]**: 📋 Geplante Integration für deutsche Formatstandards

---

**Baustein [011] - Studienarbeiten**  
**Status**: Vollständig funktionsfähig für deutschen Hochschulkontext  
**Kernfunktion**: Templates für Hausarbeiten, Bachelor- und Masterarbeiten  
**Kompatibilität**: Basiert auf [010], integrierbar mit [020], [030], [040], [060]  
**Letzte Aktualisierung**: 2025-05-30