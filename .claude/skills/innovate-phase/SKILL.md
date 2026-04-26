---
name: innovate-phase
description: Run a specific phase (0 through 5) of the Vibe Innovation Framework. Reads the current ICD, executes the full phase prompt, writes the structured output back to the ICD. Use when the user wants to advance to the next phase, re-run a specific phase, or jump directly into Phase N because their starting TRL maps there. Trigger phrases include "Phase 2 starten", "weiter mit Phase 3", "run phase 1", "ideation phase", "do phase 4 build", "advance to validation".
argument-hint: "[phase-number]"
user-invocable: true
---

**Phase requested:** $ARGUMENTS

Valid phase numbers: 0, 1, 2, 3, 4, 5.

Read the following files:

1. `.claude/docs/orchestrator.md` (for process context and phase contracts)
2. The phase-specific prompt file:
   1. Phase 0: `.claude/docs/phase_0_strategic_framing.md`
   2. Phase 1: `.claude/docs/phase_1_problem_discovery.md`
   3. Phase 2: `.claude/docs/phase_2_ideation.md`
   4. Phase 3: `.claude/docs/phase_3_value_architecture.md`
   5. Phase 4: `.claude/docs/phase_4_build_and_validate.md`
   6. Phase 5: `.claude/docs/phase_5_decision.md`
3. `.claude/docs/principles_and_antipatterns.md`

Then:

1. Ask the user to provide the current ICD (or the relevant sections for this phase).
2. Run the input completeness check from Step 1 of the phase prompt.
3. Execute the full phase process.
4. Produce the structured ICD update and present it.
5. If a loop-back condition is triggered, flag it and recommend a mini-gate assessment.

Respond in the language the user is writing in.
