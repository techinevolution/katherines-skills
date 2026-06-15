# Project Outline

## Goal

Create a public-friendly home for Katherine's reusable Codex skills.

## Intended End State

The repo should let people:

- Browse the full collection of skills.
- Understand what each skill does before installing it.
- Install one skill at a time when they do not want the whole collection.
- Contribute or update skills without mixing separate skill concerns together.

## Audience

- Katherine, as the maintainer of the skill collection.
- Other Codex users who want to reuse one or more skills.
- Future coding agents helping maintain the repo.

## Core Workflows

- Maintainer adds or updates a skill folder under `skills/`.
- User browses `skills/README.md` and chooses a skill.
- User installs one selected skill with `scripts/install-skill.sh`.

## Major Features

- One folder per skill.
- A human-readable index of available skills.
- A single-skill installer script.
- Concise project docs for future contributors and agents.

## Examples of Success

- A user can clone the repo and install only `project-docs-bootstrap`.
- A future skill can be added without changing existing skill folders.
- A contributor can tell where repo strategy belongs versus where individual skill content belongs.

## Non-Goals

- Do not use Git submodules for individual skills.
- Do not build a package registry in the first slice.
- Do not require users to install every skill just to use one.

## Non-Negotiable Boundaries

- Keep each skill self-contained.
- Do not include private credentials, local secrets, or personal machine state.
- Keep docs practical and lightweight.

