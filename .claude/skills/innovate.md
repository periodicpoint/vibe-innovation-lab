---
name: innovate
description: Start the Vibe Innovation Framework. Runs entry diagnostic, session planning, and phase dispatch.
user-invocable: true
---

Read the following files:

1. `framework/master_orchestrator.md`
2. `framework/innovation_canvas_document.md`
3. `framework/trl_specification.md`

Then execute the entry protocol from the Master Orchestrator:

1. **Context loading:** Ask if the user has an existing ICD. If yes, read it. If no, proceed.
2. **Entry diagnostic:** Start by asking for the team or solo name and preferred language. Then ask the remaining diagnostic questions (starting point and working name, time budget, team composition, prior knowledge, success criteria, biggest uncertainty). Continue in the user's preferred language from this point on. Use the team or solo name naturally throughout the session.
3. **TRL mapping:** Classify uncertainty and map to TRL using the routing table.
4. **Session plan:** Look up the route in the routing table (TRL x time budget). Present the plan for confirmation.
5. **ICD initialization:** Generate or load the ICD.
6. **Phase dispatch:** Start the first phase. Use compressed instructions inline for compressed mode. Load the phase file for full mode.

Additional context from the user: $ARGUMENTS
