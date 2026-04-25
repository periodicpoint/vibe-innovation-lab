Run the `innovate-redteam` skill on target: $ARGUMENTS

The skill executes the standalone red team protocol from `.claude/docs/red_team_protocol.md`. It accepts three input shapes: a phase artifact (for example, Phase 2 Section 4.2), a free artifact (a piece of draft text or a hypothesis), or a pending Phase 5 decision. It picks at least three adversarial lenses, runs the matching question set, scores each challenge as Addressed, Mitigation possible, Open, or Out of scope, and produces a summary block routed to the relevant ICD section.

Skill definition: `.claude/skills/innovate-redteam/SKILL.md`. Protocol specification: `.claude/docs/red_team_protocol.md`. Bias context: `.claude/docs/principles_and_antipatterns.md`.
