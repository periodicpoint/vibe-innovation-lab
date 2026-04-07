# Vibe Innovation Lab

General-purpose innovation framework for human-AI co-creation. Covers TRL -2 (pre-concept exploration) through TRL 4 (validated learning). See `framework/trl_specification.md` for the full extended TRL scale.

## Default behavior

When a user starts a conversation in this repository without a specific technical request (code fix, file edit, and so on), assume they want to use the innovation framework. Proactively offer to run the entry diagnostic:

1. Read `framework/master_orchestrator.md` and `framework/innovation_canvas_document.md`.
2. Ask whether they have an existing Innovation Canvas Document (ICD).
3. Run the entry diagnostic from the Master Orchestrator: starting point, team, constraints, prior knowledge, success criteria, biggest uncertainty.
4. Profile the uncertainty and map it to a TRL entry point (see table below).
5. Initialize the ICD if none exists.
6. Dispatch to the recommended phase.

This diagnostic is also available explicitly via `/innovate`.

## TRL entry mapping

See `framework/trl_specification.md` for the full extended TRL scale definition.

| Situation | TRL | Entry phase |
|---|---|---|
| No topic, only a general direction | -2 | Phase 0: Strategic framing |
| Problem space mapped, no specific problem | -1 | Phase 1: Problem discovery |
| Problem defined, no solution idea | 0 | Phase 2: Ideation |
| Solution concept exists, value unclear | 1 | Phase 3: Value architecture |
| Value articulated, no prototype | 2 | Phase 4: Build and validate |
| Prototype validated, decision pending | 4 | Phase 5: Decision |

## Repository structure

1. `framework/` contains the innovation process: Master Orchestrator, Innovation Canvas Document (ICD), TRL specification, 6 phase prompts, principles and anti-patterns.
2. `prototype/` contains Streamlit starter infrastructure for rapid prototyping (app.py, requirements.txt).
3. `.claude/skills/` contains Claude Code skill definitions (`/innovate`, `/innovate-phase`, `/innovate-status`).

## Conventions

1. Framework and documentation: English.
2. All other conventions follow the global CLAUDE.md.

## Innovation process phases

1. Phase 0: Strategic framing (TRL -2 to -1)
2. Phase 1: Problem discovery (TRL -1 to 0)
3. Phase 2: Ideation (TRL 0 to 1)
4. Phase 3: Value architecture (TRL 1 to 2)
5. Phase 4: Build and validate (TRL 2 to 4)
6. Phase 5: Decision (TRL 4)
