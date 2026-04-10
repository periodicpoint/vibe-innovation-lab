# Principles and anti-patterns

Cross-cutting principles, cognitive bias watchlist, anti-patterns catalog, and ICD completeness checklist for the Vibe Innovation Framework.

## Eight governing principles

### Principle 1: Fail fast, fail cheap

Test assumptions before building solutions. The cheapest experiment that can falsify your riskiest assumption is the best next step. If you cannot name the assumption you are testing, you are not experimenting. You are guessing.

### Principle 2: Stay in the problem space until it hurts

The most common innovation failure is jumping to solutions before understanding the problem. Resist the urge. A well-defined problem is half the solution. A poorly defined problem generates elegant solutions to the wrong question.

### Principle 3: Be specific or be silent

"We want to help people" is not a problem statement. "Freelance graphic designers in Germany earning under 40,000 EUR per year spend more than 8 hours per month on invoicing because existing tools do not integrate with the tax system" is a problem statement. If you cannot be specific, you have not done enough research.

### Principle 4: Evidence over opinion

Opinions are cheap. Evidence is expensive. That is why evidence matters. Every claim in the ICD should be traceable to evidence (user interviews, data, experiments, published research) or explicitly marked as an assumption to be tested.

### Principle 5: Kill your darlings

The sunk cost fallacy is the enemy of good innovation. If the evidence says your idea is dead, kill it. Document what you learned and move on. The ICD preserves learnings even from killed projects. Nothing is wasted if you learn from it.

### Principle 6: Diverge before converge

Never evaluate ideas during idea generation. Never generate ideas during evaluation. These are different cognitive modes. Mixing them produces mediocre ideas that survive because they are inoffensive, not because they are good.

### Principle 7: One experiment, one assumption

Each experiment should test exactly one assumption. If an experiment fails, you should know exactly which assumption was falsified. If it tests multiple assumptions, a failure teaches you nothing specific.

### Principle 8: Iteration has a budget

Loop-backs are healthy. Infinite loop-backs are not. Maximum 2 intra-phase iterations before escalating. Maximum 2 inter-phase loop-backs to the same phase before pivoting or killing. Maximum 5 total loop-backs across the entire process before raising a structural concern. These limits exist to prevent the team from polishing a fundamentally flawed direction.

## Cognitive bias watchlist

These biases are the most dangerous in innovation contexts. The Orchestrator and all phase prompts should actively watch for and challenge them.

### Confirmation bias

**What it looks like:** Seeking evidence that confirms the current hypothesis while ignoring disconfirming evidence. Cherry-picking user quotes that support the idea. Designing experiments that can only succeed.

**Counter-measure:** Actively seek disconfirming evidence. Ask "what would prove us wrong?" at every gate. Design experiments with clear falsification criteria.

### Sunk cost fallacy

**What it looks like:** Continuing to invest in an idea because of past investment, not future potential. "We have already spent three months on this."

**Counter-measure:** Principle 5 (kill your darlings). Every gate decision should evaluate future potential, not past investment.

### Anchoring bias

**What it looks like:** Over-weighting the first idea, the first user quote, the first data point. The first solution proposed dominates all subsequent thinking.

**Counter-measure:** Principle 6 (diverge before converge). Generate many options before evaluating any.

### Groupthink

**What it looks like:** Consensus without genuine agreement. Suppression of dissent. "Everyone agrees, so it must be right."

**Counter-measure:** Red team challenges at every phase exit. Explicitly invite dissent. Record dissenting views in the ICD.

### Availability bias

**What it looks like:** Over-weighting recent, vivid, or emotionally salient information. "I just talked to a user who loved it" outweighs systematic data.

**Counter-measure:** Require sample sizes. Distinguish anecdotes from patterns. Weight data sources explicitly.

### Dunning-Kruger effect

**What it looks like:** Overestimating competence in unfamiliar domains. "How hard can it be to build an app?"

**Counter-measure:** Honest uncertainty profiles. Effectuation inventory (what do we actually know?). Seek domain expertise where gaps exist.

### Survivorship bias

**What it looks like:** Learning only from successes. "Uber did it, so we can too." Ignoring the thousands of failed ride-sharing startups.

**Counter-measure:** Actively study failures in the same space. Ask "who tried this before and failed, and why?"

### Planning fallacy

**What it looks like:** Underestimating time, cost, and complexity. Overestimating the team's capacity.

**Counter-measure:** Reference class forecasting. Look at similar projects (not your optimistic estimate). Build in buffers. Use pretotyping to test feasibility cheaply before committing to full implementation.

## Anti-patterns catalog

### Anti-pattern 1: Solution-first thinking

**Symptom:** The team arrives with a solution and works backwards to find a problem it solves.

**Harm:** The resulting product solves a problem nobody has, or solves a real problem in a way nobody wants.

**Fix:** Route to Phase 1. Conduct genuine problem discovery. If the solution is genuinely good, it will survive contact with real user needs.

### Anti-pattern 2: Feature soup

**Symptom:** The concept keeps growing. Every brainstorm adds features. Nobody removes anything. The scope expands without evidence of demand.

**Harm:** The prototype is too complex to build, test, or explain. The value proposition becomes diffuse.

**Fix:** Force a "one-sentence description" constraint. Every feature must be traceable to a validated user need. Apply the "if we had to ship in one week, what would we cut?" test.

### Anti-pattern 3: Premature scaling

**Symptom:** Building for 10,000 users before validating with 10. Choosing enterprise architecture before validating the concept.

**Harm:** Wasted engineering effort. Delayed learning. Organizational inertia.

**Fix:** Pretotyping. Build the simplest possible thing that tests the riskiest assumption. A landing page, a spreadsheet, a manual process.

### Anti-pattern 4: Innovation theater

**Symptom:** The process looks like innovation (sticky notes, personas, canvases) but produces no falsifiable hypotheses and no experiments. The ICD is filled with platitudes.

**Harm:** Wasted time. False confidence. The team believes they have innovated when they have only brainstormed.

**Fix:** Principle 3 (be specific). Principle 4 (evidence over opinion). Every phase must produce something testable.

### Anti-pattern 5: Founder vision lock

**Symptom:** One person's vision overrides all evidence. User feedback is reinterpreted to confirm the vision. Pivots are rejected because "the founder knows best."

**Harm:** The project becomes unfalsifiable. Evidence cannot change the direction.

**Fix:** Principle 4 (evidence over opinion). Pre-commit to falsification criteria before each experiment. If the evidence meets the criteria, the direction changes regardless of who proposed it.

### Anti-pattern 6: Analysis paralysis

**Symptom:** Endless research, endless iterations, endless refinement. The team never moves to prototyping because the problem statement is "not perfect yet."

**Harm:** Opportunity cost. The market moves on. The team burns out.

**Fix:** Principle 8 (iteration has a budget). Time-box every phase. Accept "good enough to test" over "perfect."

## ICD completeness checklist

Use this checklist at every gate assessment to verify the deliverable is genuinely complete, not just filled in with placeholders.

### Phase 0 gate checklist

1. [ ] "Why now?" has a specific, evidence-based answer (not "because AI is hot")
2. [ ] At least 3 search fields identified with rationale for each
3. [ ] Signals and trends reference specific data points, publications, or events
4. [ ] Landscape components table has at least 5 entries with evolutionary stages
5. [ ] Stakeholder map has at least 3 stakeholders with non-trivial interests described
6. [ ] Uncertainty profile is filled in with ratings and reasoning

### Phase 1 gate checklist

1. [ ] At least 2 user or stakeholder profiles in full JTBD format
2. [ ] Core job-to-be-done uses the "When I... I want to... so I can..." format
3. [ ] Problem statement is falsifiable and specific enough to design an experiment against
4. [ ] Problem type (Cynefin) is classified with reasoning
5. [ ] Assumption map has at least 5 assumptions with criticality and uncertainty scores
6. [ ] Top 3 assumptions by priority score are identified
7. [ ] Effectuation inventory is filled in with specific assets, not generalities

### Phase 2 gate checklist

1. [ ] At least 10 idea candidates from at least 3 different generation methods
2. [ ] Each idea is described in one specific sentence (not vague)
3. [ ] Feasibility, desirability, and viability scores are assigned with brief reasoning
4. [ ] At least 2 concepts selected with key differentiator and riskiest assumption named
5. [ ] Killed ideas have documented reasons for rejection

### Phase 3 gate checklist

1. [ ] Value proposition canvas completed with specific entries (not generic)
2. [ ] Business model canvas has all 9 blocks filled in
3. [ ] Revenue model is specific (pricing, willingness-to-pay evidence, or explicit assumption)
4. [ ] At least 2 experiments designed, each testing one specific assumption
5. [ ] Success metrics have numeric thresholds, not "people like it"
6. [ ] Pre-mortem analysis completed: top 5 ways this could fail in 6 months

### Phase 4 gate checklist

1. [ ] Experiment results documented with actual data
2. [ ] Each experiment result explicitly states whether the threshold was met
3. [ ] Key learnings are specific and actionable
4. [ ] Technical specification (Section 5.2) has all 12 fields populated, including functional requirements, non-functional requirements, architecture overview, data model, external dependencies, known limitations, open technical questions, and production readiness checklist (TBD permitted for fields not exercised)
5. [ ] At least one Technical entry in the Decision log (Section 8) records the tech stack choice with alternatives, rationale, and implications
6. [ ] Implementation log exists with repository link
7. [ ] At least 3 pieces of user feedback collected and documented

### Phase 5 gate checklist

1. [ ] Decision is one of: Go, Kill, Pivot, Loop back (no ambiguity)
2. [ ] Reasoning references specific evidence from the ICD
3. [ ] Dissenting views are recorded (even if there are none, state "none raised")
4. [ ] Next actions table has owners and deadlines
5. [ ] If pivoting, the pivot record documents what is preserved and what changes
6. [ ] Technical specification (Section 5.2) is finalized: TBDs resolved or explicitly carried forward, Production readiness checklist fully populated
7. [ ] Executive summary (`executive_summary.md`) is produced following `framework/executive_summary_template.md`, for all outcomes (Go, Kill, Pivot)
