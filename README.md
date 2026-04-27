# Vibe Innovation Lab

![Last commit](https://img.shields.io/github/last-commit/periodicpoint/vibe-innovation-lab)

A prompt-based framework for human-AI co-creation across the full innovation lifecycle. From pre-concept exploration to validated learning. Works with any LLM (Large Language Model) that follows structured prompts.

## What this is

The Vibe Innovation Framework guides you from a vague idea (or no idea at all) to a tested prototype with a clear Go, Kill, or Pivot decision. An AI acts as your thinking partner: it asks questions, challenges assumptions, structures your thinking, and generates prototype code when you are ready to build.

You do not need to write code or have technical skills to use this framework. You describe what you want in plain language. The AI does the rest.

## Key terms

| Term | Meaning |
|---|---|
| **TRL** (Technology Readiness Level) | A scale from -2 to 4 that measures how mature your innovation is. -2 means "we do not even know what to build yet." 4 means "we built it, tested it, and know it works." |
| **ICD** (Innovation Canvas Document) | A shared document that the AI fills in as you work through the phases. It accumulates all your findings, decisions, and evidence in one place. |
| **MVP** (Minimum Viable Product) | The simplest possible version of your product that lets you test whether people actually want it. |

## Getting started: step by step

### Option A: install as Claude Code plugin (recommended)

Use this when you have a local Claude Code installation and want the framework available in any working directory.

1. In Claude Code, run `/plugin marketplace add periodicpoint/vibe-innovation-lab`.
2. Run `/plugin install vibe-innovation@vibe-innovation-lab`.
3. Invoke `/vibe-innovation:innovate` to start the entry diagnostic.
4. The skill loads the framework from the plugin cache, asks the diagnostic questions, and guides you through the phases.

All nine skills are namespaced under `vibe-innovation:` (for example `/vibe-innovation:innovate-phase`, `/vibe-innovation:chaos`).

### Option B: with Claude Code in GitHub Codespaces (no install required)

Use this for one-off runs or workshops without touching a local setup.

1. Open the repository in a GitHub Codespace (green "Code" button on GitHub, then "Create codespace on main").
2. Wait until the environment finishes loading (1 to 2 minutes).
3. Open the terminal in VS Code.
4. Type `claude` and press Enter to start Claude Code.
5. Type `/innovate` and press Enter.
6. Claude loads the framework automatically, asks your starting point, team, prior knowledge, success criteria, and biggest uncertainty, then guides you through the process.

### Option C: with any other LLM (ChatGPT, Copilot, Gemini, Mistral, and so on)

1. Open the repository in a GitHub Codespace (same as above).
2. Open the file `.claude/docs/orchestrator.md` in the repository. Click "Raw" to see the plain text. Copy everything.
3. Open your preferred LLM in a separate browser tab.
4. Paste the entire contents into a new conversation.
5. The LLM will start the entry diagnostic and guide you through the process.

### What happens next (all options)

1. The Orchestrator asks about your starting point, team, prior knowledge, success criteria, and biggest uncertainty.
2. It maps your situation to a phase and assembles a session plan (which phases to run).
3. You work through the phases. The AI asks questions, you answer. The AI fills in the ICD. Each phase closes only when its output contract is met.
4. In Phase 4 (Build), the AI generates Streamlit code. You copy it into `prototype/app.py`, and the app updates automatically in your browser.
5. Between sessions: copy the ICD output and save it. Paste it back when you resume.

## Comparison: the three options

| Aspect | Plugin install (Option A) | Codespaces (Option B) | Any other LLM (Option C) |
|---|---|---|---|
| Setup | `/plugin install vibe-innovation@vibe-innovation-lab` | Open repo in Codespaces, run `claude` | Copy `.claude/docs/orchestrator.md` into LLM chat |
| Skill prefix | `/vibe-innovation:innovate` | `/innovate` | None, free-form chat |
| Framework loading | Automatic from plugin cache | Automatic from `.claude/` | Manual paste |
| Phase transitions | Automatic dispatch | Automatic dispatch | Say "Bitte weiter mit Phase N" |
| ICD management | Saved as file in working project | Saved as file in the project | Copy-paste between sessions |
| Prototyping (Phase 4) | AI writes to `prototype/app.py` of your project | AI writes to repo `prototype/app.py` | AI generates code, you copy it |
| State between sessions | Preserved in project files | Preserved in project files | You must save and re-paste the ICD |
| Cost | Requires Anthropic API key or Claude subscription | Anthropic key plus Codespaces minutes | Works with free LLM tiers |

All paths run the same process, the same phases, and produce the same outputs.

## Framework overview

The framework consists of six phases connected through a shared ICD. The process is hub-and-spoke, not a rigid pipeline. Enter at whatever phase matches your uncertainty. Loop back when evidence warrants it.

### Phases and TRL mapping

| Phase | Name | TRL | Core question | What you get |
|---|---|---|---|---|
| 0 | Strategic framing | -2 to -1 | Why are we innovating? Where should we look? | Situation map |
| 1 | Problem discovery | -1 to 0 | Who has what problem? Why does it matter? | Problem statement |
| 2 | Ideation | 0 to 1 | What could we build? | Idea (concept sketch) |
| 3 | Value architecture | 1 to 2 | Why would anyone care? | Value proposition, business model, experiment design |
| 4 | Build and validate | 2 to 4 | Can we build it? Does it work? | Working prototype (spike or MVP) |
| 5 | Decision | 4 | What did we learn? What happens next? | Go, Kill, Pivot, or Loop-back decision |

### Where to enter

You do not have to start at Phase 0. Enter at the phase that matches where you are right now.

| Your situation | Start at |
|---|---|
| No topic, only a general direction | Phase 0 (Strategic framing) |
| Problem space mapped, no specific problem yet | Phase 1 (Problem discovery) |
| Problem defined, no solution idea | Phase 2 (Ideation) |
| Solution concept exists, value unclear | Phase 3 (Value architecture) |
| Value articulated, no prototype yet | Phase 4 (Build and validate) |
| Prototype built and tested, decision pending | Phase 5 (Decision) |

### Why the framework stops at TRL 4

TRL 4 produces a validated MVP and a Go, Kill, Pivot, or Loop-back decision. Everything beyond TRL 4 is product development, not innovation. The two disciplines require different feedback loops, different failure modes, and different team structures. A Go decision at TRL 4 is the handoff point to a product team. See `.claude/docs/trl_specification.md` for the full rationale and the mapping to standard TRL (NASA, ISO 16290).

### Design principles

1. **Hub-and-spoke, not pipeline.** Enter at the phase matching your uncertainty. Loop back when evidence warrants it.
2. **State travels in the ICD.** Each phase reads from and writes to the shared canvas. No context is lost.
3. **Diverge before converge.** Separate idea generation from evaluation.
4. **Red team everything.** Every phase ends with a structured challenge to its own output.
5. **Iteration has a budget.** Max 2 intra-phase, max 2 inter-phase to same target, max 5 total.
6. **Quality-gated advancement.** A phase closes only when its output contract is satisfied. The framework does not manage time. What matters is that each phase hands the next one robust, evidence-grounded input.

### Methodological foundations

Synthesizes classical (Stage-Gate, Double Diamond, Design Thinking, Business Model Canvas, Jobs-to-be-Done) and modern (Lean Startup, Pretotyping, Effectuation, Wardley Mapping, Cynefin) methodologies with AI-native approaches (LLM-as-divergence-engine, synthetic empathy, red team protocol, vibe coding).

## Repository structure

```
.claude-plugin/     Marketplace manifest (marketplace.json) for plugin distribution
plugins/            Plugin payload synced from .claude/, distributed via the marketplace
                    (.claude-plugin/plugin.json, skills/, agents/, docs/, schemas/)
.claude/docs/       Innovation process (Orchestrator, ICD, TRL spec, 6 phases, principles,
                    chaos, red team, loop-back, validation methods, personas, glossary,
                    institutional templates, bias field guide, two worked example ICDs)
.claude/skills/     Claude Code skill definitions (/innovate, /innovate-phase,
                    /innovate-status, /innovate-icd, /innovate-redteam, /innovate-experiment,
                    /innovate-loopback, /innovate-export, /chaos)
.claude/agents/     Phase orchestrator agent (thin skill sequencer)
.claude/commands/   Slash command discovery layer
.claude/rules/      Glob-bound editing rules (python, markdown, streamlit)
.claude/schemas/    JSON schema for the Innovation Canvas Document
prototype/          Streamlit starter for rapid prototyping (Phase 4)
.devcontainer/      GitHub Codespaces configuration (auto-setup for workshops)
mise.toml           Lint, structure check, ICD validate, format, sync-plugin, check-plugin
```

`.claude/` is the editable source of truth. `plugins/vibe-innovation/` is regenerated from it via `mise run sync-plugin`, which copies the four subdirectories and rewrites file paths in skill bodies from `.claude/docs/...` to `${CLAUDE_SKILL_DIR}/../../docs/...` so the skills resolve correctly inside the plugin cache. Run `mise run check-plugin` to verify the plugin payload is in sync.

The full process specification, including the Orchestrator prompt and all six phase prompts, lives under `.claude/docs/`. Browse `.claude/docs/README.md` for the file index. Users on any LLM other than Claude Code can copy-paste these files directly.

## Troubleshooting

| Problem | Solution |
|---|---|
| Streamlit app not visible | Open the PORTS tab in VS Code, find port 8501, set visibility to "Public", click the globe icon |
| App crashes after pasting code | Copy the full error message from the terminal and paste it back into the LLM |
| LLM loses context mid-session | Start a new conversation, paste the orchestrator again, then paste your most recent ICD |
| ChatGPT says the text is too long | Use a model with a larger context window (GPT-4o, Claude, Gemini Pro) |
| Codespace takes long to start | Normal for first creation (1 to 2 minutes). Subsequent starts are faster |

## License

MIT

## Author

Martin Maga

## GitHub Actions: Automatisierung

Dieses Repo enthält ein generisches GitHub-Actions-Template, das zeigt, wie Python-Logik (zum Beispiel die gleiche Logik aus einer Streamlit-App) als automatisierter, geplanter Workflow laufen kann, ohne dass jemand einen Button drückt.

### Was im Repo liegt

1. `.github/workflows/scheduled-task.yml` definiert den Workflow (Cron-Schedule plus manueller Trigger).
2. `scripts/main.py` ist der Skript-Einstiegspunkt. Body ist beispielhaft mit OpenAI-Report-Generierung gefüllt und beliebig austauschbar.
3. `requirements.txt` listet die Python-Dependencies, die der Workflow installiert.
4. `input/` und `output/` sind die Standardpfade für Eingabe- und Ausgabe-Dateien.

### Wie ihr es anpasst

1. **Logik austauschen**: Body von `main()` in `scripts/main.py` durch eure Task-Logik ersetzen (Datei-Konvertierung, Datenaggregation, API-Aufrufe, Scraping, was auch immer).
2. **Dependencies ändern**: in `requirements.txt` Pakete ergänzen oder entfernen.
3. **Schedule ändern**: in `scheduled-task.yml` den `cron`-Ausdruck anpassen. Hilfreiches Tool: crontab.guru.
4. **Secrets nutzen**: weitere `env:`-Einträge im Workflow ergänzen und entsprechende Secrets in den Repo-Settings anlegen.

### Manuell auslösen

1. Gehe im Repo auf den Tab **Actions**.
2. Wähle links den Workflow **scheduled-task**.
3. Klicke rechts auf **Run workflow**.
4. Warte, bis der Job grün wird, und lade die Outputs als Artifact herunter.

### API Key als Secret anlegen (für das Beispiel)

1. Gehe im Repo auf **Settings** → **Secrets and variables** → **Actions**.
2. Klicke auf **New repository secret**.
3. Name: `OPENAI_API_KEY`, Value: dein API Key.
4. Klicke auf **Add secret**.
