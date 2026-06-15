# Plan

## Current State

The repo has been started locally with one skill: `project-docs-bootstrap`. It is intended to be Katherine's first public GitHub repo.

## Current Product Goal

Make the repo easy to share, browse, and use one skill at a time.

## Current Architecture Shape

This is a lightweight file-based repository for Katherine's shared skills. Skills live under `skills/<skill-name>/`, helper scripts live under `scripts/`, and `skills.sh.json` groups skills for discovery. See [ARCHITECTURE.md](ARCHITECTURE.md).

## Next Implementation Slices

1. Publish the local repo to GitHub as public.
2. Add a skill index entry for each skill as the collection grows.
3. Add CI for `scripts/validate-skills`.
4. Consider a remote install command once the skill collection has more usage.

## Recommended Next Slice

Publish the local repo to GitHub as public.

## Deferred Work

- GitHub Actions validation.
- Release tags or versioning.
- Remote one-line installer that downloads one skill from GitHub.
- Contribution templates or issue templates.

## Open Questions

- TODO(user): Confirm the GitHub repo owner should be `KatherinesBrain`.

## Validation Path

- Run `scripts/validate-skills`.
- Run `scripts/install-skills --dry-run project-docs-bootstrap`.
- Run `scripts/install-skills --mode copy --target /tmp/katherines-skills-test project-docs-bootstrap` to test single-skill installation outside the live Codex folder.

## Stop Rules

- Stop before publishing publicly if license or privacy boundaries are unclear.
- Stop before adding generated registry machinery unless the simple folder layout becomes painful.
- Do not let `TODO.md` override this plan.
