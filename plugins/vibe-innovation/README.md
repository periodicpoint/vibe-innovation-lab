# vibe-innovation

Innovation framework for human-AI co-creation across TRL -2 through TRL 4. Provides nine slash commands, the Innovation Canvas Document (ICD), the TRL ladder, and a thin phase-orchestrator agent.

## Install

1. Add the marketplace.

```
/plugin marketplace add periodicpoint/vibe-innovation-lab
```

2. Install the plugin.

```
/plugin install vibe-innovation@vibe-innovation-lab
```

## Skills

Skills are namespaced under `vibe-innovation:`. Invoke any skill with `/vibe-innovation:<skill>`.

1. `/vibe-innovation:innovate` runs the entry diagnostic, session plan, ICD initialization, and phase dispatch.
2. `/vibe-innovation:innovate-phase` runs a single phase from 0 through 5.
3. `/vibe-innovation:innovate-status` reports current TRL, open assumptions, loop-back budget, and next step.
4. `/vibe-innovation:innovate-icd` initializes, validates, renders, diffs, or saves the ICD.
5. `/vibe-innovation:innovate-redteam` stress-tests any artifact against adversarial framings.
6. `/vibe-innovation:innovate-experiment` designs one experiment for one assumption with a numeric threshold.
7. `/vibe-innovation:innovate-loopback` runs the eight-step mini-gate when an earlier phase needs revision.
8. `/vibe-innovation:innovate-export` produces the executive summary, decision log, or status report.
9. `/vibe-innovation:chaos` runs the divergent chaos protocol when convergent thinking has locked the option space.

## Where state lives

The ICD persists as a file in your working project, not inside the plugin. Save and reload across sessions.

## Documentation

The full process specification, phase prompts, principles, validation methods catalog, and worked example ICDs live in this plugin's `docs/` directory and are loaded on demand by the skills. Source repository: <https://github.com/periodicpoint/vibe-innovation-lab>.
