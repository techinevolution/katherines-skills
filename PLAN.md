# Plan

## Current State

The repo has been started locally with one skill: `project-docs-bootstrap`. It is intended to be Katherine's first public GitHub repo.

## Current Product Goal

Make the repo easy to share, browse, and use one skill at a time.

## Current Architecture Shape

This is a lightweight file-based repository. Skills live under `skills/<skill-name>/`, and helper scripts live under `scripts/`. See [ARCHITECTURE.md](ARCHITECTURE.md).

## Next Implementation Slices

1. Publish the local repo to GitHub as public.
2. Add a skill index entry for each skill as the collection grows.
3. Add a validation script that checks every skill has a `SKILL.md`.
4. Consider a remote install command once the GitHub URL is known.

## Recommended Next Slice

Publish the local repo to GitHub as public.

## Deferred Work

- Automated skill validation.
- Release tags or versioning.
- Remote one-line installer that downloads one skill from GitHub.
- Contribution templates or issue templates.

## Open Questions

- TODO(user): Confirm the GitHub repo owner should be `KatherinesBrain`.

## Validation Path

- Run `find skills -maxdepth 2 -name SKILL.md` and confirm each skill folder has one.
- Run `./scripts/install-skill.sh project-docs-bootstrap /tmp/katherines-skills-test` to test single-skill installation outside the live Codex folder.

## Stop Rules

- Stop before publishing publicly if license or privacy boundaries are unclear.
- Stop before adding generated registry machinery unless the simple folder layout becomes painful.
- Do not let `TODO.md` override this plan.
