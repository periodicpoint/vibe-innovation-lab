Run the `innovate-phase` skill for phase $ARGUMENTS.

The skill validates the phase number (0 through 5), reads the current ICD, executes the corresponding phase prompt from `.claude/docs/phase_$ARGUMENTS_*.md`, and writes the phase output back to the ICD with proper section markers.

Skill definition: `.claude/skills/innovate-phase/SKILL.md`. Phase prompts: `.claude/docs/phase_0_strategic_framing.md` through `.claude/docs/phase_5_decision.md`. Loop-back rules: `.claude/docs/orchestrator.md` and `.claude/docs/principles_and_antipatterns.md`.
