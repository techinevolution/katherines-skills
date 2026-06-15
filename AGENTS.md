# Agent Guide

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

## Commands

- Browse skills: `ls skills`
- List skills: `scripts/install-skills --list`
- Preview install: `scripts/install-skills --dry-run`
- Install selected skill: `scripts/install-skills project-docs-bootstrap`
- Install selected skill as copy: `scripts/install-skills --mode copy --target /tmp/katherines-skills-test project-docs-bootstrap`
- Validate skill folders: `scripts/validate-skills`
- Check scripts: `ruby -c scripts/install-skills && ruby -c scripts/validate-skills`

## Conventions

- Keep each skill in `skills/<skill-name>/`.
- Keep each skill self-contained.
- Prefer plain-language docs over heavy process.
- Keep skill descriptions short and useful for routing.
- Keep skill bodies operational rather than essay-like.
- Put helper scripts owned by one skill under that skill's `scripts/` directory.
- Use placeholders only when a user decision is truly needed, and mark them as `TODO(user): ...`.

## Boundaries

- Do not publish or push to GitHub unless the user explicitly asks.
- Do not include secrets, credentials, or personal local state.
- Do not turn this into a package registry until the simple folder structure stops being enough.

## Validation Before Final Report

- Confirm the repo files exist.
- Confirm the copied skill contains `SKILL.md` and its companion files.
- Run `scripts/validate-skills`.
- Run `scripts/install-skills --dry-run`.

## Final Report

Include files created or updated, validation run, placeholders, and the recommended next step.
