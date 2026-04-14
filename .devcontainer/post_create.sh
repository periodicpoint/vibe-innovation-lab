#!/usr/bin/env bash
# One-shot bootstrap for the Vibe Innovation Lab Codespace.
# Runs once on container creation via devcontainer.json postCreateCommand.
# Idempotent: safe to re-run after a manual rebuild.
#
# Stages are ordered strictly by dependency. Each stage is loud so that the
# Codespace creation log tells the user exactly where a failure happened.
#
#   1. Install uv (astral.sh) into $HOME/.local/bin.
#   2. Sync Python dependencies into prototype/.venv via `uv sync`. If uv is
#      absent or `uv sync` fails, fall back to `pip install -r
#      prototype/requirements.txt` into the container's system Python.
#   3. Verify that a streamlit binary is reachable from at least one of the
#      two locations. Hard fail if neither exists, because every later stage
#      assumes streamlit is installed.
#   4. Pin the Streamlit server config in ~/.streamlit so port 8501 binds
#      deterministically on first run.
#   5. Install the Claude Code CLI via npm. Optional: the workshop still
#      works without it via the paste-into-any-LLM fallback.

cd "$(dirname "$0")/.."  # jump to repo root, independent of caller cwd

echo "=== [1/5] Installing uv ==="
if command -v uv >/dev/null 2>&1; then
    echo "uv already present: $(uv --version)"
else
    curl -LsSf https://astral.sh/uv/install.sh | sh
fi
export PATH="$HOME/.local/bin:$PATH"

echo "=== [2/5] Installing Python dependencies ==="
uv_ok=0
if command -v uv >/dev/null 2>&1; then
    if (cd prototype && uv sync); then
        uv_ok=1
    else
        echo "uv sync failed, will fall back to pip"
    fi
else
    echo "uv not on PATH after install, will fall back to pip"
fi
if [ "$uv_ok" -eq 0 ]; then
    pip install -r prototype/requirements.txt
fi

echo "=== [3/5] Verifying streamlit is callable ==="
if [ -x prototype/.venv/bin/streamlit ]; then
    echo "OK: prototype/.venv/bin/streamlit"
    prototype/.venv/bin/streamlit --version
elif command -v streamlit >/dev/null 2>&1; then
    echo "OK: system streamlit on PATH"
    streamlit --version
else
    echo "FAIL: no streamlit binary after bootstrap" >&2
    echo "Inspect the Codespace creation log above for uv or pip errors." >&2
    exit 1
fi

echo "=== [4/5] Pinning Streamlit server config ==="
mkdir -p ~/.streamlit
cp prototype/.streamlit/config.toml ~/.streamlit/config.toml

echo "=== [5/5] Installing Claude Code CLI ==="
if npm install -g @anthropic-ai/claude-code; then
    echo "Claude Code CLI installed."
else
    echo "Claude Code CLI not installed. Fallback: paste framework/orchestrator.md into any LLM."
fi

echo "=== Bootstrap complete ==="
