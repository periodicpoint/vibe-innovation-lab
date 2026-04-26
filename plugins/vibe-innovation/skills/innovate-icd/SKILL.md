---
name: innovate-icd
description: Manage the Innovation Canvas Document (ICD). Initialize, validate against the JSON schema, render a Markdown view, diff against a previous version, or save. Use whenever the user asks to start, check, sync, or persist their ICD between sessions.
user-invocable: true
argument-hint: "[init|validate|show|diff|save] [path]"
---

**Action requested:** $ARGUMENTS

Read the following files before acting.

1. `${CLAUDE_SKILL_DIR}/../../docs/innovation_canvas_document.md` (prose specification, source of record for sections and field semantics)
2. `${CLAUDE_SKILL_DIR}/../../schemas/innovation_canvas.schema.json` (JSON schema that the structured ICD must conform to)
3. `${CLAUDE_SKILL_DIR}/../../docs/orchestrator.md` (only the sections referenced by the requested action)

The ICD has two equivalent surfaces. The Markdown form (`innovation_canvas_document.md`-shaped) is the human-facing artifact. The JSON form (validated by `innovation_canvas.schema.json`) is the machine-checkable artifact. Keep them in sync: when one is updated, derive the other.

## Actions

The argument selects one action. Without an argument, ask which action the user wants.

### init

1. Ask for the project name and a one-sentence description if not already known.
2. Create both files in the working directory:
   1. `icd.md` from the template in `innovation_canvas_document.md`, with date_created set to today.
   2. `icd.json` matching the schema, populated with the same identity fields.
3. Initialize the changelog with one entry: today's date, phase `Init`, changes `Initial creation`.
4. Confirm creation and offer to start the Orchestrator entry diagnostic.

### validate

1. Locate the ICD JSON file. Default search order: `icd.json`, `innovation_canvas.json`, then any `*.icd.json` in the working directory.
2. If `mise` is available, run `mise run validate-icd <path>` and report the result.
3. If `mise` is not available, run the equivalent Python check inline using `jsonschema`. If `jsonschema` is missing, advise the user to install it via `uv pip install jsonschema`.
4. On failure, report the failing JSON path and the rule that was violated. Do not auto-correct unless the user asks.

### show

1. Read the current ICD (Markdown preferred, JSON fallback).
2. Produce a compact rendering grouped by phase: Meta, Situation map (Phase 0), Problem space (Phase 1), Solution space (Phase 2 and 3), Validation space (Phase 4), Decision space (Phase 5), Iteration log, Decision log.
3. For each section, mark its completion state against the gate checklist in `principles_and_antipatterns.md`: Complete, Partial, or Empty. Cite the missing items for Partial sections.

### diff

1. Compare the current ICD against a baseline. The baseline is, in order of preference: a path supplied as a second argument, the most recent commit on the current branch (`git show HEAD:icd.md` and `git show HEAD:icd.json`), or a user-supplied snapshot.
2. Report changes per section. Use plain prose, not raw diff output, unless the user asks for the raw diff.
3. Flag any section that changed without a corresponding changelog entry.

### save

1. Verify both surfaces (Markdown and JSON) are present and synchronized.
2. Update `Last updated` in the Markdown header and the changelog with today's date and a one-line summary of what was added or revised since the last save.
3. If the project lives under git, stage the ICD files and offer to create a commit. Do not commit without explicit confirmation.
4. Run validate as a final check. Report any schema violations before declaring the save successful.

## Conventions

1. The ICD template structure (headings, field names) is in English, as specified in `innovation_canvas_document.md`. Content language follows the team's working language.
2. Do not edit the ICD silently. Every write is announced and logged in Section 9 (Changelog).
3. Sections marked `[Phase N output]` are populated by their owning phase. This skill does not run phase logic. For phase work, use `/innovate-phase`.
4. If the schema and the prose specification disagree, the prose specification (`innovation_canvas_document.md`) is the source of record. Flag the disagreement to the user.

Respond in the language the user is writing in.
