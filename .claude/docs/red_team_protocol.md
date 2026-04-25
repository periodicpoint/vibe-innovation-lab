# Red team protocol

A standalone protocol for stress-testing any artifact (problem statement, concept, business model, experiment design, prototype, decision) against adversarial framings. Originally embedded as Step 7 (or Step 6 in Phase 5) of every phase. Now also exposed as a standalone skill so it can be invoked between phases, on a single artifact, or outside any phase entirely.

## Purpose

Generate disconfirming evidence on demand. The default cognitive mode of an innovation team is constructive. Red team mode is the opposite. Adopt the stance of a competitor, regulator, hostile reviewer, or sceptical user, and search for the weakest load-bearing claim. Surface the failure before reality does.

## When to enter

Enter the protocol in any of the following situations.

1. The Step 7 (or Step 6) red team moment of a phase. The skill is the canonical implementation for that step.
2. A standalone challenge between phases, before locking an output.
3. An ad hoc challenge on any artifact: a single concept, a single experiment design, a single architectural decision, a single user-feedback synthesis.
4. A pre-decision sanity check before Phase 5 commits to Go, Kill, Pivot, or Loop-back.
5. After any inter-phase loop-back, to verify that the revised output addresses the original failure and has not introduced new ones.

If the team explicitly does not want a challenge (for example, mid-divergence in Phase 2 Step 3), do not invoke. The protocol is for convergent moments.

## Inputs

The skill accepts one of three input shapes.

1. **Phase artifact.** The Phase number plus the relevant ICD section (for example, Phase 2 plus Section 4.2 for selected concepts). The skill reads the section and challenges it against the phase-specific question set below.
2. **Free artifact.** A piece of text or a description that is not yet in the ICD (for example, a draft problem statement, a hypothesis, a Mermaid diagram). The skill challenges it against the generic question set.
3. **Decision.** A pending Phase 5 decision (Go, Kill, Pivot, Loop-back) plus the supporting evidence. The skill challenges the inference rather than the artifact.

## Process

### Step 1: Frame the target

Restate the artifact under challenge in one sentence. State what would have to be true for it to hold. State what would falsify it. If the team cannot articulate a falsifier, the artifact is not yet a claim. Stop and ask the team to refine before proceeding.

### Step 2: Pick the lens

Pick at least three of the following adversarial lenses. Cover at least one *user-side*, one *competitor-side*, and one *failure-mode* lens.

1. **Hostile user.** A user who would actively misuse, abuse, or break the artifact. Asks: how do I get value while paying nothing, lying about my identity, or exfiltrating someone else's data?
2. **Indifferent user.** The much more common adversary. Asks: why would I bother trying this when my current workaround is fine?
3. **Smart competitor.** An incumbent or a faster startup. Asks: what would I do in the next 90 days to make this irrelevant?
4. **Hostile regulator.** A regulator looking for grounds to block the deployment. Asks: which obligation is the team pretending does not apply?
5. **Future post-mortem.** Six months out, the project failed. Asks: what was the precise failure mode, and what early signal did the team ignore?
6. **Bored journalist.** Asks: what is the embarrassing one-paragraph version of this story?
7. **Sceptical reviewer.** A peer reviewer or a senior engineer. Asks: what is the most generous reading of the evidence, and is that still enough to support the claim?
8. **Adjacent expert.** Someone from a neighbouring discipline who has seen this pattern before. Asks: what is the established failure mode of this archetype that the team has not named?

### Step 3: Run the question set

For each chosen lens, run the matching question set. Phase-specific question sets are listed below. For free artifacts, run the generic set.

**Generic question set:**

1. What load-bearing assumption, if false, would invalidate this artifact?
2. What evidence currently supports that assumption? Is the evidence anecdotal or systematic?
3. What is the artifact's most likely failure mode in the first 6 months?
4. Where is the artifact's value proposition weakest? Pricing, distribution, differentiation, or feasibility?
5. What would a sceptic say after one minute with this artifact?
6. What is the team most reluctant to test? Why?

**Phase 0 (situation map):**

1. What is the strongest counter-argument to "Why now"?
2. Which signal is weakest? Could it be reversed, dismissed, or already counted twice?
3. Which stakeholder is missing from the map, and would their absence change the framing?
4. Where on the Wardley Map are we most likely overestimating maturity?

**Phase 1 (problem statement):**

1. Could the problem be a symptom of a larger problem we are not naming?
2. Is the problem real for the user, or only real for us?
3. What evidence would convince us the problem does not exist as stated?
4. Whose problem is this not? Naming the non-affected sharpens the affected.

**Phase 2 (selected concepts):**

1. Why might users not adopt this despite its benefits?
2. What would a smart competitor do in response within 90 days?
3. What is the most likely failure mode in the first 6 months?
4. Which Phase 1 assumption does this concept depend on most heavily?
5. Is this the first idea that survived, or genuinely the best one in the option space?

**Phase 3 (business model and experiments):**

1. Is the revenue model realistic, or is it the financially convenient assumption?
2. Which channel is unproven, and what would it take to prove it?
3. Which experiment in Section 4.5 has a threshold that cannot fail in practice?
4. Which experiment is the team most reluctant to run? Why?
5. Pre-mortem failure 1: what early indicator would warn us before it happens?

**Phase 4 (validation):**

1. Did the user feedback come from the population the problem statement names, or from a convenience sample?
2. Did the experiment threshold change after the result came in?
3. What is the strongest case that the result is a false positive?
4. What does the artifact specification quietly defer to the product team that should have been validated here?

**Phase 5 (decision):**

1. What evidence would have made the opposite decision correct?
2. Which dissenting view, if proven right, would invalidate the decision?
3. Is the affordable loss assessment honest, or optimistic?
4. If we Kill: what is the strongest case for a Pivot? If we Go: what is the strongest case for a Kill?

### Step 4: Score the challenges

For each challenge raised, mark one of the following statuses.

1. **Addressed.** The artifact already accounts for this challenge. Cite the specific ICD section or evidence.
2. **Mitigation possible.** The artifact does not yet account for this, but a specific revision would fix it. Name the revision.
3. **Open.** The challenge is real and not yet addressed. Mark the artifact as provisional and route the open challenge to the next step (intra-phase iteration, inter-phase loop-back, or carry-forward to a later phase).
4. **Out of scope.** The challenge is real but explicitly outside the scope of this artifact at this TRL. Document why.

The presence of *Open* items does not necessarily block phase advancement. The presence of *Open* items the team has not seen before does. A red team that produces only *Addressed* and *Out of scope* outcomes was not adversarial enough. Run a second pass with a different lens.

### Step 5: Synthesize and route

Produce three lines.

1. **Red team summary:** what the strongest challenge was, in one sentence.
2. **Disposition:** how the artifact changes (revise, mark provisional, or proceed unchanged) and why.
3. **Routing:** the next action (proceed to next step, iterate within the current step, trigger a mini-gate loop-back, or escalate to a kill or pivot decision).

Append the summary to the ICD. For a phase Step 7 invocation, the summary lives inside the phase output. For a standalone invocation, log it under Section 8 (Decision log) as a Strategic entry with type `Red team`.

## Boundaries

1. The protocol is convergent in nature. Do not run during divergent ideation. The Improviser persona will block it during Phase 2 Step 3.
2. Do not run as performance. A red team that finds nothing is either too gentle or run on a healthy artifact. If two consecutive runs find nothing, raise the lens count and pick lenses the team is uncomfortable with.
3. Do not allow the team to argue away every challenge in real time. The point is to record open challenges, not to neutralize them. Disposition is its own step.
4. Do not run the protocol on the team itself. The artifact is the target. Personal critique is out of scope.
5. Do not run the protocol once and consider the artifact bullet-proof. Red teams have blind spots. Cycle the lenses across passes.

## Output

A red team summary block in the form below. Append it to the relevant phase output or to the Decision log.

```
RED TEAM SUMMARY
================
Target: [artifact name and ICD section, or "free artifact"]
Lenses: [list of lenses used]
Strongest challenge: [one sentence]
Disposition: [revise, mark provisional, or proceed]
Open challenges: [list, or "none"]
Routing: [next action]
```
