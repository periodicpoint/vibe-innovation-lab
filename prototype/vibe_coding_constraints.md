# Vibe coding constraints: prototype environment

This file defines the hard constraints for LLM-generated code and LLM suggestions when a session runs in project mode against this repository. It is the authoritative source consulted by the Orchestrator during environment detection and by Phase 4 during tech stack selection. The constraints apply to every phase that produces code.

**Mirror copy for chat and upload mode.** A verbatim-equivalent inline copy of the pinned stack, the blocklist, the override clause, and the escape hatch also lives in [framework/orchestrator.md](../framework/orchestrator.md), in the section *Vibe coding constraints (inline reference)*. That mirror is the fallback source for users who paste the Orchestrator into a chat-only LLM without attaching this file. Any change to the constraints here must be replicated in the Orchestrator inline section in the same commit. Out-of-sync copies will silently diverge between workshop delivery modes.

The goal is to match the pre-configured Codespace environment, prevent workshop incidents caused by dependency installation or long-lived service daemons, and keep non-technical participants in a working state for the full duration of the session.

## Scope of application

These constraints activate when all of the following are true:

1. The session runs in project mode as defined in [framework/orchestrator.md](../framework/orchestrator.md), Step 2 (Environment detection).
2. The working directory is this repository or a fork of it.
3. The current phase is Phase 4 (Build and validate).

Outside these conditions the constraints are advisory only. In upload mode and chat mode the LLM cannot detect the environment reliably and should fall back to the general tech stack guidance in the Phase 4 prompt.

## Pinned stack

In project mode the tech stack is not subject to LLM selection. It is pinned as follows.

1. **Target file.** All generated code goes into `prototype/app.py`, replacing the current content. Do not create new files unless the team explicitly requests one and the request is necessary for the experiment. Do not create helper modules, package directories, or separate entry points.
2. **Runtime.** Streamlit. The app runs via the auto-start task in [.vscode/tasks.json](../.vscode/tasks.json) on port 8501. No alternative runtimes such as Flask, FastAPI, Vue, React, Express, Django, plain Python scripts, or Jupyter notebooks.
3. **Interpreter.** Python 3.10 inside the devcontainer, invoked via `uv run` where available or the pip-fallback virtualenv otherwise. The team does not need to manage this.
4. **Available libraries.** Only the libraries pre-installed by the devcontainer are permitted. The authoritative list is maintained in [prototype/README.md](README.md), section *Installed libraries*. Treat the README as the source of truth. If a library you would like to use is not in that list, it is blocked by default (see the Blocklist section below) and requires an explicit override from the team.
5. **Data persistence.** Use in-memory structures, Streamlit session state, or the Python standard library `sqlite3` module for small local databases. No external database servers, no cloud storage, no file mounts outside the repository.
6. **LLM calls.** If the experiment requires an LLM call, use a hosted API via a client already listed in [prototype/README.md](README.md). If no such client is listed, flag the need as a blocker. Do not install new clients and do not set up local model runners (see blocklist item 3).

## Blocklist

Do not propose, generate, or include any of the following in project mode. Each item below has been observed to cause workshop incidents, either by consuming more time than the phase budget, by breaking the auto-start task, by introducing secrets the team does not have, or by leaving the Codespace in an unrecoverable state. The team may override a single item by explicit request (see the Override clause below).

1. **New Python dependencies.** Do not run or suggest `pip install`, `uv add`, `uv pip install`, `poetry add`, `pipenv install`, or any equivalent. Do not edit `pyproject.toml`, `requirements.txt`, or `uv.lock`.
2. **System packages.** Do not run or suggest `apt`, `apt-get`, `brew`, `dnf`, `pacman`, `sudo`, or any other operating system package manager.
3. **Local LLM runners.** Do not install or run `ollama`, `llama.cpp`, `llamafile`, `lm-studio`, `text-generation-webui`, `vllm`, or any similar local model server. Downloading and configuring a local model in a workshop setting consumes more time than any reasonable Phase 4 attempt can recover.
4. **Heavy ML frameworks beyond the pre-installed set.** Do not introduce `tensorflow`, `pytorch`, `transformers`, `jax`, `keras`, `xgboost`, `lightgbm`, `scikit-learn`, or any model-download helper such as `huggingface_hub.snapshot_download` or `torch.hub.load`, unless the library is already present in the README library list. If the experiment genuinely needs an ML model, prefer a hosted API call over a local model.
5. **Database servers.** Do not propose `postgres`, `mysql`, `mariadb`, `mongodb`, `redis`, `elasticsearch`, or anything that runs as a long-lived daemon and needs configuration. The standard library `sqlite3` module is permitted for ephemeral local storage.
6. **Container tools.** Do not propose `docker`, `podman`, `docker-compose`, `kubernetes`, `kind`, or any containerization layer on top of the Codespace. The Codespace is already the runtime container.
7. **Background services and daemons.** Do not propose `systemd`, `supervisord`, cron, or any other long-running process beyond the Streamlit app itself.
8. **External APIs that require unavailable credentials.** Do not propose calling services that need API keys, OAuth tokens, or service accounts the team has not already declared in ICD Section 1.2 (Constraints). Asking the team to register for a new external service during the workshop is blocked.
9. **Shell or environment reconfiguration that requires a restart.** Do not propose sourcing new rc files, changing shell defaults, rebuilding the devcontainer, restarting the Codespace, or any other step that would lose the running Streamlit app and the running task terminal.
10. **Large file downloads.** Do not propose pulling datasets, model weights, or binary artifacts larger than a few megabytes. Prefer synthetic data, small fixtures, or public CSV files inlined as code.

## Override clause

The team may override any single blocklist item by explicit request. *Explicit* means the team says, verbatim or close to verbatim, "install X", "add library Y", or "use service Z" in the chat. Implicit requests such as "we need a database" do not count as an override and must be redirected to an allowed alternative (in that example the standard library `sqlite3` module or Streamlit session state).

When an override is triggered, proceed in the following order:

1. Acknowledge the override explicitly. Example phrasing: "Override accepted. I will now install X. This is outside the default project-mode constraints."
2. Warn the team about the likely consequences: additional setup time, possible breakage of the Streamlit auto-start task, the need to commit a modified dependency file, and the reproducibility impact on other teams working in parallel.
3. Proceed only after the team confirms they understand the consequences.
4. Record the override in ICD Section 8 (Decision log) as a Technical decision with the rationale "Override of `prototype/vibe_coding_constraints.md` at team request."

## Escape hatch

If the dominant Phase 4 assumption genuinely cannot be tested under the pinned stack and no single override resolves it, this is not a code problem. It is a scoping problem. Stop code generation, do not attempt to work around the constraints one blocklist item at a time, and do one of the following:

1. Recommend a Phase 3 loop-back to revise the experiment design so it can be tested within the pinned stack.
2. Escalate to workshop leadership for explicit authorization to work outside the pinned environment, and proceed only with that authorization in writing.

## File references

1. [prototype/README.md](README.md): authoritative list of installed libraries, Codespace startup behavior, and Streamlit auto-start task.
2. [framework/orchestrator.md](../framework/orchestrator.md): Step 2 (Environment detection) loads this file in project mode.
3. [framework/phase_4_build_and_validate.md](../framework/phase_4_build_and_validate.md): Step 3 (Tech stack selection) references this file as the authoritative source in project mode.
