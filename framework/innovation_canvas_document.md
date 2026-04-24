# Innovation canvas document (ICD)

**Date created:** YYYY-MM-DD
**Last updated:** YYYY-MM-DD
**Project name:** [Name]
**Team:** [Names and roles]

## How to use this document

This document is the shared memory of your innovation process. Each phase reads from it and writes back to it. The LLM manages the content. You do not need to edit this document manually.

**How the ICD is saved depends on your environment:**

1. **Project mode** (Claude Code, IDE, Codespace): The ICD is saved as a file automatically. No manual action needed.
2. **Upload mode** (Claude.ai Projects, ChatGPT with uploads): The LLM outputs the complete ICD between clear markers at the end of every phase. Copy and save it. Upload it again to continue in a new session.
3. **Chat mode** (content pasted into any LLM): Same as upload mode. Copy the ICD when prompted and paste it back at the start of a new conversation.

The template structure (headings, field names) is in English. The LLM fills in the content in whatever language the team is working in.

Sections marked **[Phase N output]** indicate which phase is responsible for populating that section. Sections can be revised by later phases if new evidence warrants it. Document all revisions in the decision log.

**Accumulating sections.** Section 5.2 (Artifact specification) is the main accumulating section: it is populated incrementally during Phase 4 as build and design decisions are made, then frozen at Phase 5 exit. Do not wait for Phase 5 to fill it in. The rationale for tech stack, architecture, method, or medium choices decays quickly when reconstructed retrospectively.

## 1. Meta

### 1.1 Project identity

1. **Project name:**
2. **One-sentence description:**
3. **Date initiated:**
4. **Current phase:**
5. **Team members and roles:**

### 1.2 Constraints

1. **Time budget:** (for example, 2-day workshop, 3-month sprint, ongoing)
2. **Financial budget:**
3. **Team size and composition:**
4. **Technical constraints:** (for example, must run on existing infrastructure, must be open source)
5. **Regulatory or policy constraints:**
6. **Organizational constraints:**

### 1.3 Uncertainty profile **[Phase 0 or Orchestrator output]**

Rate each dimension from 1 (low uncertainty) to 5 (high uncertainty):

1. **Problem uncertainty:** Do we know what problem we are solving? [ ]
2. **User uncertainty:** Do we know who the user is and what they need? [ ]
3. **Solution uncertainty:** Do we know how to solve it? [ ]
4. **Market uncertainty:** Do we know if anyone will pay or care? [ ]
5. **Technical uncertainty:** Do we know if it can be built? [ ]
6. **Execution uncertainty:** Do we know if our team can deliver it? [ ]

**Dominant uncertainty type:** [problem, user, solution, market, technical, execution]
**Current TRL:** [integer from -2 to 4, see `trl_specification.md`]
**Recommended entry phase:** [0, 1, 2, 3, 4]

### 1.4 Innovation horizon **[Phase 0 output]**

1. **Classification:** [Horizon 1, 2, or 3]
2. **Rationale:** [one sentence explaining why]
3. **Implication for validation:** [Horizon 1: tight thresholds, Horizon 2: moderate flexibility, Horizon 3: speculative experiments permitted]

## 2. Situation map **[Phase 0 output]**

### 2.1 Strategic context

1. **Why now?** What has changed that makes this relevant?
2. **Search fields:** What domains or opportunity spaces are we exploring?
3. **Signals and trends:** What weak signals or macro trends inform this work?
4. **Strategic context summary:** [3 to 5 self-contained sentences. Designed to survive the pipeline. Phase 5 re-reads this when making the final decision.]

### 2.2 Landscape components

If a Wardley Map was created, describe the key components and their evolutionary stages here. Otherwise, list the major components of the value chain relevant to the project.

| Component | Evolutionary stage | Notes |
|---|---|---|
| | Genesis, Custom, Product, or Commodity | |

### 2.3 Stakeholder map

| Stakeholder | Relationship to project | Influence level | Key interest |
|---|---|---|---|
| | | High, Medium, or Low | |

## 3. Problem space **[Phase 1 output]**

### 3.1 User and stakeholder profiles (JTBD format)

For each key user or stakeholder:

**User type:** [name or archetype]
**Core job-to-be-done:** When I [situation], I want to [motivation], so I can [expected outcome].
**Functional jobs:**
1.
2.
3.

**Emotional jobs:**
1.
2.

**Social jobs:**
1.
2.

**Current workarounds:** How do they solve this today?
**Pains:** What makes the current situation frustrating, costly, or risky?
**Gains:** What would a successful outcome look like?

### 3.2 Problem statement **[Phase 1 output, may be revised by Phase 4]**

**Sharp problem statement:** [One to three sentences. Falsifiable. Specific enough to test.]

**Problem type:** [Cynefin classification: simple, complicated, complex, or chaotic]

**Revision history:** [If revised by Phase 4: original statement, revised statement, evidence for revision]

### 3.3 Assumption map **[Phase 1 output, updated by Phase 3 and Phase 4, consolidated by Phase 5]**

| ID | Assumption | Source | Criticality (1 to 5) | Uncertainty (1 to 5) | Priority score | Status | Evidence |
|---|---|---|---|---|---|---|---|
| A1 | | Phase 1, 3, or 4 | | | Criticality x Uncertainty | Untested, Validated, or Falsified | [specific evidence or "no data"] |

### 3.4 Effectuation inventory (bird-in-hand)

1. **Who we are:** What identity, values, and expertise do we bring?
2. **What we know:** What domain knowledge, data, and skills do we have?
3. **Whom we know:** What networks, partners, and contacts can we leverage?

## 4. Solution space **[Phase 2 and Phase 3 output]**

### 4.1 Idea candidates **[Phase 2 output]**

| ID | Idea (one sentence) | Origin method | Feasibility (1 to 5) | Desirability (1 to 5) | Viability (1 to 5) | Total | Status |
|---|---|---|---|---|---|---|---|
| I1 | | for example, SCAMPER, domain transfer, speculative provocation | | | | Sum | Selected, Parked, Killed |

### 4.2 Selected concept(s) **[Phase 2 output]**

For each selected concept:

**Concept name:**
**Description:** (3 to 5 sentences)
**Key differentiator:** What makes this different from existing approaches?
**Riskiest assumption:** What single assumption, if false, would kill this concept?

### 4.3 Value proposition canvas **[Phase 3 output, confirmed or revised by Phase 4]**

**Customer profile:**
1. Jobs:
2. Pains:
3. Gains:

**Value map:**
1. Products and services:
2. Pain relievers:
3. Gain creators:

**Fit assessment:** Problem-solution fit achieved? [Yes, Partial, No]

### 4.4 Business model canvas **[Phase 3 output, confirmed or revised by Phase 4]**

| Block | Description |
|---|---|
| Customer segments | |
| Value propositions | |
| Channels | |
| Customer relationships | |
| Revenue streams | |
| Key resources | |
| Key activities | |
| Key partnerships | |
| Cost structure | |

### 4.5 Experiment design **[Phase 3 output]**

| ID | Assumption tested | Pretotype type | Success metric | Threshold | Estimated cost and time |
|---|---|---|---|---|---|
| E1 | A1 | for example, Fake Door, Mechanical Turk, Concierge | | | |

## 5. Validation space **[Phase 4 output]**

### 5.1 Experiment results

| Experiment ID | Result | Meets threshold? | Key learning | Implication |
|---|---|---|---|---|
| E1 | | Yes or No | | Proceed, Pivot, or Kill |

### 5.2 Artifact specification **[Phase 4 output, finalized by Phase 5]**

This section applies to technical artifacts (software, hardware, data products) and to non-technical artifacts (protocols, pilot designs, service blueprints, policy drafts, institutional processes). The field labels below keep their engineering-oriented names because most users of this framework build software, but every field has a non-technical analogue named in its gloss. Fill the field using whichever framing fits the artifact. Mixed artifacts (for example, a digital service plus an institutional protocol) populate every applicable field.

This section accumulates during Phase 4 as build and design decisions are made and is frozen at Phase 5 exit. It is the handoff artifact to whoever will take the work forward (engineering team, product team, institutional owner, policy sponsor). TBD entries are permitted during Phase 4 for items that were not exercised. At Phase 5 exit, TBD entries must either be resolved or explicitly carried forward as open questions (item 10) and production or deployment readiness gaps (item 11). The goal is honest coverage for handoff, not engineering or institutional completeness.

1. **Artifact type:** Spike, prototype, or MVP (see `trl_specification.md` for definitions)
2. **Scope:** What is included and what is explicitly excluded
3. **Functional requirements:** Falsifiable capability statements derived from the value map (§4.3) and the experiments that were actually validated (§5.1). Format: "The system must [verb] [object] under [condition]." For institutional artifacts, substitute the subject with the process or service name: "The onboarding protocol must [verb] [object] under [condition]." Mark each requirement as Validated (evidenced by a Phase 4 experiment) or Assumed (carried forward without direct validation).
4. **Non-functional requirements:** Constraints on how the system (or process) must behave. Derived from §1.2 (Constraints) and from observations during Phase 4 user sessions. Cover performance, security, privacy, accessibility, regulatory or policy compliance, and operational constraints. For institutional artifacts, include fairness, participation, auditability, cultural fit, and staffing constraints as equivalent categories. Mark each as Validated, Assumed, or Deferred. Unvalidated NFRs carried forward to the product team or institutional owner are flagged explicitly.
5. **Technology stack and rationale:** Formal record of language, runtime, framework, data store, deployment target, and any other load-bearing technology choices. Each choice cross-references the Decision log entry (§8) where it was made. The tech stack for a prototype is not the tech stack for the product. If the stack is understood to be throwaway, say so here. For institutional artifacts: record the method and medium stack instead (for example, facilitation method, document format, pilot setting, measurement instruments, chosen standards or templates) with the same rationale discipline.
6. **Architecture overview:** Minimum: component list, data flow sketch, and integration boundaries. A single paragraph plus a Mermaid diagram or a text sketch is acceptable at TRL 4. No premature detail. Identify what is custom, what is off-the-shelf, and where the load-bearing complexity sits. For institutional artifacts: document the process or service architecture instead (actors, roles, steps, decision points, handoffs, boundaries). A swimlane sketch or numbered process description is acceptable.
7. **Data model:** Core entities and their relationships as a short table or text-based entity-relationship sketch. TBD entries permitted where the model was not exercised in Phase 4. For institutional artifacts: record the artefact and record model instead (what documents, records, signals, or measurements the process produces, consumes, and retains), or mark the field Not applicable if the artifact has no information model.
8. **External dependencies:** APIs, services, libraries, hosted infrastructure. For each: purpose, licensing, approximate cost, and lock-in risk. Note any dependency that blocks open-source release or has a single vendor. For institutional artifacts: record external dependencies such as partner organizations, regulatory bodies, vendor contracts, funding sources, or shared infrastructure with the same discipline on lock-in and single-source risk.
9. **Known limitations:** Explicit list of what the MVP does not yet do. Merged from the former Implementation log field. Be specific: "Does not handle concurrent edits," not "Some edge cases not covered." For institutional artifacts, be equally specific: "Pilot design does not cover night shifts" rather than "some scenarios not included."
10. **Open technical questions:** Questions the product team will need to answer to reach TRL 5 and beyond. Distinct from assumptions (which belong in §3.3). These are engineering uncertainties surfaced but not resolved in Phase 4. For institutional artifacts: record open design or implementation questions for the receiving owner (for example, unresolved policy choices, uncalibrated thresholds, training needs).
11. **Production readiness checklist:** For each item, mark Validated (demonstrated in Phase 4), Deferred (known gap, must be addressed by the product team), or Out of scope (not applicable to this product). For institutional artifacts, the same Validated, Deferred, or Out of scope marking applies to the deployment readiness items below; adapt interpretation to the domain (for example, *Authentication and authorization* maps to *access and consent mechanisms* in a service pilot, *Monitoring and alerting* maps to *incident and escalation channels*).

| Item | Status | Notes |
|---|---|---|
| Authentication and authorization | Validated, Deferred, or Out of scope | |
| Input validation and error handling | | |
| Observability (logs, metrics, traces) | | |
| Monitoring and alerting | | |
| Deployment pipeline (CI/CD) | | |
| Backup and disaster recovery | | |
| Data protection and privacy compliance | | |
| Accessibility conformance | | |
| Performance and load behaviour | | |
| Documentation (user and operator) | | |

12. **Success criteria:** What the prototype or MVP was required to demonstrate (retained from the original §5.2). Tied directly to experiment success thresholds in §4.5.

### 5.3 Implementation log

1. **Repository:** [URL]
2. **Key files:**
3. **User feedback summary:**

## 6. Decision space **[Phase 5 output]**

### 6.1 Gate decision

**Decision:** [Go, Kill, Pivot, Loop back to Phase N]
**TRL at decision:** [integer from -2 to 4]
**TRL change:** [for example, "TRL 2 to TRL 4" or "TRL 3 regressed to TRL 0 (loop-back to Phase 1)"]
**Reasoning:** (3 to 5 sentences documenting the evidence basis)
**Dissenting views:** (if any)

### 6.2 Next actions

| Action | Owner | Deadline | Dependencies |
|---|---|---|---|
| | | | |

### 6.3 Pivot record (if applicable)

**Original direction:**
**New direction:**
**Evidence that triggered the pivot:**
**What we preserve from the original direction:**

## 7. Iteration log

This section tracks all loop-backs and intra-phase iterations. Each entry records what triggered the loop, what was revised, and what the outcome was.

| Date | Loop type | From phase | To phase (or step) | Trigger evidence | Scope of revision | Outcome |
|---|---|---|---|---|---|---|
| | Intra-phase, Inter-phase, or Pivot | | | | | |

**Iteration counters:**

| Phase | Iterations completed | Max before escalation |
|---|---|---|
| Phase 0 | 0 | 2 |
| Phase 1 | 0 | 2 |
| Phase 2 | 0 | 2 |
| Phase 3 | 0 | 2 |
| Phase 4 | 0 | 2 |
| Phase 5 | 0 | 2 |
| **Total inter-phase loop-backs** | 0 | 5 |

## 8. Decision log

This is the append-only record of all major decisions across all phases: strategic, product, technical, and institutional. Write entries at the moment a decision is made, not retrospectively. Technical and institutional entries recorded here are the source of record for the Technology stack and Architecture overview fields in §5.2 (or their non-technical analogues: method and medium stack, process architecture). For strategic and product decisions, the Alternatives and Implications columns may be left terse when not load-bearing, but should always be filled in for technical and institutional decisions.

| Date | Phase | Type | Decision | Alternatives considered | Rationale | Implications | Evidence |
|---|---|---|---|---|---|---|---|
| | | Strategic, Product, or Technical | | | | | |

## 9. Changelog

| Date | Phase | Changes |
|---|---|---|
| YYYY-MM-DD | Init | Initial creation |
