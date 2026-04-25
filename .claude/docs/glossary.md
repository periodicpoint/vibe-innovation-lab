# Glossary

A consolidated index of terms used across the framework. Each entry has a short definition, a phase pointer (where the term first appears or is most load-bearing), and a source pointer (the methodologist or canonical reference). Use this glossary as the lookup surface during a session. The standard introductions for first-use are in `orchestrator.md` (Glossary of key terms) and remain the source of record for the introduction wording.

## Core process

1. **Innovation Canvas Document (ICD).** The shared accumulating document for an entire innovation project. Each phase reads from and writes to it. See `innovation_canvas_document.md`. Cross-phase memory.
2. **Technology Readiness Level (TRL).** A scale from -2 (no direction) to 4 (validated MVP) used in this framework. Standard NASA or ISO 16290 TRL starts at 1. The framework's extended scale adds the pre-concept stages. See `trl_specification.md`.
3. **Phase contract.** The input, output, deliverables, and downstream consumers of a phase. Each phase prompt declares its contract under the heading *Phase contract*.
4. **Output contract.** The set of items a phase must produce before it can close. The phase advances when each item is satisfied and the gate checklist (`principles_and_antipatterns.md`) is met.
5. **Mini-gate assessment.** The eight-step runbook in `loop_back_protocol.md` that decides whether and how to loop back. Triggered manually or by a phase Step 7 challenge.
6. **Quality-gated advancement.** The framework does not run on time budgets. A phase advances only when its output contract is satisfied. See `orchestrator.md`.
7. **Loop-back.** A controlled return to an earlier phase or to an earlier step inside the current phase, triggered by new evidence. Three types: intra-phase iteration, inter-phase loop-back, pivot loop. Budgets enforced (Principle 8).
8. **Iteration counter.** The bookkeeping per phase in ICD Section 7. Maximum 2 intra-phase iterations and 2 inter-phase loop-backs to the same target. Maximum 5 total inter-phase loop-backs.
9. **Kill threshold rule.** Any critical assumption falsified in two separate cycles cannot be revived. Concepts depending on it must Kill or Pivot. See `orchestrator.md`.

## Discovery and framing

1. **Wardley Map.** A visual tool that maps components of a value chain by their maturity (genesis, custom, product, commodity) and position relative to the user. Phase 0. Source: Simon Wardley (2005 onwards).
2. **Cynefin Framework.** A sense-making model with four domains (simple, complicated, complex, chaotic) used to choose the right strategy for a given problem type. Phase 1. Source: Dave Snowden, IBM Cynefin Centre (1999 onwards).
3. **Three Horizons.** A classification of innovation activity into Horizon 1 (incremental), Horizon 2 (adjacent), Horizon 3 (transformative). Phase 0 Section 1.4. Source: McKinsey, also Bill Sharpe.
4. **Strategic context summary.** A 3 to 5 sentence pipeline-survival summary of *why now*, search fields, signals, and stakeholders. Phase 0 output. Re-read by Phase 5.
5. **Search field.** A bounded domain or opportunity space the team explores before fixing on a problem. Phase 0 Step 3.
6. **Stakeholder map.** A table of stakeholders with their relationship, influence level, and key interest. Phase 0 Section 2.3.

## Problem and need

1. **Jobs-to-be-Done (JTBD).** A framework for understanding user needs as outcomes rather than features. Format: "When I [situation], I want to [motivation], so I can [expected outcome]." Phase 1. Source: Christensen, Ulwick.
2. **Functional, emotional, and social jobs.** The three dimensions of a JTBD profile. Functional: the practical task. Emotional: how the user wants to feel. Social: how the user wants to be perceived.
3. **Sharp problem statement.** A one-to-three-sentence falsifiable description of the problem, specific enough to design experiments against. Phase 1 output.
4. **Effectuation.** An entrepreneurial decision-making logic that starts from available means (who you are, what you know, whom you know) rather than from a fixed goal. Phase 1 Section 3.4. Source: Saras Sarasvathy.
5. **Bird-in-hand inventory.** The effectuation inventory of identity, knowledge, and network. Phase 1.
6. **Assumption.** A testable belief the project depends on. Recorded in ICD Section 3.3 with criticality, uncertainty, priority score (criticality times uncertainty), status (Untested, Validated, Falsified), and evidence.
7. **Riskiest assumption.** The single belief whose falsification would invalidate a concept. Required for every Phase 2 selected concept.

## Ideation and concepts

1. **SCAMPER.** A creativity checklist with seven operators: Substitute, Combine, Adapt, Modify, Put to other use, Eliminate, Reverse. Phase 2. Source: Bob Eberle, drawing on Alex Osborn.
2. **TRIZ.** A systematic invention methodology that identifies cross-domain solution patterns, originally from Soviet engineering. Phase 2. Source: Genrich Altshuller.
3. **Morphological analysis.** A systematic exploration of all possible combinations of design parameters, useful for surfacing non-obvious concepts.
4. **Persona rotation.** An LLM-native divergence technique: solve the problem as if you were a different archetype (a child, a regulator, a competitor, a hostile user). Phase 2 Method 2.
5. **Constraint injection.** An LLM-native divergence technique: solve the problem under an artificial constraint (no screen, no internet, one afternoon, a hundred euros).
6. **Domain transfer.** Take a solution pattern from a distant domain and apply it to the current problem.
7. **Speculative provocation.** An exaggerated or absurd version of the problem, used to free the team from default assumptions. Phase 2 Method 5.
8. **Brainwriting.** A divergent ideation technique where each participant writes ideas independently before any discussion, used to bypass groupthink. Phase 2 Step 2.
9. **Chaos protocol.** A side protocol for radical divergence by informational immersion. See `chaos_protocol.md`. Phase 2 Step 2.5 or standalone.
10. **Feasibility, desirability, viability (FDV).** The three-axis scoring used in Phase 2 convergence. Feasibility: can it be built? Desirability: do users want it? Viability: does it sustain a business or institutional model?

## Value and business model

1. **Value Proposition Canvas (VPC).** A two-sided template that maps customer profile (jobs, pains, gains) against value map (services, pain relievers, gain creators). Phase 3 Section 4.3. Source: Alexander Osterwalder, Yves Pigneur.
2. **Business Model Canvas (BMC).** A nine-block one-page overview of how a business creates, delivers, and captures value. Phase 3 Section 4.4. Source: Osterwalder, Pigneur.
3. **Lean Canvas.** A faster nine-block alternative to BMC for early-stage ideas, replacing some BMC blocks with problem, solution, key metrics, unique value proposition, unfair advantage. Source: Ash Maurya.
4. **Pre-mortem.** An exercise in which the team imagines, six to eighteen months ahead, that the project has failed, and works backwards to identify the most likely failure modes. Phase 3 Step 6. Source: Gary Klein.
5. **Affordable loss assessment.** An effectuation-derived framing in which a team commits in advance to the maximum loss it can absorb, rather than projecting upside. Phase 5 Step 4.

## Validation

1. **Pretotyping.** Testing whether anyone wants a product before building it. Lightweight fakes that gather demand signals at minimal cost. Source: Alberto Savoia.
2. **Fake Door.** A pretotype: a signup or click-through page for a feature that does not yet exist. See `validation_methods.md`.
3. **Mechanical Turk.** A pretotype: humans deliver the service behind an automated-looking interface.
4. **Concierge.** A pretotype: a personalized manual service for a small number of users, with the team explicitly in the loop.
5. **Pinocchio.** A pretotype: a non-functional prototype that looks real, used to validate first-impression coherence.
6. **Wizard of Oz.** A pretotype: a working interface where the back-end is a human in another room.
7. **Smoke test.** A pretotype: ad-driven traffic to a landing page measuring cost-per-signup.
8. **Infiltrator.** A pretotype: the new concept is added as a feature to an existing product.
9. **Spike.** A throwaway implementation of the riskiest technical capability with no production concern. Phase 4.
10. **Tabletop walkthrough.** An institutional method: stakeholders walk through a protocol or service blueprint step by step. The institutional analogue of Pinocchio plus Wizard of Oz.
11. **Roleplay.** An institutional method: stakeholders or actors play roles to stress-test a protocol against edge-case scenarios.
12. **Read-aloud rehearsal.** An institutional method: a non-author reads the artifact out loud while the team observes pauses and questions.
13. **Pilot cohort.** An institutional method: a defined group runs the protocol end-to-end for a fixed period.
14. **Mock process run.** An institutional method: the entire process is run on a synthetic case end-to-end.
15. **Multi-cycle pilot.** An institutional method: a pilot run more than once, comparing later cycles to the first.
16. **Falsifier.** The specific observation that would convince the team an assumption is false. Required before designing any experiment.
17. **Threshold.** The pre-committed numeric value that separates Validated from Falsified for a given experiment.

## Decision and governance

1. **Gate decision.** Phase 5 terminal output: Go, Kill, Pivot, or Loop-back. ICD Section 6.1.
2. **Pivot.** A direction change grounded in evidence. Preserves learnings from the original direction. Phase 5 Section 6.3.
3. **Kill.** Stop the project. Document learnings. Kill is a first-class outcome, not a failure.
4. **Go.** Hand off to the product team or institutional owner with the artifact specification and exec summary.
5. **Loop-back.** Return to an earlier phase with new evidence. See `loop_back_protocol.md`.
6. **Decision log.** Append-only register in ICD Section 8 of all major Strategic, Product, Technical, and Institutional decisions across phases.
7. **Iteration log.** Append-only record in ICD Section 7 of all loop-backs and intra-phase iterations.
8. **Executive summary.** A two-page distilled view of a completed Phase 5 project. See `executive_summary_template.md`.

## Methodological foundations

1. **Stage-Gate.** A linear development process with formal gate decisions between stages. The framework borrows the gate discipline. Source: Robert G. Cooper.
2. **Double Diamond.** A four-phase design process (Discover, Define, Develop, Deliver) emphasizing diverge-then-converge in both problem and solution space. Source: UK Design Council.
3. **Design Thinking.** Empathize, Define, Ideate, Prototype, Test. Source: Stanford d.school, IDEO.
4. **Lean Startup.** Build-Measure-Learn loops with validated learning at each step. Source: Eric Ries.
5. **Bricolage.** Making do with the resources at hand. Source: Baker and Nelson, after Lévi-Strauss.
6. **Speculative Design.** Designing as a way to ask questions about possible futures. Source: Anthony Dunne, Fiona Raby.
7. **Design Sprint.** A five-day structured process for prototyping and testing a single risk. Source: Jake Knapp at Google Ventures.
8. **Discovery-Driven Planning.** A planning approach for high-uncertainty ventures that surfaces and tests assumptions before committing resources. Source: Rita Gunther McGrath, Ian C. MacMillan.

## AI-native and contemporary

1. **LLM-as-divergence-engine.** Using a language model to generate idea variants across persona, constraint, domain, and provocation axes. Phase 2.
2. **Synthetic empathy simulation.** Using an LLM to simulate a user persona for early-stage feedback, distinct from but complementary to real user research.
3. **Red team protocol.** Systematic adversarial challenge of an artifact. See `red_team_protocol.md`.
4. **Vibe coding.** Human steers, AI codes. The team specifies intent and the LLM generates the implementation, with the team validating. See `phase_4_build_and_validate.md`.

## Cross-references

1. **Persona reference.** All seven framework personas are consolidated in `personas.md`.
2. **Validation method catalog.** All pretotypes and institutional methods are catalogued in `validation_methods.md`.
3. **Loop-back runbook.** The eight-step mini-gate procedure is in `loop_back_protocol.md`.
4. **Red team protocol.** Lens catalog and question sets are in `red_team_protocol.md`.
5. **Bias and anti-pattern detection.** Detection heuristics for the eight cognitive biases on the watchlist are in `bias_field_guide.md`. Source list and counter-measures are in `principles_and_antipatterns.md`.
