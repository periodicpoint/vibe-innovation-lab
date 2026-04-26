# Validation methods catalog

A reference catalog of validation methods used in Phase 3 (experiment design) and Phase 4 (experiment execution). Methods are organized by what they validate (demand, value delivery, retention, feasibility, form factor, interaction pattern). Two parallel surfaces are documented: pretotypes for technical artifacts (software, hardware, data products) and analogous methods for institutional artifacts (protocols, pilot designs, service blueprints, policy drafts). The institutional methods are not afterthoughts. They are the canonical way to validate a non-technical innovation at TRL 3 or 4.

## How to use this catalog

1. Identify the assumption to test in one falsifiable sentence (Phase 1 Section 3.3, then sharpened in Phase 3 Step 5).
2. Pick the cheapest method in the catalog that can produce the falsifier.
3. Pre-commit to the numeric threshold before running.
4. Run, record, and route the result.

Do not pick a method because the team likes it. Pick the cheapest method that can fail. If two methods produce the same falsifier and one is cheaper, use the cheaper one.

## Decision aid: which method per risk type

| If the riskiest assumption is about... | Best technical method | Best institutional method | Cost band |
|---|---|---|---|
| Demand exists at all | Smoke test, Fake Door | Sign-up sheet, expression of interest | Low |
| User would actually use it | Mechanical Turk, Concierge | Tabletop walkthrough, mock process run | Low to medium |
| User would pay for it | Concierge with pricing, paywall A/B | Pilot cohort with explicit fee or budget commitment | Medium |
| First-impression coherence | Pinocchio, paper prototype | Read-aloud rehearsal | Low |
| Interaction pattern works | Wizard of Oz | Roleplay with safety facilitator | Medium |
| It is technically buildable | Spike (throwaway implementation) | Method spike (one method run end-to-end on a synthetic case) | Medium |
| Behaviour change holds at scale | Infiltrator (added feature in existing product) | Pilot cohort across multiple sites | High |
| Retention persists past novelty | Concierge over 4 to 8 weeks | Multi-cycle pilot with revisit measurement | Medium to high |

## Pretotypes for technical artifacts

### Fake Door

**What it is.** A signup, click-through, or "buy now" page for a feature that does not yet exist. Visitors who click are routed to a "coming soon, leave your email" page or to an explicit "this was a test" page.

**What it validates.** Demand. Specifically: how many people from a defined source would express interest at a given price point or feature framing.

**Best for.** Phase 3 first-experiment territory. Cheap, fast, falsifiable.

**Threshold pattern.** "At least N signups out of M visitors in T days, with conversion rate above X percent."

**Cost band.** Low (under 200 EUR, under 5 days, including ad spend for traffic).

**Common failure modes.** Visitors arrive with the wrong intent (cheap traffic produces cheap signal). The framing primes the answer. The price point is set to a comfortable number rather than a real one.

**Ethics.** A redirect page must disclose that the feature is being tested, especially if signups would otherwise expect a product. The Fake Door is a demand probe, not a deception experiment.

### Mechanical Turk

**What it is.** Deliver the service manually, behind the scenes, while presenting the front to the user as if it were automated. Named after the eighteenth-century chess automaton with a human inside.

**What it validates.** Value delivery. Whether the output the system would produce, when produced by humans, actually solves the user's problem.

**Best for.** When the risk is "even if we built this, would the result be useful?" Common for AI features, recommendation systems, content generation.

**Threshold pattern.** "User satisfaction score above X out of 10, on N tasks completed manually."

**Cost band.** Medium (a person doing the work for a defined number of users, typically 5 to 20).

**Common failure modes.** The human-produced output is qualitatively different from what the eventual system would produce, so the validation does not transfer. The team underestimates how much labour is required.

### Concierge

**What it is.** A personalized, manual service for a small number of users. Unlike Mechanical Turk, the user knows the team is doing the work directly.

**What it validates.** Retention and willingness to pay. Whether users return after the novelty wears off, and whether they value the service enough to pay (or to commit equivalent budget, time, or attention).

**Best for.** Phase 4 first user-validation. Common for B2B and service-style innovations.

**Threshold pattern.** "At least N out of M users return for a second session within X weeks" plus "at least Y users commit to a paid version or to a budgeted internal pilot."

**Cost band.** Medium to high (depends on the service load per user).

**Common failure modes.** Sample size too small to draw real conclusions. Friend-of-the-team users skew the retention signal. The Concierge experience is over-customized and would not survive at scale.

### Pinocchio

**What it is.** A non-functional prototype that looks real. A wooden block called a phone. A figma mockup that does not click. A cardboard box that mimics a hardware form factor.

**What it validates.** First-impression coherence. Form factor. The user's expectations about what the artifact does.

**Best for.** Hardware, ergonomics, physical interaction. Also useful when the question is "would users even understand what this is?"

**Threshold pattern.** "At least N out of M users correctly describe the artifact's purpose without explanation, within T seconds."

**Cost band.** Low (an afternoon of construction, often).

**Common failure modes.** Users describe what the prototype looks like, not what they would do with it. Easily confused with a "fidelity" question. Pinocchio is about coherence, not polish.

### Wizard of Oz

**What it is.** A working interface where the back-end is a human in another room, performing the operations the eventual system would perform. The user believes they are interacting with software.

**What it validates.** Interaction pattern. Conversational quality. Edge cases the team has not anticipated.

**Best for.** Conversational AI, agents, and any product where the front-end interaction pattern is the primary risk.

**Threshold pattern.** "Task completion rate above X percent across N tasks" or "user retains the artifact past T sessions."

**Cost band.** Medium (the wizard requires sustained attention during the run).

**Common failure modes.** Wizard fatigue degrades the signal in the second hour. Users sense the artificiality and adjust their behaviour.

### Smoke test

**What it is.** A small advertising spend driving traffic to a landing page that promises the product. Functionally similar to Fake Door, but explicitly designed to produce a click-through-rate signal.

**What it validates.** Demand calibration. The cost of acquiring an interested user.

**Best for.** Marketing-channel risk. Whether paid acquisition will be viable.

**Threshold pattern.** "Cost per signup below X EUR over N impressions."

**Cost band.** Low to medium (depends on platform and targeting).

**Common failure modes.** Targeting is too broad and produces inflated CTR. The landing page promises what the product cannot deliver.

### Infiltrator

**What it is.** Add the new concept as a feature to an existing product (your own or a partner's) and measure engagement.

**What it validates.** In-context demand. Behaviour change inside an existing user flow.

**Best for.** Late Phase 4 or post-Phase-5 follow-up. Requires an existing product and the agreement to host the experiment.

**Threshold pattern.** "Feature adoption rate above X percent of active users within T weeks."

**Cost band.** Medium (engineering effort to integrate).

**Common failure modes.** The host product's user base is not the target user base. The integration is rushed and produces a poor experience that taints the signal.

### Spike

**What it is.** A throwaway implementation of the riskiest technical capability, with no production concern. Tests whether the thing is buildable in principle.

**What it validates.** Feasibility. Whether the technology stack can deliver the required capability with the required performance.

**Best for.** Phase 4 when the risk is technical, not market.

**Threshold pattern.** "End-to-end latency below X ms for input size N" or "model accuracy above Y percent on a held-out test set of M examples."

**Cost band.** Medium (engineering time, no productionization).

**Common failure modes.** The spike succeeds but at a cost or complexity that makes the production version unviable. Treat the spike result as a feasibility signal, not a runtime characteristic.

## Methods for institutional artifacts

These methods validate non-technical innovations: protocols, pilot designs, service blueprints, policy drafts, training programs, institutional processes. The goal is the same as for pretotypes (cheapest method that can falsify), the medium is different.

### Tabletop walkthrough

**What it is.** Sit a small group of stakeholders around a table. Walk through the proposed protocol, service flow, or process step by step using the actual artifacts (forms, scripts, decision trees, swimlane diagrams). Pause at each step and ask each participant: what would happen here, who decides, what could go wrong?

**What it validates.** Process coherence. Identifies missing steps, ambiguous handoffs, decision points without owners, gaps in the artifact's information flow.

**Best for.** Protocols, pilot designs, service blueprints. The institutional analogue of a Pinocchio plus Wizard of Oz combination.

**Threshold pattern.** "All steps reach a defined outcome without ambiguity, with at most N gaps identified per walkthrough cycle."

**Cost band.** Low (one session, 2 to 4 hours, with 4 to 8 stakeholders).

**Common failure modes.** Stakeholders defer to the most senior person in the room and do not surface real concerns. The walkthrough is cued by the team rather than driven by the participants.

### Roleplay

**What it is.** Stakeholders or trained actors play the user, the operator, and the antagonist. Run the protocol against deliberately edge-case scenarios. Record what happens, where it breaks, and how operators improvise.

**What it validates.** Robustness under realistic stress. The institutional analogue of a Wizard of Oz, with humans as both front and back.

**Best for.** Crisis protocols, ethical decision protocols, customer-facing service interactions, anything with a high cost of failure.

**Threshold pattern.** "Operator handles N out of M edge-case scenarios within decision-time budget T, without violating the protocol's mandatory steps."

**Cost band.** Medium (preparation of scenarios plus session time, often half a day).

**Common failure modes.** Roleplayers stay in character only superficially. The team selects edge cases that the protocol can handle, not the ones it cannot.

### Read-aloud rehearsal

**What it is.** Read the protocol or script out loud to a non-author (ideally a person from the target user population). Record their face, their questions, the moments they pause. Do not explain, do not paraphrase. The text has to carry itself.

**What it validates.** First-impression coherence of the artifact's surface form. The institutional analogue of Pinocchio.

**Best for.** Patient information leaflets, consent forms, training scripts, public-facing policies, any artifact that will reach the user without an author present.

**Threshold pattern.** "Reader correctly summarizes the document's purpose and required action within X seconds, on N out of M readers."

**Cost band.** Low (under 100 EUR, often less than half a day).

**Common failure modes.** The reader is too close to the team and corrects the prose silently. The team intervenes when the reader stumbles, defeating the purpose.

### Pilot cohort

**What it is.** A small, defined group runs the protocol or service end-to-end for a fixed period. Measure outcomes against pre-committed thresholds. Document deviations and why they happened.

**What it validates.** End-to-end behaviour at small scale. The institutional analogue of Concierge plus Mechanical Turk.

**Best for.** Phase 4 institutional artifacts. The default first validation.

**Threshold pattern.** "Outcome metric M reaches target T for at least N out of P participants within timeframe W, with adverse-event rate below Z."

**Cost band.** Medium to high (depends on cohort size, duration, instrumentation).

**Common failure modes.** Cohort selection is biased (volunteers are unrepresentative). The pilot is over-supported (concierge effect) and would not work without the team in the room. Measurement is post-hoc and uses metrics that were not pre-committed.

### Mock process run

**What it is.** Run the entire institutional process on a synthetic case (a fictional patient, a paper transaction, a simulated incident) with all roles staffed and all artifacts in use.

**What it validates.** Operational viability. Whether the process can actually be run by the people who will run it. The institutional analogue of a Spike.

**Best for.** Phase 4 institutional artifacts where the technical or staffing feasibility is the primary risk.

**Threshold pattern.** "Process completes within time budget T, with all required artifacts produced and all decision points reached."

**Cost band.** Medium (one full run plus debrief).

**Common failure modes.** The mock case is too clean. Real cases have ambiguity that synthetic cases do not. The team narrates what would happen rather than letting it happen.

### Sign-up sheet or expression of interest

**What it is.** A simple form (paper, email list, intranet page) inviting the target user population to express interest in participating in or being affected by the proposed institutional change.

**What it validates.** Demand for participation. Whether the institutional artifact's intended population recognizes the need it addresses.

**Best for.** Pre-pilot demand calibration. The institutional analogue of Fake Door.

**Threshold pattern.** "At least N expressions of interest from population P within T weeks, of whom at least M can articulate a specific personal need the artifact would address."

**Cost band.** Low.

**Common failure modes.** Self-selection produces an unrepresentative population. The framing primes a positive answer.

### Multi-cycle pilot

**What it is.** A pilot cohort run more than once, with measurement specifically comparing first cycle to second cycle (and onwards). Measures whether the effect persists after the novelty fades.

**What it validates.** Retention. Whether outcomes persist past the initial enthusiasm window.

**Best for.** Late Phase 4 or post-Phase-5 follow-up for institutional artifacts.

**Threshold pattern.** "Outcome metric M in cycle 2 is within X percent of cycle 1, across at least Y of Z participants."

**Cost band.** High.

**Common failure modes.** The cycles are too close together (no real fade window). Participant turnover between cycles is not tracked, so cycle-2 results reflect a different cohort.

## Choosing across the catalog

Three rules of thumb.

1. **Cheapest falsifier first.** Pick the method that can falsify the assumption at the lowest cost. Anything else is insurance against the wrong risk.
2. **Match the medium.** A protocol does not need a Fake Door. A software MVP does not need a tabletop walkthrough. Mixed artifacts (a digital service plus an institutional process) need one method per risk surface, not one combined method.
3. **Plan for failure modes upfront.** For each chosen method, name the most likely way it produces a misleading signal. Build a single check into the experiment that would catch it.

## Boundaries

1. The catalog is non-exhaustive. New methods can be added in the Decision log (ICD Section 8) when first used.
2. A method is only valid if its threshold is pre-committed in writing in ICD Section 4.5. Methods without thresholds are demonstrations, not experiments.
3. A method that produces only positive evidence (cannot fail in practice) is not a method. Re-design or pick a different one.
4. Multiple methods on the same assumption do not multiply confidence. Pick the strongest single method and run it well.
