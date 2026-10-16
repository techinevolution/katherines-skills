---
name: project-docs-bootstrap
description: Create top-level project orientation docs or reconcile existing docs with verified implementation progress. Use for documentation-first setup, project plans, architecture docs, agent onboarding, and documentation updates before handoff, PR, or merge.
---

# Project Docs Bootstrap

## Goal

Create and maintain concise, non-overlapping project compass docs. Help a generalist user and future coding agents understand what the project is, what currently works, where it is going, and what to do next.

## Choose the Workflow

Read the user's request and inspect the existing repo and project docs. Use **Create** for missing project orientation docs and **Reconcile** for docs that need to reflect current work. A task may need both. Preserve useful existing structure and filenames.

If a critical product or architecture decision is missing, ask the smallest necessary clarification. Use `TODO(user): ...` only for genuinely unknown information.

### Create

1. Establish the intended product, current repo state, and agreed technical direction.
2. Create the applicable docs below using `references/doc-templates.md` for compact starter shapes.
3. Separate intended behavior from implemented and validated behavior. Do not invent commands or claim planned features work.
4. Check that current status, next work, links, and document boundaries agree.

### Reconcile

1. Establish what is implemented and what has been validated from relevant code, changes, tests, and observed behavior. State validation gaps; code inspection alone does not prove runtime behavior.
2. Compare that evidence with every affected milestone, including later slices and deferred work. Completion depends on implemented behavior and validation, not position in the plan.
3. Mark supported completion wherever it appears. Split partially completed items into what works and what remains; do not mark the whole item done.
4. Update every affected occurrence across project docs, including summaries, architecture, checklists, and optional briefs. Remove stale current-status claims while preserving useful decision history and deferred work that remains deferred.
5. Make the current state and next useful slice coherent. Verify documented commands and links where practical, and label unverified commands.

In the final response, list docs changed, validation and its limits, remaining placeholders or blockers, and the recommended next slice from `PLAN.md`.

## Stop Rules

- Documentation work does not authorize feature implementation. If implementation is already part of the user's request, continue within that scope after the docs are ready.
- Resolve stale status claims from evidence. Ask when conflicts between the outline, plan, and architecture require a product or architecture decision that the user has not made.
- Ask before deciding an undefined privacy or security boundary; do not put private local context into shareable docs.
- Do not create huge process documents. These files are a compass, not a bureaucracy.

## Default Doc Set

For Create, use the following core set. For Reconcile, update affected docs; add missing docs only when needed for the request:

- `README.md`: user/developer overview, current status, quick start, main workflows, important directories, and links to top-level docs.
- `AGENTS.md`: coding-agent operating instructions, reading order, commands, conventions, boundaries, validation, and final report expectations.
- `PROJECT_OUTLINE.md`: product vision, intended end state, audience, workflows, features, UX expectations, success examples, non-goals, and non-negotiable boundaries.
- `PLAN.md`: current checkpoint, current goal, architecture shape, ranked next slices, recommended next slice, deferred work, open questions, validation path, and stop rules.
- `DECISIONS.md`: major product/architecture/safety decisions and why they were made.
- `TODO.md`: small loose cleanup tasks only.

Create `ARCHITECTURE.md` when the project has multiple packages, services, layers, data flows, integrations, persistence, security/privacy boundaries, or non-obvious technical structure. Skip it for tiny prototypes where `README.md` and `PLAN.md` are enough.

Create `PROJECT_BRIEF.md` only when `PROJECT_OUTLINE.md` is long or conceptual and the repo needs a short preload summary.

## Document Boundaries

- `PROJECT_OUTLINE.md` is where the project is trying to go. Do not put current implementation status, test commands, tiny TODOs, or agent behavior rules there.
- `PLAN.md` is how to move from the current repo state toward the outline. Keep architecture to a short current-shape summary and link to `ARCHITECTURE.md` when present.
- `ARCHITECTURE.md` is how the project is built or intended to be built. Include repo structure, entry points, data flow, persistence, integrations, validation/build shape, important invariants, and technical boundaries. Do not put product vision, roadmap slices, agent behavior rules, full decision history, or tiny TODOs there.
- `DECISIONS.md` is why important choices were made. Do not record routine implementation details or every bug fix.
- `TODO.md` is small loose work, not strategy. If it changes project direction, put it in `PLAN.md`.
- `AGENTS.md` is for coding agents. Do not put full product vision, roadmap strategy, user quick start, or long slice history there.
- `README.md` is the human-facing project entry point. Do not put long agent instructions, giant safety lists, or day-to-day TODOs there.

## Required AGENTS.md Section

Every `AGENTS.md` must include this section, adapted only if filenames differ:

```markdown
## Project Documents

Before starting implementation, read these files in this order:

1. README.md
   Human-facing overview: what the project is, how to run it, and current status.

2. PROJECT_OUTLINE.md
   Product vision and intended end state: what the project should become.

3. PLAN.md
   Current execution path: current state, next slices, deferred work, validation path, and stop rules.

4. ARCHITECTURE.md, if present
   Technical map: repo structure, entry points, data flow, persistence, integrations, and invariants.

5. DECISIONS.md, if present
   Major product/architecture decisions and why they were made.

6. TODO.md, if present
   Small loose cleanup tasks only. Do not treat TODO.md as the roadmap.

Rules:
- If PROJECT_OUTLINE.md and PLAN.md disagree, stop and ask for clarification before implementing.
- If ARCHITECTURE.md disagrees with PROJECT_OUTLINE.md or PLAN.md, stop and ask for clarification before implementing.
- If PLAN.md is missing a current goal, next slice, deferred list, validation path, or stop rules, update/ask before implementing.
- Do not let TODO.md override PLAN.md.
- Do not let technical evidence files replace generalist-readable summaries.

## Implementation Discipline

Start with the simplest efficient solution that satisfies the current goal while respecting the agreed architecture.

Do not add scaffolding, abstractions, validators, bridges, plugins, migrations, or automation unless they directly help the current slice work safely and clearly.

Code should be simple, but not sloppy:
- Follow the existing architecture and folder boundaries.
- Avoid spaghetti logic and hidden side effects.
- Prefer small readable functions over clever systems.
- Add tests when behavior could break, repeat, or affect important data.
- Add scaffolding only when it reduces real risk or repeated work.
- Stop before building future infrastructure that has not been requested or approved.

When unsure, choose the smallest clean implementation that can be understood, reviewed, and changed later.

## Documentation Maintenance

After implementation, reconcile every affected project document with implemented behavior and validation. Include later and deferred milestones, split partial completion, and keep current status and next work consistent.
```

## Writing Rules

- Write for a generalist user first; put technical proof/evidence behind summaries, not in place of them.
- Write `ARCHITECTURE.md` in plain language. A non-programmer should understand the big map even if they do not understand every implementation detail.
- Prefer short sections and direct bullets.
- Keep overlap intentional: links and one-line summaries are fine; duplicate strategy blocks are not.
- Preserve existing useful docs and improve them in place when possible.
- Use existing repo commands from package scripts, Makefiles, docs, CI files, or observed conventions.
- If commands cannot be verified, label them as unverified.
- Use `references/doc-templates.md` for compact starter shapes when creating files from scratch.
