---
name: innovate-phase
description: Run a specific phase of the Vibe Innovation Framework (0 through 5).
user-invocable: true
argument-hint: "[phase-number]"
---

**Phase requested:** $ARGUMENTS

Valid phase numbers: 0, 1, 2, 3, 4, 5.

Read the following files:

1. `${CLAUDE_SKILL_DIR}/../../docs/orchestrator.md` (for process context and phase contracts)
2. The phase-specific prompt file:
   1. Phase 0: `${CLAUDE_SKILL_DIR}/../../docs/phase_0_strategic_framing.md`
   2. Phase 1: `${CLAUDE_SKILL_DIR}/../../docs/phase_1_problem_discovery.md`
   3. Phase 2: `${CLAUDE_SKILL_DIR}/../../docs/phase_2_ideation.md`
   4. Phase 3: `${CLAUDE_SKILL_DIR}/../../docs/phase_3_value_architecture.md`
   5. Phase 4: `${CLAUDE_SKILL_DIR}/../../docs/phase_4_build_and_validate.md`
   6. Phase 5: `${CLAUDE_SKILL_DIR}/../../docs/phase_5_decision.md`
3. `${CLAUDE_SKILL_DIR}/../../docs/principles_and_antipatterns.md`

Then:

1. Ask the user to provide the current ICD (or the relevant sections for this phase).
2. Run the input completeness check from Step 1 of the phase prompt.
3. Execute the full phase process.
4. Produce the structured ICD update and present it.
5. If a loop-back condition is triggered, flag it and recommend a mini-gate assessment.

Respond in the language the user is writing in.
