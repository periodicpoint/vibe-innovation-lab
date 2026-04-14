# Prototyping infrastructure

Streamlit starter for Phase 4 (Build and validate) of the Vibe Innovation Framework. Designed for vibe coding: you describe what you want, the LLM writes the code.

## Quick start with GitHub Codespaces

1. Click the green **Code** button in the GitHub repository.
2. Select the **Codespaces** tab.
3. Click **Create codespace on main**.
4. Wait 1 to 2 minutes for the environment to set up.
5. The Streamlit app starts automatically as soon as the Codespace finishes loading. The launch is delegated to [.devcontainer/post_start.sh](../.devcontainer/post_start.sh), which the devcontainer's `postStartCommand` invokes once per container start. The script refreshes the Streamlit config, writes a dynamic terminal banner to `~/.vbi_banner.sh` (sourced by `.bashrc` on every new interactive shell), and spawns Streamlit as a fully detached background process via `nohup` so it survives the `postStartCommand` shell exit. The launch prefers `prototype/.venv/bin/streamlit` and falls back to the system `streamlit` binary when the pip fallback path was used during container creation. No popup, no consent prompt, no manual click.

6. To view the app, click the globe icon next to port 8501 in the **PORTS** tab, or click the toast notification VS Code shows when the forwarded port is detected, or copy the app URL from the terminal banner into any browser. The earlier auto-opening **Simple Browser** preview was removed because its appearance was conflated with the autorun working: when Streamlit failed to bind, the preview never opened and the failure was invisible.

7. Every new interactive terminal inside the Codespace immediately prints a verbose status banner sourced from `~/.vbi_banner.sh`. The banner lists the `uv` version, the venv-`streamlit` version, the system `streamlit` state, the Claude Code CLI state, the live port 8501 status (computed fresh on each terminal open via a `/dev/tcp` socket probe), the forwarded app URL, the log file paths with last-modified timestamps, and the exact commands to restart anything manually. On the **first** interactive shell after each container start the banner also cats the full bootstrap and start logs inline so the user actually sees what happened during install. Follow-up terminals show only the status header, gated by a `~/.vbi_bootstrap_shown` flag file that `post_create.sh` and `post_start.sh` both clear on every run. The banner is regenerated on every container start so content changes propagate without the user editing their shell config.

8. All logs live in the workspace under [.devcontainer/logs/](../.devcontainer/logs/), which is gitignored, co-located with the scripts that write them, and visible in the VS Code file explorer. Three files:

    1. `bootstrap.log`: every command run by `post_create.sh` during container creation (with `set -x` tracing).
    2. `start.log`: every command run by `post_start.sh` on the latest container start.
    3. `streamlit.log`: Streamlit runtime output, timestamped at each auto-start so stale and fresh data are distinguishable.

    If the app does not come up, open any of these files directly or run `tail -f .devcontainer/logs/streamlit.log` in a terminal. To restart Streamlit manually:

    ```bash
    pkill -f 'streamlit run'
    cd prototype && .venv/bin/streamlit run app.py
    ```

    A manually started Streamlit runs in the foreground of your terminal and prints logs directly, which is the usual setup for iterating on errors.

The devcontainer bootstrap lives in [.devcontainer/post_create.sh](../.devcontainer/post_create.sh) and runs once on container creation via `postCreateCommand`. It installs `uv`, runs `uv sync` in `prototype/`, falls back to `pip install -r prototype/requirements.txt` if `uv sync` fails, and as a last-resort fallback to `pip install streamlit pandas` so the app can boot even when the full requirements file cannot resolve. The script always exits 0 so a partial install never marks the Codespace creation as failed; `post_start.sh` self-heals on first start if no streamlit binary is found. Either install path produces the same runnable environment.

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
2. Copy the generated code into `app.py`. Auto-save writes the file after a 1-second idle window, so no Ctrl+S needed.
3. Click "Always rerun" in the app so Streamlit picks up subsequent edits without asking.
4. Repeat.

## Troubleshooting

1. **App does not start:** First read `.devcontainer/logs/bootstrap.log` and `.devcontainer/logs/streamlit.log` in the VS Code file explorer. The banner in every new terminal also dumps both logs inline on the first shell after each container start. If the bootstrap log shows a failed install, run `bash .devcontainer/post_create.sh` in a terminal to retry it; the script is idempotent and prints every step.
2. **Port not visible or stops working:** This is the most common Codespace issue. The fix depends on timing:
   1. If the port **never appeared**: Open the PORTS tab in VS Code, right-click port 8501, set visibility to "Public".
   2. If the port **stopped working after a while**: Restart Streamlit with `pkill -f 'streamlit run' && cd prototype && .venv/bin/streamlit run app.py`. The environment is pre-configured to bind to the correct address.
   3. If restarting does not help, run `mkdir -p ~/.streamlit && cp prototype/.streamlit/config.toml ~/.streamlit/config.toml` and then restart Streamlit.
   4. As a last resort: Stop the Codespace (Codespaces menu, top left, "Stop Codespace"), then restart it. Do **not** rebuild.
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

This list is the authoritative source of truth for what the AI assistant may use during Phase 4 code generation.

## AI assistant constraints

See [vibe_coding_constraints.md](vibe_coding_constraints.md) for the pinned tech stack, the blocklist of dependencies and services the AI assistant should not propose during vibe coding sessions in project mode, and the override clause. The Orchestrator loads that file automatically during environment detection, and Phase 4 references it as the authoritative constraint source.
