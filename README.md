# Vibe Innovation Lab

A prompt-based framework for human-AI, co-intelligence, co-creation, co-innovation, across the full innovation lifecycle. From pre-concept exploration (TRL -2) to validated learning (TRL 4). Works with any LLM that follows structured prompts.

## Quick start

### With Claude Code

```
/innovate
```

### With any LLM

Paste the contents of `framework/master_orchestrator.md` into a new conversation.

### How it works

The Master Orchestrator asks your starting point, time budget, and biggest uncertainty. It generates a session plan and guides you through the phases. Compressed phases (up to 20 min) run inline. Full phases (60 to 90 min) use the dedicated phase files. The LLM manages the ICD. Between sessions, copy the ICD output to preserve state.

## Framework overview

The Vibe Innovation Framework consists of six phases connected through a shared Innovation Canvas Document (ICD). The process is hub-and-spoke, not a rigid pipeline. Enter at whatever phase matches your uncertainty. Loop back when evidence warrants it.

### Phases and TRL mapping

| Phase | Name | TRL | Artifact | Core question |
|---|---|---|---|---|
| 0 | Strategic framing | -2 to -1 | Situation map | Why are we innovating? Where should we look? |
| 1 | Problem discovery | -1 to 0 | Problem statement | Who has what problem? Why does it matter? |
| 2 | Ideation | 0 to 1 | Idea (concept sketch) | What could we build? |
| 3 | Value architecture | 1 to 2 | Proof of concept (on paper) | Why would anyone care? |
| 4 | Build and validate | 2 to 4 | Spike, prototype, or MVP | Can we build it? Does it work? |
| 5 | Decision | 4 | Go, Kill, Pivot, Loop-back | What did we learn? What happens next? |

### Why the framework stops at TRL 4

TRL 4 produces a validated MVP and a Go, Kill, Pivot, or Loop-back decision. Everything beyond TRL 4 is product development, not innovation. The two disciplines require different feedback loops (assumption-validation in days versus usage-optimization in weeks), different failure modes (building the wrong thing versus building the thing wrong), and different team structures (small cross-functional teams versus specialized delivery teams). A Go decision at TRL 4 is the handoff point. See `framework/trl_specification.md` for the full rationale and the mapping to standard TRL (NASA, ISO 16290).

### Design principles

1. **Hub-and-spoke, not pipeline.** Enter at the phase matching your uncertainty. Loop back when evidence warrants it.
2. **State travels in the ICD.** Each phase reads from and writes to the shared canvas. No context is lost.
3. **Diverge before converge.** Separate idea generation from evaluation.
4. **Red team everything.** Every phase ends with a structured challenge to its own output.
5. **Iteration has a budget.** Max 2 intra-phase, max 2 inter-phase to same target, max 5 total.
6. **Compressed mode available.** Every phase has a time-constrained version.
7. **Bricolage escape hatch.** Minimal viable process when the full version is too heavy.

### Methodological foundations

Synthesizes classical (Stage-Gate, Double Diamond, Design Thinking, Business Model Canvas, JTBD) and modern (Lean Startup, Pretotyping, Effectuation, Wardley Mapping, Cynefin) methodologies with AI-native approaches (LLM-as-divergence-engine, synthetic empathy, red team protocol, vibe coding).

## Repository structure

```
framework/          Innovation process (Master Orchestrator, ICD, TRL spec, 6 phases, principles)
prototype/          Streamlit starter for rapid prototyping (Phase 4)
.claude/skills/     Claude Code skill definitions (/innovate, /innovate-phase, /innovate-status)
.devcontainer/      GitHub Codespaces configuration
```

## License

MIT

## Author

Martin Maga

## Version

2026-04-01T21:11:02+02:00/0b45e9a
