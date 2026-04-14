#!/usr/bin/env bash
# One-shot bootstrap for the Vibe Innovation Lab Codespace.
# Runs once on container creation via devcontainer.json postCreateCommand.
# Idempotent: safe to re-run after a manual rebuild.
#
# This script is deliberately loud and deliberately soft. Loud so the user
# gets a complete trace of what happened. Soft so a partial failure does
# not mark the entire Codespace creation as failed in the VS Code UI —
# post_start.sh can self-heal on first start.
#
# Output mirroring: every line written to stdout or stderr is also written
# to $REPO/.vbi_logs/bootstrap.log via `tee` in a process substitution.
# Logs live in the workspace folder, not in /tmp, so they are visible in
# the VS Code file explorer and survive the container's tmpfs quirks.
# The banner in post_start.sh points users at these files and auto-cats
# them on the first interactive shell after each container start.
#
# Stage order:
#   0. Print environment diagnostics (cwd, PATH, python, pip, npm).
#   1. Install uv (astral.sh). Fall through on failure.
#   2. Install Python dependencies: try `uv sync`, fall back to
#      `pip install -r requirements.txt`, fall back to
#      `pip install streamlit pandas` as a last resort.
#   3. Report whether a streamlit binary is now reachable. No hard exit.
#   4. Pin the Streamlit server config in ~/.streamlit.
#   5. Install the Claude Code CLI via npm. Optional.

# Jump to repo root regardless of caller cwd. Do this before the exec
# redirect so the log path below is resolved relative to the workspace.
cd "$(dirname "$0")/.." || cd "${CODESPACE_VSCODE_FOLDER:-/workspaces/vibe-innovation-lab}"
mkdir -p .vbi_logs

# Mirror everything to .vbi_logs/bootstrap.log. `tee` in a process
# substitution means the VS Code creation log panel still sees the output
# and a manual re-run in a terminal shows output live, while we also get
# a persistent file to cat on demand.
exec > >(tee .vbi_logs/bootstrap.log) 2>&1

# Trace every command for the debug phase. Remove once the autorun is
# stable. This turns the log into a forensic record of exactly what ran.
set -x

# Clear the "logs already shown" flag so the banner cats the fresh logs
# on the next interactive shell. Also clear any legacy /tmp flag.
rm -f ~/.vbi_logs_shown /tmp/vbi_logs_shown 2>/dev/null || true

echo "=== post_create.sh starting at $(date -u +%Y-%m-%dT%H:%M:%SZ) ==="

echo "=== [0/5] Environment diagnostics ==="
echo "cwd:      $(pwd)"
echo "user:     $(whoami)"
echo "HOME:     $HOME"
echo "PATH:     $PATH"
echo "python:   $(command -v python || echo none)"
echo "python3:  $(command -v python3 || echo none)"
echo "pip:      $(command -v pip || echo none)"
echo "npm:      $(command -v npm || echo none)"
echo "prototype dir contents:"
ls -la prototype/ 2>&1 || echo "  prototype/ not found"

echo "=== [1/5] Installing uv ==="
if command -v uv >/dev/null 2>&1; then
    echo "uv already present: $(uv --version)"
else
    curl -LsSf https://astral.sh/uv/install.sh | sh || echo "uv installer returned non-zero, continuing"
fi
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"
echo "uv after install: $(command -v uv || echo none)"

echo "=== [2/5] Installing Python dependencies ==="
uv_ok=0
if command -v uv >/dev/null 2>&1; then
    if (cd prototype && uv sync); then
        uv_ok=1
        echo "uv sync: OK"
    else
        echo "uv sync: FAILED (exit $?)"
    fi
else
    echo "uv not on PATH, skipping uv sync"
fi

if [ "$uv_ok" -eq 0 ]; then
    echo "Fallback: pip install -r prototype/requirements.txt"
    pip install -r prototype/requirements.txt || \
        python3 -m pip install -r prototype/requirements.txt || \
        echo "pip requirements install failed, trying last-resort single-package install"

    if ! command -v streamlit >/dev/null 2>&1; then
        echo "Last-resort: pip install streamlit pandas"
        pip install streamlit pandas || \
            python3 -m pip install streamlit pandas || \
            echo "last-resort pip install failed"
    fi
fi

echo "=== [3/5] Streamlit availability report ==="
ls -la prototype/.venv/bin/ 2>&1 | head -30 || true
if [ -x prototype/.venv/bin/streamlit ]; then
    echo "OK: prototype/.venv/bin/streamlit"
    prototype/.venv/bin/streamlit --version || true
elif command -v streamlit >/dev/null 2>&1; then
    echo "OK: system streamlit at $(command -v streamlit)"
    streamlit --version || true
else
    echo "WARN: no streamlit binary found after all install attempts"
    echo "WARN: post_start.sh self-heal will retry on first Codespace start"
fi

echo "=== [4/5] Pinning Streamlit server config ==="
mkdir -p ~/.streamlit
cp prototype/.streamlit/config.toml ~/.streamlit/config.toml || \
    echo "WARN: could not copy prototype/.streamlit/config.toml"
ls -la ~/.streamlit/ 2>&1 || true

echo "=== [5/5] Installing Claude Code CLI ==="
if command -v npm >/dev/null 2>&1; then
    if npm install -g @anthropic-ai/claude-code; then
        echo "Claude Code CLI installed at $(command -v claude || echo 'unknown')"
    else
        echo "Claude Code CLI not installed. Fallback: paste framework/orchestrator.md into any LLM."
    fi
else
    echo "npm not available, skipping Claude Code CLI."
fi

echo "=== post_create.sh finished at $(date -u +%Y-%m-%dT%H:%M:%SZ) ==="
echo "=== full log: .vbi_logs/bootstrap.log ==="
ls -la .vbi_logs/ 2>&1 || true
exit 0
