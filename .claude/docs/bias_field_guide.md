# Bias and anti-pattern field guide

A detection-oriented companion to `principles_and_antipatterns.md`. The principles document defines the eight cognitive biases on the watchlist plus six anti-patterns and lists counter-measures. This document adds detection heuristics: concrete signals to watch for during a session, the precise moment they tend to surface, and the response that interrupts the bias before it shapes the output.

Use this guide as the in-conversation reference when the LLM or the team suspects a bias is shaping the work. Do not deploy it as a checklist on every step. Bias detection is on demand.

## How to use this guide

1. Each entry has the same shape: a *symptom* (what surfaces in the conversation), a *moment* (where in the framework it tends to appear), a *trigger phrase* (the specific words or patterns that often precede it), a *fast check* (a one-question sanity test), and a *response* (the immediate intervention).
2. The fast checks are calibrated to be runnable in under two minutes. They are not full audits. They surface enough signal to decide whether to escalate.
3. When a bias is detected, log it as a Strategic entry in the Decision log (ICD Section 8) with type `Bias`. The log preserves a record across the project so patterns become visible.

## Cognitive biases

### Confirmation bias

**Symptom.** Evidence that supports the current hypothesis is foregrounded. Disconfirming evidence is reframed, dismissed, or treated as a special case. User quotes get cherry-picked. The team is energetic when reading evidence.

**Moment.** Phase 4 user-feedback synthesis. Phase 5 evidence review. Any moment when evidence is being read aloud and a verdict is forming.

**Trigger phrases.** "This confirms," "exactly what we expected," "the user clearly meant," "you can see they really want this," "the people who said no were not the target user."

**Fast check.** Ask: "What evidence in the same data set would falsify the hypothesis if we read it generously? Read me three quotes from the *no* responses."

**Response.** Run an inverted version of the synthesis: gather only disconfirming evidence and rebuild the picture from that side. Then compare. If the team cannot find any disconfirming evidence, the data set is biased, not the hypothesis confirmed.

### Sunk cost fallacy

**Symptom.** Past investment is named as a reason to continue. Effort, time, and emotional investment leak into the decision frame.

**Moment.** Phase 5 gate decision, especially after a long Phase 4. Loop-back budget exhaustion. Pivot decisions where the original direction had visible work invested in it.

**Trigger phrases.** "We have already spent," "after all this work," "we cannot just throw away," "the team has been on this for," "we owe it to ourselves."

**Fast check.** Ask: "If we were starting today with the current evidence and no prior history, would we begin this project?"

**Response.** Re-read the affordable-loss assessment from Phase 5 Step 4. The decision frame is *forward expected value*, not *past expense*. If the past work is genuinely valuable, it survives a Kill or Pivot via the artifact specification and the decision log. The Judge persona explicitly refuses sunk-cost reasoning.

### Anchoring bias

**Symptom.** The first idea, the first user quote, the first metric, or the first proposed concept dominates all subsequent thinking. Later options are evaluated as deviations from the first, not on their own terms.

**Moment.** Phase 2 ideation Step 6 (concept selection). Phase 1 problem statement drafting. Any first-round score that becomes the reference for later rounds.

**Trigger phrases.** "Compared to the first one," "this is similar to," "we already have one that does," "the original idea was."

**Fast check.** Ask: "If the first idea had not been proposed, which of the others would now be the best?"

**Response.** Hide the first idea or the first quote temporarily. Re-score the remaining options blind. Then reintroduce the first one and compare. If its position holds, anchoring was not active. If it drops, anchoring was active.

### Groupthink

**Symptom.** Consensus arrives suspiciously fast. No dissent is voiced. The most senior person in the room speaks first and the rest agree. Or the most-talked person in a session sets the frame.

**Moment.** Any team-based phase. Particularly Phase 3 business model decisions, Phase 5 gate decisions, and red-team moments where dissent should be present.

**Trigger phrases.** "We all agree," "obviously," "this is straightforward," "everyone sees that," silence after a senior person's statement.

**Fast check.** Ask: "Imagine a senior person not in this room read our decision tomorrow. What is the strongest objection they would raise? Steel-man it."

**Response.** Run a written round before the discussion: each person writes their position privately, then shares simultaneously. Or run a forced dissent round: name one person to argue the opposite of the emerging consensus. Record the steel-man objection in ICD Section 6.1 (Dissenting views), even if it is *none raised*.

### Availability bias

**Symptom.** Recent, vivid, or emotionally salient evidence dominates. The user interview from yesterday outweighs the systematic survey from last month.

**Moment.** Phase 4 user feedback synthesis. Phase 1 problem framing where one founder's anecdote drives the JTBD profile. Phase 5 when the most recent metric is treated as the trend.

**Trigger phrases.** "Just yesterday a user said," "I keep seeing," "everyone I talk to," "in my experience."

**Fast check.** Ask: "Out of the last N data points, what is the actual proportion that says X? Count, do not estimate."

**Response.** Tabulate the evidence with sample sizes before drawing conclusions. Distinguish anecdote from pattern. The principle is *systematic over salient*. A vivid quote can illustrate a pattern but cannot replace one.

### Dunning-Kruger effect

**Symptom.** The team is confident in its competence in a domain it has never touched professionally. "How hard can X be?" enters the conversation in a non-rhetorical sense.

**Moment.** Phase 0 search field selection. Phase 4 tech-stack selection. Phase 4 institutional artifact design where the team is outside its operating domain.

**Trigger phrases.** "How hard can it be," "we will figure it out," "it is just a matter of," "our team can pick that up quickly."

**Fast check.** Ask: "Name three specific failure modes that experienced practitioners in this domain encounter. If we cannot name them, we should not be the only team designing this."

**Response.** Bring in a domain expert for at least one Phase 4 review. Update the Effectuation inventory in Section 3.4 with the gap explicitly named. Reroute critical decisions to a person with the domain credentials.

### Survivorship bias

**Symptom.** Reference cases are uniformly successful. "Uber did this. Stripe did that. Airbnb did that." The thousands of failures in the same space are absent from the framing.

**Moment.** Phase 0 strategic context. Phase 3 business model design. Any moment when comparable companies or products are cited.

**Trigger phrases.** "X did it, so we can," "the playbook is well known," "we just have to follow what worked."

**Fast check.** Ask: "Name three projects that tried this and failed. If we cannot, our reference base is biased."

**Response.** Add a *failed comparables* section to Phase 0 Step 6 (Signals and trends). Identify three projects in the same space that tried something similar and did not survive. Read their post-mortems. The failure modes are usually more useful than the success patterns.

### Planning fallacy

**Symptom.** Estimated time and cost are systematically optimistic. Buffers are absent. The team plans for the median case and ignores the long tail.

**Moment.** Phase 3 experiment cost estimation. Phase 4 build planning. Phase 5 next-actions deadlines.

**Trigger phrases.** "We can have this in a week," "it is a few hours of work," "we will sprint and finish it," "the timeline is aggressive but doable."

**Fast check.** Ask: "Look at the last three projects of similar shape. How long did they actually take versus the estimate? Use that ratio."

**Response.** Reference-class forecasting. Multiply the optimistic estimate by the historical ratio (often 1.5 to 2.5). Build in a 25 percent buffer for unknowns. For Phase 4 builds, prefer pretotyping over building when planning fallacy is suspected: a Fake Door takes hours and cannot blow up.

## Anti-patterns

### Anti-pattern 1: Solution-first thinking

**Symptom.** The team arrives with a fully-formed solution and reverse-engineers a problem to fit. Phase 1 becomes a justification exercise.

**Moment.** Phase 1 entry, especially when the team has been thinking about the project for a while before entering the framework.

**Trigger phrases.** "We are building X," "the product is going to be," "the platform needs to," before any user has been mentioned.

**Fast check.** Ask: "Strip the solution. Describe the user pain in one sentence with no mention of any tool, technology, or product."

**Response.** Route to Phase 1 properly. Run the Midwife persona's full Socratic round. If the solution survives genuine problem discovery, it is genuinely good. If it does not, the team learned something more valuable.

### Anti-pattern 2: Feature soup

**Symptom.** The concept keeps growing. Each session adds features. Nothing leaves. The one-sentence description gets longer over time.

**Moment.** Phase 2 to Phase 4 transition. Phase 3 value proposition canvas where every cell gets filled in.

**Trigger phrases.** "We could also," "and it should," "people will expect," "nice to have."

**Fast check.** Ask: "If we shipped in seven days, what is the only thing the system must do? Cut everything else."

**Response.** Force the one-sentence-description constraint. Every feature must trace to a Phase 1 user need with evidence. Apply the *what would we cut?* test. Move trimmed features to ICD Section 5.2 field 9 (Known limitations) or to a follow-up backlog.

### Anti-pattern 3: Premature scaling

**Symptom.** Engineering choices are made for 10,000 users when 10 users have not validated. Microservices, queues, caches, multi-region.

**Moment.** Phase 4 tech-stack selection. Architecture overview. Often paired with Dunning-Kruger.

**Trigger phrases.** "We need to scale this," "for production we will," "this needs to handle," "let us pick the right architecture."

**Fast check.** Ask: "What is the smallest stack that lets us run the riskiest experiment this week?"

**Response.** Pretotype before prototyping. The Maker persona explicitly chooses the stack that fits the *current* uncertainty, not the imagined future load. Document the throwaway stack in ICD Section 5.2 field 5 with the explicit *throwaway* status.

### Anti-pattern 4: Innovation theater

**Symptom.** The process looks like innovation (canvases, sticky notes, personas, sprints) but produces no falsifiable hypotheses and no executed experiments. The ICD is full of generic statements.

**Moment.** Any phase where deliverables exist but evidence is thin. Phase 3 if Section 4.5 has experiments without numeric thresholds. Phase 4 if Section 5.1 has results without thresholds met or missed.

**Trigger phrases.** "Users will love this," "the market is huge," "we are building the future of," "people clearly need."

**Fast check.** Ask: "Read the last paragraph aloud. Could you make the opposite claim with the same evidence? If yes, the claim is empty."

**Response.** Apply Principle 3 (be specific) and Principle 4 (evidence over opinion) directly. Re-write each empty claim as either a falsifiable hypothesis with a planned experiment, or as an explicit assumption marked Untested in Section 3.3.

### Anti-pattern 5: Founder vision lock

**Symptom.** One person's vision overrides evidence. Pivot suggestions are dismissed. User feedback that contradicts the vision is reinterpreted to confirm it.

**Moment.** Phase 4 user feedback synthesis. Phase 5 gate decisions. Loop-back assessments where the founder argues against budget enforcement.

**Trigger phrases.** "The founder knows," "the vision is clear," "the user does not yet understand," "we just need to educate the market."

**Fast check.** Ask: "Name a result that would convince the founder to pivot or kill. If no result exists, the project is unfalsifiable."

**Response.** Pre-commit falsification criteria *in writing* before the experiment runs. Lock the criteria in the Decision log with the founder as a named party. After the result, the criteria apply mechanically. Affordable-loss thinking and the Judge persona explicitly refuse vision-lock.

### Anti-pattern 6: Analysis paralysis

**Symptom.** Endless research, endless refinement, endless drafting. The team never moves to a prototype because the problem statement *is not perfect yet*.

**Moment.** Phase 1 to Phase 2 transition. Iteration counter close to or beyond the budget.

**Trigger phrases.** "We need more data," "the problem is not sharp enough yet," "one more round and we will be ready," "before we can build, we have to."

**Fast check.** Ask: "What is the cheapest experiment we could run today, with the imperfect problem statement, that would teach us something?"

**Response.** Apply Principle 8 (iteration has a budget) and the budget rules in `loop_back_protocol.md`. Cap intra-phase iterations at 2. Accept *good enough to test* over *perfect*. The Improviser persona during Phase 2 and the Maker persona during Phase 4 are the antidotes here. Both prefer ugly running artifacts to beautiful unbuilt ones.

## Cross-bias patterns

Some sessions show multiple biases at once. The most common combinations:

1. **Confirmation bias plus founder vision lock.** The founder reads the data and finds confirmation. Detect either, and check for the other.
2. **Sunk cost plus analysis paralysis.** Effort already spent justifies more effort spent. Detect either, and check for the other.
3. **Survivorship bias plus Dunning-Kruger.** "X did it, so we can." Detect either, and check for the other.
4. **Availability bias plus innovation theater.** A vivid recent quote backs an empty claim. Detect either, and check for the other.

## Boundaries

1. Bias detection is descriptive, not punitive. The point is to interrupt the pattern, not to diagnose individuals. Every entry in this guide names a *symptom* in the conversation, not a personal trait.
2. Detection is on demand. Running the full guide on every step is itself an anti-pattern (analysis paralysis).
3. The fast checks are not proofs. They surface signal. If the signal is strong, escalate to the response. If it is weak, log and move on.
4. The biases on the watchlist are not exhaustive. Other biases (optimism bias, narrative fallacy, fundamental attribution error, hindsight bias) appear in innovation contexts. Add new entries to the Decision log when first detected, and consider extending this guide.
