---
name: innovate-export
description: Render derived artifacts from the Innovation Canvas Document. Produces the two-page executive summary, an extracted decision log, the artifact specification handoff, or a status report suitable for sharing outside the team. Use at Phase 5 exit, before a stakeholder presentation, or whenever a derived view is needed.
user-invocable: true
argument-hint: "[summary|decision-log|artifact-spec|status] [output-path]"
---

**Export requested:** $ARGUMENTS

Read the following files in order before acting.

1. `${CLAUDE_SKILL_DIR}/../../docs/innovation_canvas_document.md` (source of record for ICD section semantics)
2. `${CLAUDE_SKILL_DIR}/../../docs/executive_summary_template.md` (the two-page exec summary template, used by the `summary` action)
3. `${CLAUDE_SKILL_DIR}/../../docs/trl_specification.md` (only when the export needs TRL labels)

The skill is read-only with respect to the ICD. It produces derived files in the working directory. It does not modify Sections 1 through 9 of the ICD itself.

## Actions

### summary

1. Read the current ICD (Markdown preferred, JSON fallback).
2. Render the executive summary into `executive_summary.md` following `executive_summary_template.md` verbatim. Cut evidence, not structure. The two-page constraint is binding.
3. Cite ICD section numbers in parentheses for every load-bearing claim.
4. Refuse to render if the gate decision in Section 6.1 is missing or marked *provisional*. The exec summary is a Phase 5 exit artifact, not a draft.
5. Render Kill and Pivot summaries with the same care as Go summaries. Negative results are evidence.

### decision-log

1. Read ICD Section 8 (Decision log).
2. Produce `decision_log.md` as a chronological table with all entries grouped by phase. Include a leading paragraph that states how many decisions were Strategic, Product, Technical, and Institutional.
3. For Technical and Institutional entries, cross-reference Section 5.2 fields (Tech stack, Architecture overview) where applicable.
4. Flag any entry where Alternatives or Implications is empty for Technical or Institutional types. The prose ICD specification requires both fields populated for these types.

### artifact-spec

1. Read ICD Section 5.2 (Artifact specification).
2. Produce `artifact_specification.md` as a self-contained handoff document for the receiving owner (engineering team, product team, institutional owner, policy sponsor).
3. Include all 12 fields with their current values. Mark TBD entries explicitly. Mark Validated, Assumed, and Deferred items per the ICD's marking convention.
4. If Phase 5 has run and the artifact specification is finalized, set the document's status header to *Final*. Otherwise *Draft*.

### status

1. Read the current ICD.
2. Produce `status.md` summarizing: project identity, current TRL, current phase, top 5 assumptions by priority score with their status, last 3 decision log entries, last 3 iteration log entries, and the recommended next step.
3. The output is shareable: it must read coherently to a leadership stakeholder who has not seen the ICD.

### Default

If the argument is empty, ask which of the four actions to run. Do not pick silently.

## Output conventions

1. All exports use Pandoc Markdown. UTF-8 encoding. Filenames are lowercase with underscores, no diacritics or special characters.
2. Date stamps follow the global CalVer convention from `CLAUDE.md`: `YYYY-MM-DDThh:mm:ss+hh:mm`.
3. Every numeric claim in the export traces back to a specific ICD field. Do not invent numbers.
4. The export does not duplicate the ICD verbatim. It distills, references, and reorders.
5. If the working directory is under git, stage the exported file and offer to commit. Do not commit without explicit confirmation.

Respond in the language the user is writing in.
