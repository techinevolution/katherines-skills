# Doc Templates

Use these as starting shapes, not rigid forms. Keep each doc concise and delete sections that do not apply.

## README.md

````markdown
# <Project Name>

<One-paragraph product description.>

## Status

<prototype/active/paused/experimental + one sentence about current state>

## Quick Start

```bash
<setup command>
<run command>
<test command>
```

## Main Workflows

- <workflow>
- <workflow>

## Project Docs

- [Project Outline](PROJECT_OUTLINE.md)
- [Plan](PLAN.md)
- [Architecture](ARCHITECTURE.md)
- [Agent Guide](AGENTS.md)
- [Decisions](DECISIONS.md)
- [TODO](TODO.md)
````

## PROJECT_OUTLINE.md

```markdown
# Project Outline

## Goal

<What the project should become.>

## Intended End State

<What the finished product should look like, feel like, and do.>

## Audience

<Who or what the project is for.>

## Core Workflows

- <workflow>
- <workflow>

## Major Features

- <feature>
- <feature>

## UX/UI Expectations

<Use only when relevant.>

## Examples of Success

- <example>

## Non-Goals

- <what this is not>

## Non-Negotiable Boundaries

- <boundary>
```

## PLAN.md

```markdown
# Plan

## Current State

<Current checkpoint.>

## Current Product Goal

<Near-term goal.>

## Current Architecture Shape

<Short summary of structure. Link to ARCHITECTURE.md when present.>

## Next Implementation Slices

1. <slice>
2. <slice>
3. <slice>

## Recommended Next Slice

<Smallest useful first slice.>

## Deferred Work

- <deferred>

## Open Questions

- <question or "None currently.">

## Validation Path

- <command/check>

## Stop Rules

- <anti-drift rule>
```

## AGENTS.md

```markdown
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

## Commands

- Setup: `<command or TODO(user): confirm setup>`
- Run: `<command or TODO(user): confirm run command>`
- Test: `<command or TODO(user): confirm test command>`
- Lint/typecheck: `<command or TODO(user): confirm validation command>`

## Coding Conventions

- <repo convention>

## Boundaries

- <privacy/security/no-touch boundary>

## Validation Before Final Report

- <required check>

## Final Report

Include files changed, validation run, blockers, and recommended next step.
```

## ARCHITECTURE.md

```markdown
# Architecture

## Overview

<Plain-language summary of how the project is put together.>

## Repo Structure

- `<path>/`: <what lives here and why>
- `<path>/`: <what lives here and why>

## Main Entry Points

- `<file or command>`: <what starts here>

## Major Pieces

- <piece>: <what it owns>
- <piece>: <what it owns>

## Data Flow

1. <where input starts>
2. <how it moves through the system>
3. <where output/result appears>

## Persistence and State

- <what is stored, where, and by what layer>

## External Services and Integrations

- <service or "None currently.">

## Validation and Build Shape

- <build/test/lint flow>

## Important Invariants

- <rule future agents must preserve>
- <rule future agents must preserve>

## Known Constraints

- <technical/privacy/security constraint>
```

## DECISIONS.md

```markdown
# Decisions

## YYYY-MM-DD: <Decision>

Decision: <what was decided>

Reason: <why>

Alternatives considered: <optional>

Consequences: <tradeoffs>
```

## TODO.md

```markdown
# TODO

Small loose cleanup tasks only. Product direction belongs in PLAN.md.

- [ ] <small task>
```

## PROJECT_BRIEF.md

```markdown
# Project Brief

<One-paragraph goal.>

## Current Target User/Workflow

<short summary>

## Current Phase

<phase>

## Next Milestone

<milestone>

## Biggest Constraints

- <constraint>
```
