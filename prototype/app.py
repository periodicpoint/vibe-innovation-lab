"""Streamlit starter scaffold for Phase 4 of the Vibe Innovation Framework.

Intentionally minimal and intentionally over-commented. Workshop participants, who
may not be programmers, open this file in a Codespace and immediately see a
running Streamlit app. The dense German line-by-line comments are pedagogical
scaffolding, not production documentation. They are expected to be overwritten as
LLM-generated prototype code replaces the placeholder body under the Section 5
marker.

Why this scaffold exists at all: vibe coding (human steers intent, LLM writes
code) needs a non-empty canvas. An empty file intimidates non-programmers. A file
with one working widget, a visible title, and a clearly marked insertion point
invites iteration and produces the shortest possible feedback loop from "idea in
head" to "thing with a URL that a user can click". That feedback loop is what
Phase 4 validation experiments depend on.

The scaffolding itself (page config, title, info box, Section markers) is part of
the teaching structure and is referenced from prototype/README.md. Do not remove
it when adapting this file for a specific session. Only replace the body.

Emojis in the user-facing strings are deliberate. This is a workshop tool for
non-programmer innovators, not a scientific or enterprise artifact. They signal
approachability. Strip them only if the downstream context requires a neutral
register.
"""

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
# Sie dienen der Strukturierung und Erklärung des Codes.

# ↓↓↓ Füge unter diesem Kommentar den KI-Code ein ↓↓↓
