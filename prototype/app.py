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
st.write("Von der Idee über den Code zur Website oder App.")

# 4. Der Hinweis-Kasten
# Erzeugt eine blaue Info-Box. Der Text darin ("... Test!") wird angezeigt.
# Das dient als Platzhalter, damit die Seite am Anfang nicht komplett leer ist.
st.info("👈 Wähle links ein Tool oder beginne hier zu coden! Test!")

# 5. Der Arbeitsbereich
# Diese Zeilen sind nur Kommentare (starten mit #) und werden nicht ausgeführt.
# Sie dienen der Srukturierung und Erklärung des Codes.

# ↓↓↓ Füge unter diesem Kommentar den KI-Code ein ↓↓↓
