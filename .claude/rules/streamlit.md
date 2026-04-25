---
paths:
  - "prototype/app.py"
---

# Streamlit vibe-coding constraints

The authoritative source is `prototype/vibe_coding_constraints.md`. The library allowlist is `prototype/pyproject.toml`. This rule applies them when editing the Streamlit scaffold.

1. Single target file: `prototype/app.py`. Do not split into modules during a workshop unless the team explicitly opts in.
2. Runtime: Streamlit on port 8501. Do not change the port, address, or CORS settings (pinned in `prototype/.streamlit/config.toml`).
3. Interpreter: Python 3.10 via `uv run`.
4. Library allowlist comes from `prototype/pyproject.toml`. Generating code that imports anything outside this list is a violation. Common allowed libraries include streamlit, pandas, numpy, plotly, altair, matplotlib, seaborn, graphviz, Pillow, fpdf, openpyxl, streamlit-extras, streamlit-option-menu.
5. No `pip install`, `apt install`, or other install commands inside generated code. Dependencies are installed once at container creation.
6. Persistence options: in-memory variables, `st.session_state`, or `sqlite3`. No external database servers.
7. LLM calls go through hosted APIs (OpenAI, Anthropic, and similar) using credentials from `st.secrets` or environment variables. No local LLM runners such as ollama or llama.cpp.
8. No background services, daemons, or long-running processes. Streamlit reruns top-to-bottom on each interaction.
9. The override clause: a team may suspend a single blocklist item by explicit request, with consequences warned and the override recorded in the Innovation Canvas Document.
10. Emojis in user-facing strings are deliberate in this scaffold (workshop accessibility for non-programmer participants). Do not strip them. The Markdown lint does not touch `.py` files.
