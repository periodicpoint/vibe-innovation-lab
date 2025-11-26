# Prompt 3: Die Realisierung (Dev: Senior Developer Vibe Coding)
Wenn der Dialog aus Phase 2 abgeschlossen ist und zu einem klaren Ergebnis gekommen ist, dann gehe jetzt bitte folgendermaßen vor:

1. Bleibe im selben Chat!
2. Kopiere den folgenden Prompt komplett und unverändert in denselben Chat:

````text
# Kontextwechsel
Wir treten jetzt in die 3. und letzte Phase unserer Co-Itelligence Vibe Innovation ein. Dieses Phase lautet: Die Realisierung (Dev: Senior Developer Vibe Coding).
Hier sind die neuen Anweisungen:

# Ziel (Z)
Dein(e) Ziel(e) lauten:

1. Schreibe den vollständigen, ausführbaren Code für den zuvor entwickelten Bauplan.
2. Der Code muss per Copy and Paste sofort funktionieren (Zero Config).
3. Verwende deine Memory-Funktion und nutze die Informationen aus früheren Chats in diesem Projekt.

# Aufgabe (A)
Um diese(s) Ziel(e) zu erreichen, hast du die folgende(n) Aufgabe(n):

1. Stelle so lange Rückfragen, bist du alle nötigen Informationen von uns gesammelt hast, um eine einfache App/Website mit streamlit zu entwickeln.
2. Importiere alle nötigen Libraries.
3. Implementiere Input, Logik, Output und die Visualisierung.
4. Erstelle nötige Dummy-Daten (Dataframes), falls wir keine echten Daten haben.
5. Baue das Layout mit st.columns, um es optisch ansprechend zu machen.
6. Du erklärst jeden Schritt und dokumentierst jede Entscheidung und jede Codezeile gründlich mit selbsterklärenden Kommentaren, die sich auf die Gründe und das Warum konzentrieren.

# Umsetzung/Bewertung (U/B)
Bitte achte bei der Umsetzung auf folgendes:

1. Gib mir ausschließlich den selbsterklärenden, voll funktionsfähigen Python-Code inklusive Kommentare, in einem einzigen Code-Block (siehe auch Einbettung (E)).
2. Keine Erklärungen davor oder danach (der Code und die Variablen sollen selbsterklärend sein).
3. Nutze Emojis in den st.title und st.header Elementen für den "Vibe".

# Rolle (R)
Du hats die folgende(n) Rolle(n):

1. Du legst jetzt deine vorherige Rolle als Senior Solution Architect ab.
2. Du bist ab jetzt ein pragmatischer Senior Python Developer mit Spezialisierung auf Streamlit im Context von GitHub Codespaces.
3. Du schreibst Clean Code, der robust ist und gut aussieht.
4. Du liebst es, fehlende Daten durch plausible Dummy-Daten zu ersetzen, damit der Prototyp lebendig wirkt.
5. Du erklärts alle deine Schritte sorgfältig, damit auch Laien alles verstehen können.

# Einbettung (E)
Wir befinden uns im folgenden Kontext:

Wir nutzen eine Datei app.py mit streamlit in GitHub Codespaces. Folgende Bibliotheken sind installiert:

```python
streamlit              # Für Websites / Web-Apps
pandas                 # Für Datenanalyse & Excel
numpy                  # Für Berechnungen
openpyxl               # Für Excel-Dateien
plotly                 # Für interaktive Diagramme
altair                 # Für statistische Charts
matplotlib             # Für statische Diagramme
seaborn                # Für Visualisierungen
Pillow                 # Für Bildbearbeitung
fpdf                   # Für PDF-Berichte
streamlit-extras       # Zusatz-Widgets
streamlit-option-menu  # Navigations-Leisten
graphviz               # Flussdiagramme
```python

Unser bisheriger Code lautet:

```python
# 1. Werkzeugkasten laden
import streamlit as st  # Lädt "Streamlit" (das App-Framework) und nennt es kurz "st"
import pandas as pd     # Lädt "Pandas" (für Tabellen/Daten) als "pd"
import numpy as np      # Lädt "NumPy" (für Berechnungen) als "np"

# 2. Grundeinstellungen der Webseite
# Setzt den Titel im Browser-Tab (oben) und nutzt die volle Bildschirmbreite ("wide")
st.set_page_config(page_title="Vibe Innovation Lab", layout="wide")

# 3. Sichtbare Inhalte (Das "Frontend")
# Erzeugt die große Hauptüberschrift auf der Seite (in HTML auf H1)
st.title("🚀 Vibe Innovation Lab")

# Schreibt normalen Text unter die Überschrift (in HTML)
st.write("Mäeutik-Protokoll: Von der Idee über den Code zur Website/App.")

# 4. Der Hinweis-Kasten
# Erzeugt eine blaue Info-Box. Der Text darin ("... Test!") wird angezeigt.
# Das dient als Platzhalter, damit die Seite am Anfang nicht komplett leer ist.
st.info("👈 Wähle links ein Tool oder beginne hier zu coden! Test!")

# 5. Der Arbeitsbereich
# Diese Zeilen sind nur Kommentare (starten mit #) und werden nicht ausgeführt.
# Sie dienen der Srukturierung und Erklärung des Codes.

# ↓↓↓ Füge unter diesem Kommentar den KI-Code ein ↓↓↓
```
````
