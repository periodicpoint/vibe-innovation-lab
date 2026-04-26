---
name: innovate-experiment
description: Design a single validation experiment. One assumption, one experiment, one numeric threshold defined upfront. Use when the team needs to test an assumption between phases, refine a Phase 3 experiment design, or design a follow-up experiment after a Phase 4 inconclusive result. Enforces Principle 7 (one experiment, one assumption).
user-invocable: true
argument-hint: "[assumption-id | free-text assumption]"
---

**Assumption to test:** $ARGUMENTS

Read the following files in order before acting.

1. `${CLAUDE_SKILL_DIR}/../../docs/validation_methods.md` (catalog of pretotypes for technical artifacts and analogous methods for institutional artifacts)
2. `${CLAUDE_SKILL_DIR}/../../docs/phase_3_value_architecture.md` Step 5 (the canonical experiment design pattern)
3. `${CLAUDE_SKILL_DIR}/../../docs/principles_and_antipatterns.md` (Principle 7: one experiment, one assumption)

## Process

### Step 1: Resolve the assumption

If the argument is an assumption ID (for example, `A3`), read the current ICD Section 3.3 (Assumption map) and load the assumption. If the argument is free text, draft an assumption statement together with the user and ask whether to register it in Section 3.3 first. If the argument is empty, list the top 3 untested assumptions in Section 3.3 by priority score and ask which one to design for.

The assumption must be a single, falsifiable claim. If it bundles two claims (for example, "users want this AND will pay for it"), split it into two assumptions and pick the more critical one.

### Step 2: Identify the falsifier

Ask one question: what observation would convince the team this assumption is false? Until the team can name a falsifier, do not proceed. An experiment without a falsifier is theatre.

### Step 3: Pick the method

From `validation_methods.md`, pick the cheapest method that can produce the falsifier. The catalog covers, at minimum:

1. **Fake Door** for demand signals.
2. **Mechanical Turk** for value-delivery validation without engineering.
3. **Concierge** for retention and willingness to pay.
4. **Pinocchio** for first-impression and form-factor signals.
5. **Wizard of Oz** for interaction patterns where the back-end is faked.
6. **Smoke test** for ad-driven demand calibration.
7. **Tabletop walkthrough** for institutional artifacts.
8. **Roleplay or read-aloud** for protocols and scripts.
9. **Pilot cohort** for institutional pilots.

If none of these fit, name the rationale and pick a custom method.

### Step 4: Define the success metric

The metric must be numeric and observable from the outside. "People liked it" does not count. "At least 30 signups in 7 days from a population of 500 visitors, click-through rate above 5 percent" counts.

The metric must include both a numerator and a denominator where applicable. A bare count without a sample size is uninterpretable.

### Step 5: Set the threshold

Set the numeric threshold *before* running the experiment. State the threshold and the falsification rule in one line: "If [metric] is below [threshold], the assumption is falsified."

If the team is reluctant to commit to a threshold, this is a signal that the team is afraid of the answer. Hold the line. Pre-commit or do not run.

### Step 6: Estimate cost and time

Three numbers: estimated effort (person-hours), estimated calendar time, and estimated direct cost in EUR. Pretotypes that take more than two weeks or more than a few hundred euros are usually disguised products. Recommend a smaller experiment.

### Step 7: Identify the kill condition

State explicitly what happens if the experiment falsifies the assumption. Two sentences. The kill condition is part of the experiment design, not an afterthought. If the team cannot live with the kill condition, they will retroactively shift the threshold. Resolve the discomfort now.

### Step 8: Output

Produce a single experiment record in the schema-compatible format:

```
EXPERIMENT DESIGN
=================
ID: E[N] (next available)
Assumption tested: A[N] (or new assumption text)
Pretotype type: [method from validation_methods.md]
Success metric: [numeric, with numerator and denominator]
Threshold: [numeric pre-committed value, with falsification rule]
Estimated cost and time: [hours, days, EUR]
Kill condition: [what happens if falsified]
Owner: [name]
Earliest start: [date]
```

Append to ICD Section 4.5 (Experiment design). If Section 4.5 does not exist yet (running pre-Phase-3), buffer the design and recommend running `/innovate-phase 3` to integrate it formally.

## Boundaries

1. One experiment, one assumption. Do not design composite experiments.
2. No vanity metrics. The metric must be observable, numeric, and tied to the assumption.
3. No retroactive thresholds. The threshold is set before, never after.
4. No experiments that cannot fail. If the team cannot describe a result that would falsify the assumption, the experiment is not valid.

Respond in the language the user is writing in.
