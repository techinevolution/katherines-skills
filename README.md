# Katherine's Skills

A shared collection of reusable Codex skills. Each skill lives in its own folder so people can browse the full collection or install one skill at a time.

## Status

Starter repo prepared for public GitHub publishing. The first included skill is `project-docs-bootstrap`.

## Quick Start

Browse available skills:

```bash
ls skills
```

List available skills:

```bash
scripts/install-skills --list
```

Preview an install without changing files:

```bash
scripts/install-skills --dry-run
```

Install all skills into the default Codex skill directory:

```bash
scripts/install-skills
```

Install only selected skills:

```bash
scripts/install-skills project-docs-bootstrap
```

Install somewhere else:

```bash
scripts/install-skills --target ~/.agents/skills project-docs-bootstrap
```

Use copies instead of symlinks:

```bash
scripts/install-skills --mode copy --target ~/.codex/skills project-docs-bootstrap
```

Replace an existing installed skill:

```bash
scripts/install-skills --force project-docs-bootstrap
```

## Main Workflows

- Add a skill as its own folder under `skills/<skill-name>/`.
- Keep each skill self-contained: `SKILL.md`, plus any `references/`, `scripts/`, `agents/`, `examples/`, or `templates/` it needs.
- Install one or more skills with `scripts/install-skills`.

## Validate

Run this after edits:

```bash
scripts/validate-skills
ruby -c scripts/install-skills
ruby -c scripts/validate-skills
```

## Important Directories

- `skills/`: reusable skills, one folder per skill.
- `scripts/`: helper scripts for installing and validating skills.

## Project Docs

- [Project Outline](PROJECT_OUTLINE.md)
- [Plan](PLAN.md)
- [Architecture](ARCHITECTURE.md)
- [Agent Guide](AGENTS.md)
- [Decisions](DECISIONS.md)
- [TODO](TODO.md)
- [Contributing](CONTRIBUTING.md)

## License

MIT License. See [LICENSE](LICENSE).
