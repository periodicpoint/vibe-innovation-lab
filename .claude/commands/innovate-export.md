Run the `innovate-export` skill with arguments: $ARGUMENTS

The skill renders derived artifacts from the Innovation Canvas Document. Four actions: `summary` (the two-page executive summary from `executive_summary_template.md`, valid only after Phase 5 closes), `decision-log` (extracted Section 8 with cross-references to Section 5.2), `artifact-spec` (the 12-field handoff document for the receiving owner), `status` (a shareable leadership-facing project state). Read-only with respect to the ICD itself.

Skill definition: `.claude/skills/innovate-export/SKILL.md`. Exec summary template: `.claude/docs/executive_summary_template.md`. ICD specification: `.claude/docs/innovation_canvas_document.md`.
