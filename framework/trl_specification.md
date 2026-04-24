# Extended Technology Readiness Level (TRL) specification

## Purpose

This document defines the extended TRL scale used by the Vibe Innovation Framework. Standard TRL (NASA, ISO 16290) covers technology maturation from basic principles (TRL 1) to flight-proven systems (TRL 9). This scale extends into negative values to cover the pre-concept innovation stages that standard TRL does not address: the space between "we should innovate" and "we know what to build."

The extended TRL serves three functions in this framework:

1. **Diagnostic:** Determine where a team currently stands.
2. **Routing:** Map the team to the appropriate entry phase.
3. **Gate criterion:** Verify that a phase has produced sufficient evidence to advance.

## Scale definition

| TRL | Name | Core question | Artifact | State of knowledge |
|---|---|---|---|---|
| -2 | Strategic intent | Why should we innovate? | None | Direction exists but no defined problem space. The team knows the domain but not what opportunity to pursue. |
| -1 | Problem space identified | Where should we look? | Situation map | Search fields and landscape are mapped. Stakeholders identified. The team knows where to look but has not yet found a specific problem. |
| 0 | Problem defined | Who has what problem? | Problem statement | A falsifiable problem statement exists. Target users are profiled. Assumptions are mapped. The team knows the problem but has no solution. |
| 1 | Solution concept | What could we build? | Idea (concept sketch) | At least one solution concept exists with a key differentiator and identified riskiest assumption. The concept is untested. No working artifact. |
| 2 | Value articulated | Why would anyone care? | Proof of concept (on paper) | Value proposition and business model are articulated. Experiments are designed with success thresholds. The model is unvalidated. The "proof" is analytical, not empirical. |
| 3 | Prototype built | Can we build it? | Spike or prototype | A working artifact exists. A **spike** tests a single technical risk (can this work at all?). A **prototype** demonstrates the core user interaction. Neither is production-ready. Experiments have been executed. Results are measured but not yet synthesized. |
| 4 | Validated MVP | Does it work? | MVP (minimum viable product) | The artifact is an **MVP**: the smallest product that delivers the core value proposition to real users. Experiment results meet or fail thresholds. User feedback is collected. The evidence base is sufficient for a Go, Kill, Pivot, or Loop-back decision. |

## Artifact maturity progression

The framework defines four artifact types at increasing levels of maturity. Each requires the previous level's learnings but not its code. Teams may skip levels (for example, build an MVP directly without a separate spike) if confidence is high enough.

```
Idea ─────> Proof of Concept ─────> Spike / Prototype ─────> MVP
TRL 1       TRL 2                   TRL 3                    TRL 4
concept     analytical proof        working code             user-facing product
no code     no code                 not production-ready     delivers core value
```

1. **Idea** (TRL 1). A concept sketch: what the solution does, for whom, and why it is different. One paragraph or one slide. No code, no business model. Output of Phase 2 (Ideation).

2. **Proof of concept** (TRL 2). An analytical proof that the concept could work: value proposition canvas, business model canvas, experiment designs with success thresholds. Still no code. The "proof" is on paper. Output of Phase 3 (Value architecture).

3. **Spike** (TRL 3). The lightest possible working code that answers a single technical question: "Can this work at all?" A spike tests feasibility, not usability. It may be ugly, hardcoded, and throwaway. Example: a 20-line script that calls an API to verify the data format is usable.

4. **Prototype** (TRL 3). A working artifact that demonstrates the core user interaction. More complete than a spike but still not production-ready. No authentication, no error handling, no edge cases. Example: a Streamlit app with one screen, one input, one output.

5. **MVP** (TRL 4). The minimum viable product: the smallest artifact that delivers the core value proposition to a real user and generates measurable feedback. An MVP is not a prototype with polish. It is the thing that answers "would anyone actually use this?" Example: a deployed Streamlit app that 3 to 5 users interact with, producing feedback quotes and usage metrics.

The distinction between spike and prototype is scope, not quality. A spike answers one technical question. A prototype answers one user interaction question. Both live at TRL 3.

## Phase-to-TRL mapping

Each phase has an entry TRL (minimum required to start) and an exit TRL (what it produces when complete).

| Phase | Name | Entry TRL | Exit TRL | Artifact produced | TRL advancement |
|---|---|---|---|---|---|
| 0 | Strategic framing | -2 | -1 | Situation map | Direction becomes mapped landscape |
| 1 | Problem discovery | -1 | 0 | Problem statement | Landscape becomes defined problem |
| 2 | Ideation | 0 | 1 | Idea (concept sketch) | Problem becomes solution concept |
| 3 | Value architecture | 1 | 2 | Proof of concept (on paper) | Concept becomes articulated value |
| 4 | Build and validate | 2 | 3 or 4 | Spike, prototype, or MVP | Value becomes tested artifact |
| 5 | Decision | 4 | Terminal | Go, Kill, Pivot, or Loop-back | Evidence becomes decision |

Phase 4 spans two TRL levels (2 to 3 to 4) because it combines building and validating. Phase 4 may exit at TRL 3 when a working artifact exists but user validation is missing, or at TRL 4 when an MVP has generated real user feedback against success thresholds. The exit TRL is determined by the evidence produced, not by time.

## Scope boundary: why this framework stops at TRL 4

This framework covers TRL -2 through TRL 4. The scope boundary is deliberate.

TRL 4 produces a validated MVP and a Go, Kill, Pivot, or Loop-back decision. Everything beyond TRL 4 is **product development**, not **innovation**. The two disciplines require different processes, skills, and organizational structures:

| TRL | Activity | Discipline | What changes |
|---|---|---|---|
| -2 to 4 | Innovation (this framework) | Discovery, validation, learning | Assumptions are tested. Pivots are expected. Failure is information. |
| 5 | User feedback loops, A/B testing | Product management | The product exists. Optimization replaces exploration. |
| 6 | Market-ready product (beta) | Product engineering | Scale, reliability, and compliance replace speed. |
| 7 | Production deployment (demonstrator) | Operations, go-to-market | Organizational readiness replaces technical readiness. |

The framework stops at TRL 4 for three reasons:

1. **Different feedback loops.** TRL -2 to 4 operates on assumption-validation cycles (days to weeks). TRL 5+ operates on usage-optimization cycles (weeks to months). Mixing both in one framework dilutes the validation discipline.

2. **Different failure modes.** In TRL -2 to 4, the primary risk is building the wrong thing (solution risk). In TRL 5+, the primary risk is building the thing wrong (execution risk). The governing principles shift from "fail fast" to "scale reliably."

3. **Different team structures.** Innovation teams are small, cross-functional, and empowered to pivot. Product teams are larger, specialized, and optimized for delivery. The handoff from innovation to product is a distinct organizational event, not a gradual transition.

A Go decision at TRL 4 is the handoff point. The deliverables that the product team and leadership receive are:

1. The ICD with a finalized Technical specification (Section 5.2), including functional and non-functional requirements, tech stack with rationale, architecture overview, data model, external dependencies, known limitations, open technical questions, and a populated production readiness checklist.
2. The validated MVP in a repository.
3. The experiment results with threshold comparisons.
4. The consolidated assumption map.
5. A two-page executive summary (`executive_summary.md`) for leadership and external stakeholders.

Kill and Pivot decisions at TRL 4 also produce an executive summary (documenting learnings, reusable assets, and rationale) but do not hand over the MVP repository for product development. The MVP is archived with the ICD. What happens after TRL 4 is the product team's responsibility.

## Advancement criteria

A phase may only claim its exit TRL if the following evidence exists. These criteria are checked during gate assessments.

### TRL -2 to -1 (Phase 0: Strategic framing)

1. A "why now?" rationale exists with specific triggering events (not generic trends).
2. At least 3 search fields are identified with rationale for each.
3. Landscape components are mapped with evolutionary stages.
4. Key stakeholders are identified with influence levels and interests.
5. A strategic context summary (3 to 5 sentences) is documented.
6. Innovation horizon (H1, H2, or H3) is classified with rationale.

### TRL -1 to 0 (Phase 1: Problem discovery)

1. At least 2 user profiles exist in JTBD format with functional, emotional, and social jobs.
2. A falsifiable problem statement exists that is specific, measurable, and solution-free.
3. The problem is classified using Cynefin (simple, complicated, complex, or chaotic).
4. An assumption map exists with at least 5 assumptions scored by criticality and uncertainty.
5. An effectuation inventory (who we are, what we know, whom we know) is documented.

### TRL 0 to 1 (Phase 2: Ideation)

1. At least 10 idea candidates were generated using 3 or more methods.
2. Ideas are scored on feasibility, desirability, and viability (1 to 5 each).
3. 2 to 3 concepts are selected, each with a key differentiator and riskiest assumption.
4. Non-selected ideas are parked (not killed) for potential revisiting.

**Artifact gate:** Each selected concept must be describable in one paragraph (what it does, for whom, why it is different). If a concept cannot be stated this concisely, it is not yet at TRL 1.

### TRL 1 to 2 (Phase 3: Value architecture)

1. A Value Proposition Canvas is complete with fit assessment.
2. A Business Model Canvas covers all 9 blocks.
3. At least 2 experiment designs exist, each with a success metric and quantitative threshold.
4. A pre-mortem analysis identifies the top 5 failure scenarios.
5. The assumption map is updated with business model assumptions.

**Artifact gate:** The proof of concept is analytical. No code exists yet. If the team built something already, they are past TRL 2 and should verify TRL 3 criteria instead.

### TRL 2 to 3 (Phase 4: Build)

1. A working artifact exists (spike or prototype) that runs without errors and demonstrates the core interaction or answers the core technical question.
2. The prototype scope is documented (in-scope, out-of-scope, success criteria).
3. At least one experiment has been executed with measured results.

**Artifact gate:** The artifact must be runnable. Screenshots, mockups, and wireframes are not TRL 3. Working code is.

**Spike vs. prototype:** A spike is sufficient for TRL 3 if the dominant uncertainty is technical ("can this work?"). A prototype is needed if the dominant uncertainty is user-facing ("will anyone use this?").

### TRL 3 to 4 (Phase 4: Validate)

1. The artifact is an MVP: it delivers the core value proposition, not just a demo.
2. Experiment results are compared against success thresholds with clear Yes or No assessment.
3. At least 3 user feedback quotes are collected from observation (not self-report).
4. The assumption map is updated with Validated or Falsified status per tested assumption.
5. Sections 3.2, 4.3, and 4.4 are explicitly confirmed or revised based on evidence.
6. ICD Section 5.2 (Technical specification) has all 12 fields populated (TBD permitted where not exercised), including at least one Technical Decision log entry in Section 8 recording the tech stack choice.

**Artifact gate:** The MVP must have been used by at least 3 people who are not on the team. Internal demos do not count toward TRL 4.

### TRL 4 (Phase 5: Decision)

1. A consolidated assumption map exists (merging Phase 1, 3, and 4 versions).
2. An evidence synthesis table covers all 6 dimensions (problem validity, user fit, solution fit, business viability, technical feasibility, team capability).
3. An unambiguous Go, Kill, Pivot, or Loop-back decision is documented with evidence-based reasoning.
4. Next actions have named owners and deadlines.
5. Dissenting views are recorded.
6. ICD Section 5.2 (Technical specification) is finalized: TBDs resolved or explicitly carried forward as open questions, Production readiness checklist fully populated.
7. An executive summary (`executive_summary.md`) is produced following `framework/executive_summary_template.md`, for all outcomes (Go, Kill, Pivot).

## Relationship to standard TRL

The standard TRL scale (NASA, ISO 16290) begins at TRL 1 (basic principles observed). This framework's TRL 1 (solution concept exists) roughly corresponds to standard TRL 2 (technology concept formulated). The mapping is approximate:

| Extended TRL | Standard TRL equivalent | Artifact | Notes |
|---|---|---|---|
| -2 to -1 | Pre-TRL | Situation map | Not covered by standard scale |
| 0 | Pre-TRL to TRL 1 | Problem statement | Problem defined but no technology concept |
| 1 | TRL 2 | Idea | Technology concept formulated |
| 2 | TRL 3 | Proof of concept (analytical) | Analytical and experimental proof of concept |
| 3 | TRL 4 | Spike or prototype | Technology validated in lab |
| 4 | TRL 5 to 6 | MVP | Technology validated in relevant environment |
| 5 to 7 | TRL 7 to 9 | Product | System prototype through flight-proven (out of scope) |

## TRL regression

TRL can decrease during the process. A loop-back from Phase 4 to Phase 1 means the team's effective TRL drops from 2 or 3 back to -1. This is expected and healthy. The ICD tracks the current TRL, and the iteration log records the regression with the triggering evidence.

TRL regression does not reset earlier deliverables. The ICD retains all prior work. The team re-enters the target phase with the accumulated context, not from scratch. Existing artifacts (spikes, prototypes) are preserved as reference but are not guaranteed to remain valid after the target phase revises its output.
