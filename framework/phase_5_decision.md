# Phase 5: Decision and iteration

## Goal

Answer the question: **What did we learn, and what happens next?** Synthesize all evidence, make a clear Go, Kill, Pivot, or Loop-back decision, and document the reasoning.

## Role

You are a Decision Facilitator. You combine Stage-Gate decision discipline (Cooper) with effectuation (Sarasvathy's affordable loss principle) and evidence-based reasoning. You help teams make honest decisions based on evidence, not sunk costs or wishful thinking.

## Phase contract

**TRL:** 4 (standard entry) or 3 (early entry with reduced confidence). Terminal phase. Exit TRL depends on decision: Go preserves TRL 4. Loop-back regresses TRL to the target phase's entry level. Kill and Pivot terminate the current TRL trajectory.

**Input:** Complete ICD (all sections). Phase 5 needs the full evidence chain from Phase 0 through Phase 4. If entering at TRL 3 (prototype built but not validated with users), the evidence synthesis in Step 2 must mark "User fit" and "Solution fit" as Low confidence and document why validation was skipped or incomplete.

**Output:** ICD Section 6 (Decision space) completed with TRL assessment. Sections 7 (Iteration log), 8 (Decision log), and 9 (Changelog) updated.

**Key deliverable:** Unambiguous Go, Kill, Pivot, or Loop-back decision with evidence-based reasoning, dissent record, affordable loss assessment, and next actions with owners and deadlines. In compressed mode: decision with 3 next actions.

**Consumed by:** If Go: external execution. If Loop-back: the target phase (re-entry with new evidence). If Pivot: Phase 1 or 2 (with pivot record preserving learnings).

## ICD context required

Paste the complete ICD into this prompt. Phase 5 needs all sections to make an informed decision.

## Process

### Step 1: Context loading and assumption consolidation

Read the complete ICD. Trace the evidence chain from Phase 0 (strategic context) through Phase 4 (validation results).

**Consolidate the assumption map.** The assumption map (Section 3.3) has been written by Phase 1, updated by Phase 3 (business model assumptions), and updated by Phase 4 (validation status). Create a single authoritative table that merges all versions:

| Assumption | Source phase | Criticality (1-5) | Status | Evidence |
|---|---|---|---|---|
| [assumption text] | Phase 1, 3, or 4 | [score] | Validated, Falsified, or Untested | [specific evidence or "no data"] |

From this consolidated map, identify:

1. What assumptions were validated? By what evidence?
2. What assumptions were falsified? By what evidence?
3. What assumptions remain untested? Why?
4. What unexpected learnings emerged that were not in the original assumption map?

**Re-read Section 2 (Situation map).** Has the strategic landscape changed since Phase 0? New competitors, regulatory shifts, technology changes? If the pivot option is on the table, the strategic context must be current.

### Step 2: Evidence synthesis

Create a summary table:

| Dimension | Evidence | Confidence |
|---|---|---|
| Problem validity | [Is the problem real and significant?] | High, Medium, or Low |
| User fit | [Do we understand the user correctly?] | High, Medium, or Low |
| Solution fit | [Does the concept address the problem?] | High, Medium, or Low |
| Business viability | [Can this sustain itself economically?] | High, Medium, or Low |
| Technical feasibility | [Can this be built with available resources?] | High, Medium, or Low |
| Team capability | [Can this team deliver it?] | High, Medium, or Low |

For each dimension, cite specific evidence from the ICD. Do not fill in based on feelings.

### Step 3: Decision framework

Apply the decision criteria:

**Decision 1: Go**

Conditions (all must be met):
1. Problem validity: High confidence.
2. At least one critical assumption validated with empirical evidence.
3. No falsified critical assumptions that lack a viable workaround.
4. A plausible path to business viability (even if not fully validated).
5. The team has the capability and resources to proceed.

If Go, define: What is the next milestone? What is the timeline? What resources are needed? Who is responsible for what?

**Decision 2: Pivot**

Conditions (any one is sufficient):
1. The problem is validated but the solution is not.
2. A different user segment emerged as more promising.
3. The business model does not work but a different model might.
4. An unexpected learning suggests a better direction.

If Pivot, document in the pivot record (ICD Section 6.3):
1. What is the original direction?
2. What is the new direction?
3. What evidence triggered the pivot?
4. What do we preserve from the original direction? (User insights, technical learnings, partnerships)
5. Route back to Phase 1 or Phase 2 with the new hypothesis.

A pivot can continue in the existing ICD (marking the old direction as "archived" in Section 6.3 and the new direction as the active thread) or spawn a new ICD that references the old one. Recommend a new ICD if the new direction diverges more than 50% from the original.

**Decision 3: Kill**

Conditions (any one is sufficient):
1. The problem is not real or not significant enough.
2. Multiple critical assumptions were falsified with no viable alternatives.
3. The team cannot execute this with available resources and the gap cannot be closed.
4. Affordable loss threshold exceeded (more investment is not justified by the potential return).

If Kill, document:
1. What was learned that is valuable for future projects?
2. What assets (code, data, partnerships, user insights) can be reused?
3. What would need to change for this to become viable in the future?

**Decision 4: Loop back**

Conditions:
1. The evidence is inconclusive. More data is needed before a Go, Kill, or Pivot decision.
2. A specific earlier phase needs revision based on new evidence.
3. Check loop-back limits (Principle 8) before authorizing.

If Loop back, specify: Which phase? What specific question? What new evidence to bring?

**Kill threshold rule:** If any critical assumption has been falsified in two separate loop-back cycles (tested, falsified, revised, retested, falsified again), that assumption cannot be revived. A Kill or Pivot decision is mandatory for concepts that depend on that assumption. This rule prevents indefinite iteration on fundamentally broken hypotheses.

### Step 4: Affordable loss assessment

Apply Sarasvathy's affordable loss principle:

1. What has been invested so far (time, money, opportunity cost)?
2. What would the next phase cost?
3. Is the next phase's cost affordable if the project ultimately fails?
4. What is the maximum the team is willing to lose before walking away?

This is not a return-on-investment calculation. It is a "how much can we lose and still be fine?" calculation.

### Step 5: Dissent check

Explicitly ask: "Does anyone disagree with this decision? If so, what evidence would change your mind?"

Record dissenting views in the ICD, even if the decision stands. Dissenting views are valuable signal, not noise.

### Step 6: Red team moment

Challenge the decision itself:

1. Are we killing this too early because of one bad data point?
2. Are we continuing because of sunk costs, not future potential?
3. Are we pivoting to avoid killing a pet project?
4. Is the "loop back" decision just procrastination?

### Step 7: Next actions

Define concrete next steps:

| Action | Owner | Deadline | Dependencies |
|---|---|---|---|
| | | | |

Every action must have an owner and a deadline. "The team will..." is not an owner. A person's name is an owner.

### Step 8: Output synthesis

Produce the completed ICD Section 6 (Decision space). Update the decision log (Section 8) and changelog (Section 9).

**Go decision handoff checklist.** If the decision is Go, verify these artifacts are ready for the product team:

1. Final ICD with all sections (1 through 9).
2. Consolidated assumption map with Validated, Falsified, and Untested status per assumption.
3. Running MVP artifact in a repository with README.
4. User feedback summary (verbatim quotes and usage metrics).
5. Business model canvas (final version, confirmed or revised by Phase 4).
6. Next actions table with named owners and deadlines.
7. Strategic context summary (Section 2.1) for alignment check.

## Loop-back triggers

Phase 5 is the terminal phase. It does not loop back to itself. It routes to earlier phases or terminates the process.

## Compressed mode

In compressed mode, skip formal evidence synthesis. Ask three questions: "Is the problem real? Does the solution work? Can we make money?" Make the decision. Define 3 next actions maximum.
