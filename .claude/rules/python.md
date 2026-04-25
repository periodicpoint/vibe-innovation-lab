---
paths:
  - "prototype/**/*.py"
---

# Python conventions for prototype/

1. Use uv as package manager and task runner. Never pip directly inside the project. The pip fallback path documented in `prototype/README.md` exists only for hosting platforms without uv.
2. Target Python 3.10. The pinned interpreter is set in `prototype/pyproject.toml`.
3. Use ruff for formatting and linting. Configuration lives in `prototype/pyproject.toml`. Run `mise run format` to apply.
4. Type annotations on all function signatures. Prefer `from __future__ import annotations` at the top of every module.
5. Use `pathlib.Path` for file system operations. Never `os.path`.
6. Use f-strings for string formatting. Never `.format()` or percent formatting.
7. The Streamlit scaffold `prototype/app.py` is a special case. The `F401` ignore for unused imports is intentional. See `prototype/pyproject.toml` for the rationale.
8. New runtime dependencies require updating `pyproject.toml`, then `uv lock` and `uv export --format requirements-txt --no-hashes --no-emit-project --output-file requirements.txt`. Keep `requirements.txt` in sync.
9. The Streamlit allowlist for vibe coding lives in `prototype/vibe_coding_constraints.md`. New libraries beyond the allowlist need an explicit override.
