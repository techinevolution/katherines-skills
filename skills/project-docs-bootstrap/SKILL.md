---
name: project-docs-bootstrap
description: Use when a user asks Codex to create or update top-level project orientation docs before implementation, including README.md, AGENTS.md, PROJECT_OUTLINE.md, PLAN.md, ARCHITECTURE.md, DECISIONS.md, TODO.md, or PROJECT_BRIEF.md, especially for new repos, repo handoff, agent onboarding, planning docs, project compass docs, architecture docs, or documentation-first setup.
---

# Project Docs Bootstrap

## Goal

Create concise, non-overlapping project compass docs before product implementation begins. These docs should help a generalist user and future coding agents understand what the project is, where it is going, how to work safely, and what the first implementation slice should be.

## Workflow

1. Read the user's project outline or request.
2. If a critical detail is missing, ask the smallest necessary clarification. Do not ask a long questionnaire by default.
3. Inspect the repo if it already exists.
4. Create or update the required docs.
5. Keep docs concise, readable, and non-overlapping.
6. Use placeholders only when information is truly unknown, and mark them clearly as `TODO(user): ...`.
7. Do not begin product implementation as part of this skill unless the user explicitly asks after docs are created.
8. In the final response, list files created/updated, placeholders, and the recommended first implementation slice from `PLAN.md`.

## Stop Rules

- Stop before coding features.
- Stop and ask if `PROJECT_OUTLINE.md` and `PLAN.md` would contradict each other.
- Stop and ask if `ARCHITECTURE.md` would contradict `PROJECT_OUTLINE.md` or `PLAN.md`.
- Stop and ask if the project has privacy/security implications the user has not defined.
- Do not create huge process documents. These files are a compass, not a bureaucracy.

## Default Doc Set

Always create or update:

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
