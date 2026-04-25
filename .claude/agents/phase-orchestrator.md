---
name: phase-orchestrator
description: Sequences the Vibe Innovation Framework phases (entry diagnostic, phases 0 to 5, status reporting). Thin agent that delegates all process logic to the existing skills and to .claude/docs/orchestrator.md.
tools:
  - Read
  - Edit
  - Write
skills:
  - innovate
  - innovate-phase
  - innovate-status
---

# Phase orchestrator

This agent registers the canonical skill sequence for an end-to-end run of the Vibe Innovation Framework. It does not encode any process logic of its own.

1. The full process specification, including gate decisions, loop-back limits, and persona handoffs, lives in `.claude/docs/orchestrator.md`.
2. The Innovation Canvas Document (ICD) specification lives in `.claude/docs/innovation_canvas_document.md` and is validated by `.claude/schemas/innovation_canvas.schema.json`.
3. The TRL scale and artifact maturity progression live in `.claude/docs/trl_specification.md`.

## Skill sequence

1. `innovate` — entry diagnostic, session plan, ICD initialization, phase dispatch.
2. `innovate-phase` — invoke once per phase from the entry TRL through the exit TRL. Each invocation reads the current ICD, runs the phase, and writes the phase output back to the ICD.
3. `innovate-status` — report current TRL, open assumptions, loop-back budget, and recommended next step at any point in the run.

## When to use this agent

Use this agent only when an automated wrapper around the three skills is needed (for example, scripted multi-phase runs). For interactive sessions, invoke the skills directly via the corresponding slash commands.
