Run the `innovate-icd` skill with arguments: $ARGUMENTS

The skill manages the Innovation Canvas Document lifecycle: `init` (create both Markdown and JSON surfaces), `validate` (check JSON against `innovation_canvas.schema.json`), `show` (render a phase-grouped status view), `diff` (compare against a baseline), `save` (sync, log, and stage). Without an argument, the skill asks which action to perform.

Skill definition: `.claude/skills/innovate-icd/SKILL.md`. ICD specification: `.claude/docs/innovation_canvas_document.md`. JSON schema: `.claude/schemas/innovation_canvas.schema.json`. Validator task: `mise run validate-icd <path>`.
