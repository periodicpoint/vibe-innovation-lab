---
name: innovate-status
description: Show current innovation project status: TRL, active phase, open assumptions, loop-back budget, and recommended next step. Use when the user wants a quick situational read, asks where the project stands, needs a status report between sessions, or before deciding the next move. Trigger phrases include "status", "wo stehen wir", "was ist offen", "current TRL", "what is next", "Lagebild".
user-invocable: true
---

Read the current ICD file. If no ICD file exists in the working directory, ask the user to paste their current ICD.

Then read `.claude/docs/trl_specification.md` for advancement criteria.

Produce a status report:

```
PROJECT STATUS
==============
Project: [name from ICD Section 1.1]
Current TRL: [number from ICD Section 1.3]
Current phase: [from ICD Section 1.1]
Last updated: [from ICD header]

Assumptions:
- Validated: [count] ([list IDs])
- Falsified: [count] ([list IDs])
- Untested: [count] ([list IDs])

Loop-back budget:
- Intra-phase iterations used: [N] of 2
- Inter-phase loop-backs used: [N] of 5
- Kill threshold assumptions: [list any twice-falsified]

TRL advancement:
- Current TRL: [number]
- Next TRL: [number]
- Missing criteria: [list from trl_specification.md]

Recommended next step: [specific action]
```

Respond in the language the user is writing in.
