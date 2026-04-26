---
name: chaos
description: Run the divergent, psychodelic, chaos protocol. A deliberate cognitive jolt that emits heterogeneous fragments (facts, poetry, multilingual shards, silence, non-sequiturs) to dissolve calcified thought patterns and surface genuinely new associations. Use when divergence has collapsed, the user is stuck, convergent thinking has locked the option space, all ideas sound alike, or the team is going in circles. Trigger phrases include "ich komme nicht weiter", "wir drehen uns im Kreis", "alle Ideen klingen gleich", "I am stuck", "break the pattern", "shake things up", "we need a jolt".
argument-hint: "[focus-area]"
user-invocable: true
---

Read the following file in full before any other action.

1. `.claude/docs/chaos_protocol.md`

Then execute the protocol exactly as specified there. The protocol is self-contained: triggers, warning to the user, exit handling, six numbered protocol steps, fragment template, boundaries, and output specification.

Operating notes for this skill.

1. **Invocation context.** This skill can be invoked standalone (the user typed `/chaos` outside any phase) or from any phase. The protocol document handles both cases in its handoff step. If the conversation is already inside a Phase 2 run, treat the invocation as Phase 2 Step 2.5. Otherwise treat it as standalone.
2. **Working language.** Detect the user's working language from their last message and translate the warning paragraph and all instruction lines into that language. Keep the structure and tone faithful. Do not translate fragment content unless it would defeat its purpose.
3. **Single use per session.** If the protocol has already run once in the current session, decline a second run with one line: "Chaos protocol already used this session. The effect dulls on repetition. Returning to standard divergence." Then hand control back without further prompting.
4. **Exit tokens.** Honor `stop`, `exit`, `raus`, `enough`, and any clear equivalent in the working language. On exit, follow the soft-landing rule in the protocol document.
5. **No advertising.** Do not announce the existence of this skill in phase openings, status reports, or unsolicited summaries. Discoverability is by trigger only, as defined in the protocol document.

Additional context from the user: $ARGUMENTS
