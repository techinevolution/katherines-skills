# Plan

## Current State

The public repository is `techinevolution/katherines-skills`, with `main` as its default branch. It contains one skill, `project-docs-bootstrap`, with Create and Reconcile workflows, matching document templates, and Codex UI metadata. Installation and validation use the existing local scripts; CI is not configured.

## Current Product Goal

Keep the published skill current, self-contained, and easy to install and use.

## Current Architecture Shape

This is a lightweight file-based repository for Katherine's shared skills. Skills live under `skills/<skill-name>/`, helper scripts live under `scripts/`, and `skills.sh.json` groups skills for discovery. See [ARCHITECTURE.md](ARCHITECTURE.md).

## Next Implementation Slices

1. Use the updated reconciliation workflow on the next project documentation update and refine it only for observed gaps.
2. Add a skill index entry when another reusable skill is selected for publication.

## Recommended Next Slice

Apply the reconciliation workflow when a project next needs its docs brought up to date; check that completed, partial, and deferred work agree across affected documents.

## Deferred Work

- GitHub Actions validation.
- Release tags or versioning.
- Remote one-line installer that downloads one skill from GitHub.
- Contribution templates or issue templates.

## Open Questions

- None right now.

## Validation Path

- Run `scripts/validate-skills`.
- Run `ruby -c scripts/install-skills` and `ruby -c scripts/validate-skills`.
- Run `scripts/install-skills --dry-run`.
- Run `scripts/install-skills --mode copy --target <temporary-directory> project-docs-bootstrap` and compare the installed files with the source to test installation outside the live Codex folder.

## Stop Rules

- Stop before publishing publicly if license or privacy boundaries are unclear.
- Stop before adding generated registry machinery unless the simple folder layout becomes painful.
- Do not let `TODO.md` override this plan.
