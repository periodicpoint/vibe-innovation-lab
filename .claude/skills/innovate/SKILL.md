---
name: innovate
description: Start the Vibe Innovation Framework. Runs entry diagnostic, session planning, and phase dispatch.
user-invocable: true
---

Read the following files:

1. `framework/orchestrator.md`
2. `framework/innovation_canvas_document.md`
3. `framework/trl_specification.md`

Then execute the entry protocol from the Orchestrator:

1. **Language:** Ask for the preferred language first, before any other interaction. Present the question in multiple languages (English, German, French, Spanish) so non-native speakers understand. Switch to the chosen language for all further interaction.
2. **Identity:** Ask for the team or solo name. Use the name naturally throughout the session.
3. **File availability:** Since Claude Code has file system access, verify that the referenced framework files exist in `framework/`. Inform the user if any are missing.
4. **Context loading:** Ask if the user has an existing ICD. If yes, read it. If no, proceed.
5. **Entry diagnostic:** Ask the diagnostic questions (starting point and working name, team composition, prior knowledge, success criteria, biggest uncertainty).
6. **TRL mapping:** Classify uncertainty and map to TRL using the entry phase table in the Orchestrator.
7. **Session plan:** Assemble the phase sequence from the entry TRL through the target exit TRL. Present the plan for confirmation.
8. **ICD initialization:** Generate or load the ICD.
9. **Phase dispatch:** Start the first phase by loading its dedicated file. Each phase closes when its output contract is satisfied.

Additional context from the user: $ARGUMENTS
