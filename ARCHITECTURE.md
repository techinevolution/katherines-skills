# Architecture

## Overview

This repo is a simple library of skills. The important boundary is the skill folder: each folder under `skills/` should contain everything needed for that one skill.

## Repo Structure

- `skills/`: one folder per skill.
- `skills/<skill-name>/SKILL.md`: the required entry point for a skill.
- `skills/<skill-name>/references/`: optional supporting instructions or templates.
- `skills/<skill-name>/scripts/`: optional helper scripts owned by that skill.
- `skills/<skill-name>/agents/`: optional agent metadata owned by that skill.
- `scripts/`: repo-level helper scripts.
- `skills.sh.json`: grouping metadata for skill discovery.

## Main Entry Points

- `README.md`: start here for humans.
- `skills/README.md`: index of available skills.
- `scripts/install-skills`: list, preview, or install all or selected skills.
- `scripts/validate-skills`: check every skill has valid YAML frontmatter with `name` and `description`.

## Major Pieces

- Skill folders: own reusable instructions and their supporting files.
- Repo docs: explain the collection and how to maintain it.
- Installer script: symlinks or copies selected skill folders to a target skills directory.
- Validator script: checks skill frontmatter.

## Data Flow

1. A user chooses a skill name from `skills/`.
2. The installer checks that `skills/<skill-name>/SKILL.md` exists.
3. The installer symlinks or copies that skill folder to the target Codex skills directory.

## Persistence and State

The repo stores only files. Installing a skill creates symlinks by default, or copies files when `--mode copy` is used.

## External Services and Integrations

- GitHub is the expected sharing target, but no remote is configured yet.
- Codex discovers installed skills from the user's local skills folder.

## Validation and Build Shape

There is no build step. Validation is currently script-based:

- `scripts/validate-skills`
- `ruby -c scripts/install-skills`
- `ruby -c scripts/validate-skills`
- `scripts/install-skills --dry-run`

## Important Invariants

- A skill folder must be useful on its own.
- Repo-level scripts should not depend on private local paths.
- Public files must not include secrets or personal machine state.

## Known Constraints

- Git does not provide friendly sub-repos for this use case.
- Users who clone the repo get the whole collection, but the installer supports installing only selected skills.
