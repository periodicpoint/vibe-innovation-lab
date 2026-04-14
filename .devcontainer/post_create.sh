#!/usr/bin/env bash
# One-shot bootstrap for the Vibe Innovation Lab Codespace.
# Runs once on container creation via devcontainer.json postCreateCommand.
# Idempotent: safe to re-run after a manual rebuild.
#
# This script is deliberately loud and deliberately soft. Loud because the
# Codespace creation log is the only place a non-programmer workshop user
# will see a failure. Soft because exit 1 here marks the entire Codespace
# creation as failed in the VS Code UI, which is worse than a partial
# success that post_start.sh can retry. Every stage ends with `|| true`
# or an explicit status check that does not propagate the failure, and
# the script always ends with `exit 0`.
#
# Stage order:
#   1. Print environment diagnostics so log readers can see cwd, PATH,
#      python, pip, npm availability before any install runs.
#   2. Install uv (astral.sh). Fall through on failure.
#   3. Install Python dependencies: try `uv sync`, fall back to
#      `pip install -r requirements.txt`, fall back to `python -m pip
#      install streamlit` as a last resort so the app can at least boot
#      even when the full requirements file cannot resolve.
#   4. Report whether a streamlit binary is now reachable. No hard exit.
#   5. Pin the Streamlit server config in ~/.streamlit.
#   6. Install the Claude Code CLI via npm. Optional.

cd "$(dirname "$0")/.." || cd "${CODESPACE_VSCODE_FOLDER:-/workspaces/vibe-innovation-lab}"

echo "=== [0/6] Environment diagnostics ==="
echo "cwd:      $(pwd)"
echo "user:     $(whoami)"
echo "HOME:     $HOME"
echo "PATH:     $PATH"
echo "python:   $(command -v python || echo none)"
echo "python3:  $(command -v python3 || echo none)"
echo "pip:      $(command -v pip || echo none)"
echo "npm:      $(command -v npm || echo none)"
echo "prototype dir:"
ls -la prototype/ 2>&1 || echo "  prototype/ not found"

echo "=== [1/6] Installing uv ==="
if command -v uv >/dev/null 2>&1; then
    echo "uv already present: $(uv --version)"
else
    curl -LsSf https://astral.sh/uv/install.sh | sh || echo "uv installer returned non-zero, continuing"
fi
export PATH="$HOME/.local/bin:$HOME/.cargo/bin:$PATH"
echo "uv after install: $(command -v uv || echo none)"

echo "=== [2/6] Installing Python dependencies via uv sync ==="
uv_ok=0
if command -v uv >/dev/null 2>&1; then
    if (cd prototype && uv sync); then
        uv_ok=1
        echo "uv sync: OK"
    else
        echo "uv sync: FAILED"
    fi
else
    echo "uv not on PATH, skipping uv sync"
fi

if [ "$uv_ok" -eq 0 ]; then
    echo "=== [3/6] Fallback: pip install -r prototype/requirements.txt ==="
    pip install -r prototype/requirements.txt || \
        python3 -m pip install -r prototype/requirements.txt || \
        echo "pip requirements install failed, will try single-package fallback"

    if ! command -v streamlit >/dev/null 2>&1; then
        echo "=== Last-resort fallback: pip install streamlit ==="
        pip install streamlit pandas || \
            python3 -m pip install streamlit pandas || \
            echo "last-resort pip install failed"
    fi
fi

echo "=== [4/6] Streamlit availability report ==="
if [ -x prototype/.venv/bin/streamlit ]; then
    echo "OK: prototype/.venv/bin/streamlit"
    prototype/.venv/bin/streamlit --version || true
elif command -v streamlit >/dev/null 2>&1; then
    echo "OK: system streamlit on PATH at $(command -v streamlit)"
    streamlit --version || true
else
    echo "WARN: no streamlit binary found after all install attempts"
    echo "WARN: post_start.sh self-heal will retry on first Codespace start"
    echo "WARN: if this persists, inspect the log above for the first error"
fi

echo "=== [5/6] Pinning Streamlit server config ==="
mkdir -p ~/.streamlit
cp prototype/.streamlit/config.toml ~/.streamlit/config.toml || \
    echo "WARN: could not copy prototype/.streamlit/config.toml"

echo "=== [6/6] Installing Claude Code CLI ==="
if command -v npm >/dev/null 2>&1; then
    if npm install -g @anthropic-ai/claude-code; then
        echo "Claude Code CLI installed."
    else
        echo "Claude Code CLI not installed. Fallback: paste framework/orchestrator.md into any LLM."
    fi
else
    echo "npm not available, skipping Claude Code CLI."
fi

echo "=== Bootstrap complete (exit 0 unconditionally) ==="
exit 0
