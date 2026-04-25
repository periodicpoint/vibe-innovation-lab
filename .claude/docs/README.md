# Vibe Innovation Framework documentation

A prompt-based framework for human-AI co-creation across the full innovation lifecycle, from strategic framing to working prototype. The framework covers technical innovations (software, hardware, data products) and non-technical innovations (protocols, pilot designs, service blueprints, policy drafts, institutional processes) with the same phase structure and the same validation discipline.

## Overview

This framework provides an orchestrator prompt and six phase-specific sub-prompts that guide teams through a complete innovation process. Each phase produces structured output in a shared Innovation Canvas Document (ICD) that accumulates evidence and decisions across the entire lifecycle.

The framework synthesizes classical, battle-proven innovation methodologies (Stage-Gate, Double Diamond, Design Thinking, Business Model Canvas, JTBD) with modern and emerging approaches (effectuation, pretotyping, Wardley Mapping, speculative design, vibe coding, LLM-as-divergence-engine) in a roughly 50/50 blend, weighted per phase.

## Files

| File | Purpose |
|---|---|
| `innovation_canvas_document.md` | Shared state document. Managed by the LLM, not edited manually. |
| `orchestrator.md` | Process navigator. Start here. Routes to phases, runs gates. |
| `trl_specification.md` | Extended TRL scale definition (TRL -2 to 4), advancement criteria, standard TRL mapping. |
| `principles_and_antipatterns.md` | Guiding principles (8), cognitive bias watchlist (8), anti-patterns (6), ICD completeness checklist per phase. |
| `phase_0_strategic_framing.md` | Strategic framing and situation mapping (Wardley Mapping, signals, stakeholders). |
| `phase_1_problem_discovery.md` | Problem discovery and definition (Socratic maieutics, JTBD, Cynefin, Double Diamond D1). |
| `phase_2_ideation.md` | Ideation and concept generation (SCAMPER, persona rotation, constraint injection, domain transfer). |
| `phase_3_value_architecture.md` | Value proposition, business model, experiment design, pre-mortem analysis (Osterwalder, pretotyping). |
| `phase_4_build_and_validate.md` | Build and validate (vibe coding, experiment execution, user testing). |
| `phase_5_decision.md` | Decision and iteration (go, kill, pivot, loop back, affordable loss assessment). |
| `chaos_protocol.md` | Standalone divergent chaos protocol. Originally Step 2.5 of Phase 2, now also exposed as the `/chaos` skill for invocation in any phase or outside any phase. |
| `executive_summary_template.md` | Two-page template for the executive summary produced at Phase 5 exit for leadership and external stakeholders. |

## Extended TRL scale

The framework uses an extended Technology Readiness Level scale (TRL -2 to TRL 4) that covers pre-concept exploration through validated learning. Standard TRL (NASA, ISO 16290) starts at TRL 1. This scale extends into negative values for the innovation stages before a technology concept exists. See `trl_specification.md` for the formal definition, advancement criteria, and mapping to standard TRL.

| TRL | Name | Artifact | Phase | Core question |
|---|---|---|---|---|
| -2 | Strategic intent | None | Phase 0 | Why should we innovate? |
| -1 | Problem space identified | Situation map | Phase 0 exit | Where should we look? |
| 0 | Problem defined | Problem statement | Phase 1 exit | Who has what problem? |
| 1 | Solution concept | Idea (concept sketch) | Phase 2 exit | What could we build? |
| 2 | Value articulated | Proof of concept (on paper) | Phase 3 exit | Why would anyone care? |
| 3 | Prototype built | Spike or prototype (technical or institutional) | Phase 4 (build) | Can we build it? |
| 4 | Validated MVP | MVP (technical or institutional) | Phase 4 (validate) | Does it work? |

Phase 5 (Decision) operates at TRL 4, or at TRL 3 with reduced confidence, and produces a terminal Go, Kill, Pivot, or Loop-back decision. The framework stops at TRL 4 because everything beyond is product development, not innovation (see `trl_specification.md` for the full rationale). Loop-backs regress TRL to the target phase's entry level.

## How to use

### With Claude Code

```
/innovate
/innovate-phase N    (0 through 5)
/chaos               (divergent chaos protocol, on demand)
```

### With any LLM (ChatGPT, Gemini, and so on)

Paste the contents of `orchestrator.md` into a new conversation and follow the entry protocol.

### How the process works (both methods)

1. The Orchestrator runs the entry diagnostic (starting point, team, prior knowledge, success criteria, biggest uncertainty).
2. It assembles a session plan: which phases to run, based on the entry TRL and target exit TRL.
3. Each phase runs from its dedicated prompt file (`phase_0` through `phase_5`) and closes only when its output contract is satisfied. There is no abbreviated variant.
4. The LLM manages the ICD. Between sessions, copy the ICD output to preserve state.

Solo innovators, teams, and workshops all use the same process. The Orchestrator adapts based on the entry diagnostic.

## Design principles

1. **Hub-and-spoke, not pipeline.** The process is not strictly linear. Enter at the phase that matches your uncertainty. Loop back when evidence warrants it.
2. **State travels in the ICD.** Each phase reads from and writes to the shared canvas. No context is lost between sessions.
3. **Wayfinding at every transition.** Every phase opening, step transition, and phase closing follows a consistent orientation pattern: goal, current state, previous result, next action, what is needed from the user. Users always know where they are.
4. **Loop-back at any point.** Any phase can trigger a return to any earlier phase via a mini-gate assessment. Intra-phase iteration is also supported. Iteration counters prevent infinite loops.
5. **Diverge before converge.** Every phase that generates options separates idea generation from idea evaluation. Phase 2 includes a human-AI brainwriting warm-up for teams that start without ideas.
6. **Red team everything.** Every phase ends with a structured challenge to its own output.
7. **Quality-gated advancement.** A phase closes only when its output contract is satisfied. The framework does not manage time, because the LLM is not a reliable timekeeper. What matters is that each phase hands the next one robust, evidence-grounded input.
8. **Introduce, do not assume.** Every technical term and acronym is explained at first use. Concise by default, verbose on demand.
9. **Each phase has a distinct persona.** The six phases are delivered by six named archetypes (Navigator for the Orchestrator, Cartographer for Phase 0, Midwife for Phase 1, Improviser for Phase 2, Architect for Phase 3, Maker for Phase 4, Judge for Phase 5), each with its own voice, tone, and signature moves. Continuity of process does not mean continuity of register. Different uncertainties demand different kinds of attention, and the persona layer makes the shift explicit so that users feel the phase change, not only read about it.

## Methodological foundations

### Classical (50%)

1. Stage-Gate (Robert G. Cooper)
2. Double Diamond (Design Council)
3. Design Thinking (Stanford d.school, IDEO)
4. Business Model Canvas and Value Proposition Canvas (Osterwalder and Pigneur)
5. Jobs-to-be-Done (Christensen, Ulwick)
6. SCAMPER and TRIZ

### Modern and hybrid (50%)

1. Lean Startup (Eric Ries)
2. Pretotyping (Alberto Savoia)
3. Effectuation (Saras Sarasvathy)
4. Bricolage (Baker and Nelson)
5. Wardley Mapping (Simon Wardley)
6. Speculative Design (Dunne and Raby)
7. Design Sprint (Jake Knapp)
8. Cynefin Framework (Dave Snowden)
9. Discovery-Driven Planning (McGrath and MacMillan)

### AI-native

1. LLM-as-divergence-engine (persona rotation, constraint injection, domain transfer)
2. Synthetic empathy simulation
3. Red team protocol
4. Vibe coding (human steers, AI codes)

## Default tech stack for prototyping

For technical innovations, the default stack is:

1. Python with uv (backend, data, scripting)
2. TypeScript with Bun (frontend, interaction)
3. Git (version control)
4. Streamlit (rapid web prototypes)
5. Vue.js with Vite (complex interactive frontends)

For non-technical innovations, the default medium stack is Pandoc Markdown for protocol drafts, pilot designs, and service blueprints, with Mermaid for process diagrams and swimlane sketches. Git is used for version control of institutional artifacts as well. Phase 4 Step 3 (Method and medium selection) records the full stack for a given pilot.

## License

MIT

