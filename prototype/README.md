# Prototyping infrastructure

Streamlit starter for Phase 4 (Build and validate) of the Vibe Innovation Framework. Designed for vibe coding: you describe what you want, the LLM writes the code.

## Quick start with GitHub Codespaces

1. Click the green **Code** button in the GitHub repository.
2. Select the **Codespaces** tab.
3. Click **Create codespace on main**.
4. Wait 1 to 2 minutes for the environment to set up.
5. Start the app in the terminal:

```bash
cd prototype
uv run streamlit run app.py
```

If the devcontainer used the pip fallback instead of `uv` (see note below), the equivalent command is `streamlit run prototype/app.py` from the repo root.

Every new interactive terminal inside the Codespace prints a banner with the forwarded app URL at the top, for example `App-URL (öffnet sich nach streamlit run automatisch im Browser): https://laughing-umbrella-abc-8501.app.github.dev`. The URL is dynamically constructed from the `$CODESPACE_NAME` and `$GITHUB_CODESPACES_PORT_FORWARDING_DOMAIN` environment variables that GitHub Codespaces sets, so it is always correct for the current Codespace without any hardcoding. The banner is installed once by the `postStartCommand` in [.devcontainer/devcontainer.json](../.devcontainer/devcontainer.json) via an idempotent append to `~/.bashrc`.

6. The app opens automatically in a new browser tab as soon as Streamlit binds to port 8501. The devcontainer sets `onAutoForward: openBrowser` for that port, so no manual action is required. If the auto-open is blocked by a pop-up blocker or does not trigger, either copy the URL from the terminal banner described above, or open the **PORTS** tab in VS Code and click the globe icon next to port 8501.

The devcontainer installs `uv` and runs `uv sync` on creation. If the `uv` bootstrap fails for any reason (network, mirror outage), the `postCreateCommand` automatically falls back to `pip install -r prototype/requirements.txt` so the Codespace still comes up. Either path produces the same runnable environment.

## Local development

Default path (uv, matches the framework tech stack):

```bash
cd prototype
uv sync
uv run streamlit run app.py
```

If you do not have `uv` installed, install it once with `curl -LsSf https://astral.sh/uv/install.sh | sh` and open a new shell.

Fallback path (pip, works on any Python 3.10+ environment without uv):

```bash
cd prototype
pip install -r requirements.txt
streamlit run app.py
```

The `requirements.txt` file is auto-generated from `pyproject.toml` via `uv export` and exists only for hosting-platform compatibility (Streamlit Community Cloud, Hugging Face Spaces, Replit) and for the pip fallback above. Do not edit it by hand. Edit `pyproject.toml` instead, then regenerate with:

```bash
cd prototype
uv lock
uv export --format requirements-txt --no-hashes --no-emit-project --output-file requirements.txt
```

## Workflow

1. Describe to the LLM what the prototype should do.
2. Copy the generated code into `app.py`.
3. Save (Ctrl+S). Click "Always rerun" in the app.
4. Repeat.

## Troubleshooting

1. **App does not start:** Run `pip install -r prototype/requirements.txt` manually, then retry.
2. **Port not visible or stops working:** This is the most common Codespace issue. The fix depends on timing:
   - If the port **never appeared**: Open the PORTS tab in VS Code, right-click port 8501, set visibility to "Public".
   - If the port **stopped working after a while**: Stop Streamlit with Ctrl+C, then restart with `cd prototype && uv run streamlit run app.py`. If `uv` is not available (the devcontainer used the pip fallback on creation), run `streamlit run prototype/app.py` from the repository root instead. The environment is pre-configured to bind to the correct address either way.
   - If restarting does not help, run this in the terminal: `mkdir -p ~/.streamlit && cp prototype/.streamlit/config.toml ~/.streamlit/config.toml` and then restart Streamlit.
   - As a last resort: Stop the Codespace (Codespaces menu, top left, "Stop Codespace"), then restart it. Do **not** rebuild.
3. **Claude Code not available:** Use the copy-paste workflow instead. Open `framework/orchestrator.md` in the repo, click "Raw", copy everything, paste into any LLM (ChatGPT, Gemini, Mistral, and others).
4. **Codespace does not start:** Pair up with a working team. One Codespace, two screens.

## Installed libraries

1. `streamlit`: web apps and dashboards
2. `pandas`, `numpy`: data analysis and calculations
3. `plotly`, `altair`, `matplotlib`, `seaborn`: visualizations
4. `graphviz`: flowcharts
5. `Pillow`: image processing
6. `fpdf`: PDF generation
7. `openpyxl`: Excel files
8. `streamlit-extras`, `streamlit-option-menu`: additional widgets
