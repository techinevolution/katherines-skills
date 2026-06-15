# Katherine's Skills

A shared collection of reusable Codex skills. Each skill lives in its own folder so people can browse the full collection or install one skill at a time.

## Status

Starter repo prepared for public GitHub publishing. The first included skill is `project-docs-bootstrap`.

## Quick Start

Browse available skills:

```bash
ls skills
```

Install one skill into your local Codex skills folder:

```bash
./scripts/install-skill.sh project-docs-bootstrap
```

## Main Workflows

- Add a skill as its own folder under `skills/<skill-name>/`.
- Keep each skill self-contained: `SKILL.md`, plus any `references/`, `scripts/`, `agents/`, `examples/`, or `templates/` it needs.
- Install a single skill with `scripts/install-skill.sh`.

## Important Directories

- `skills/`: reusable skills, one folder per skill.
- `scripts/`: helper scripts for installing or validating skills.

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
