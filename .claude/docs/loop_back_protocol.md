# Loop-back protocol

A runbook for the mini-gate assessment that any phase, the team, or the LLM can trigger when evidence suggests an earlier phase needs revision. The orchestrator owns the loop-back theory (`orchestrator.md`, section *Loop-back and iteration protocol*). This document is the in-conversation runbook: what to ask, in what order, what to record, and what to do next.

## Three types of loops

The orchestrator distinguishes three types. The mini-gate questions in this runbook differ slightly between them.

1. **Type 1: Intra-phase iteration.** Re-run part of the current phase before proceeding. Triggered by Step 7 red-team output, by a missed gate criterion, or by mid-phase information that invalidates an earlier step.
2. **Type 2: Inter-phase loop-back.** Return to an earlier phase because new evidence in the current phase invalidates that phase's output.
3. **Type 3: Pivot loop.** Phase 5 commits to a fundamental direction change. Routes back to Phase 1 or Phase 2 with a new hypothesis.

The runbook below covers Type 1 and Type 2. Type 3 is decided in Phase 5 Step 3 and uses the Phase 5 process directly.

## Mini-gate runbook

### Step 1: Confirm the trigger

Ask the user the trigger question and record the answer verbatim before proceeding.

> Something tells you we should loop back. What specifically? Name the evidence in one sentence.

Acceptable triggers (non-exhaustive).

1. A red team challenge that the current phase cannot address with another intra-phase iteration.
2. An assumption from an earlier phase has been falsified by new data.
3. User feedback in the current phase reveals a different problem from the one Phase 1 documented.
4. A constraint in Section 1.2 has changed (regulatory, financial, organizational).
5. A new stakeholder has appeared whose presence changes the framing.

If the trigger is "the team feels stuck", the answer is not a loop-back. Route to `/chaos` or to an intra-phase iteration first.

### Step 2: Identify the type and target

Two questions in sequence.

1. *Is the issue that this phase needs another pass, or that an earlier phase produced the wrong output?* (Type 1 or Type 2.)
2. *If Type 2, which specific earlier phase, and which specific ICD section?* Resolve to a phase number from 0 through 4 and a Section number (for example, Phase 1 plus Section 3.2).

If the user names two or more earlier phases, work outward in: address the earliest first. Earlier-phase revisions cascade forward and may automatically resolve later concerns.

### Step 3: Scope the revision

One question.

> What is the scope of the revision? Targeted update to one section, partial rerun of a few steps, or a full rerun of the phase?

Three answer types.

1. **Targeted.** One field, one row, one paragraph. No phase rerun. Update the section directly and propagate forward.
2. **Partial.** A few specific steps of the target phase. Skip the rest.
3. **Full rerun.** Rare. Reserve for cases where Step 1 (Orientation) is itself wrong.

### Step 4: Inventory what carries forward

One question.

> What from the current phase remains valid and should be preserved on re-entry?

The current phase pauses. It does not reset. Mark its output as *provisional*: "[Phase N output provisional pending Phase M revision]." Preserved items remain in the ICD, untouched, until the loop-back resolves.

### Step 5: Check the budget

Read ICD Section 7 (Iteration log). Apply the limits.

1. Maximum 2 intra-phase iterations of any phase.
2. Maximum 2 inter-phase loop-backs to the same target phase.
3. Maximum 5 total inter-phase loop-backs across the entire process.
4. Kill threshold rule: any assumption falsified in two separate loop-back cycles cannot be revived. Concepts that depend on it must Kill or Pivot.

If a limit is reached, do not loop back. Escalate to the Orchestrator gate protocol with these four options.

1. **Accept lower TRL** and proceed with documented limitations.
2. **Grant one more iteration** if specific new evidence is expected.
3. **Pivot.** Run Phase 5 Step 3 (Pivot decision).
4. **Kill.** Run Phase 5 Step 3 (Kill decision).

### Step 6: Re-enter the target phase

Open the target phase prompt. The phase's Step 1 (Orientation and context loading) takes the following pre-amble verbatim.

> This is iteration N of Phase X. Previous output is in the ICD. The reason for this loop-back is [evidence from Step 1]. The specific question to answer is [scope from Step 3]. What is preserved from prior runs: [inventory from Step 4]. Sections to revise: [target section list from Step 2].

Special cases.

1. **Phase 2 re-entry:** skip Step 2 (brainwriting) on re-entry. Seed ideas already exist. Go directly to Step 3 (divergent phase) with the new evidence as a constraint.
2. **Phase 4 re-entry:** if the artifact is the same, do not rebuild from scratch. Run Step 5 (experiment execution) with the revised experiment design from the Phase 3 update.

### Step 7: Propagate forward

After the target phase's revised output is locked, propagate changes through every downstream ICD section. Each downstream section either remains valid (mark *unchanged after loop-back*), needs revision (mark *revised in iteration N*), or is itself flagged for re-running.

Then resume the paused phase. Replace its provisional marker with the confirmed output.

### Step 8: Log

Append one row to ICD Section 7 (Iteration log).

| Column | Value |
|---|---|
| Date | today |
| Loop type | Intra-phase, Inter-phase, or Pivot |
| From phase | the paused phase |
| To phase or step | the target |
| Trigger evidence | from Step 1 |
| Scope of revision | from Step 3 |
| Outcome | one sentence |

Update the iteration counter row for the target phase. Update the *Total inter-phase loop-backs* counter for Type 2.

## Output

A loop-back summary block in the form below. Append it to the Iteration log and present it to the user.

```
LOOP-BACK SUMMARY
=================
Type: [Intra-phase | Inter-phase | Pivot]
Target: [Phase N, Section X]
Trigger: [one sentence]
Scope: [Targeted | Partial | Full rerun]
Carried forward: [list of preserved items]
Budget remaining: [intra-phase X of 2, inter-phase to target X of 2, total X of 5]
Routing: [next phase prompt to load, or escalation to gate protocol]
```

## Boundaries

1. Do not loop back without a named trigger. Vague unease is not a trigger.
2. Do not loop back the same phase three times to the same section. The third time means a structural problem the loop-back protocol cannot solve.
3. Do not loop back to avoid a kill or a pivot. If the evidence supports kill or pivot, run Phase 5.
4. Do not silently rewrite earlier ICD sections. Every loop-back is logged in Section 7 and reflected in Section 9 (Changelog).
5. Do not allow a loop-back to be used as scope creep. The revision scope is fixed at Step 3 and not expanded mid-rerun.
