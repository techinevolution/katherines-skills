# Contributing

Thanks for helping improve Katherine's Skills.

## Adding a Skill

1. Create a folder under `skills/<skill-name>/`.
2. Add a `SKILL.md` file at the top of that folder.
3. Put supporting files inside that same skill folder.
4. Add the skill to `skills/README.md`.
5. Keep examples and templates small enough for someone to inspect quickly.

## Skill Folder Shape

```text
skills/<skill-name>/
  SKILL.md
  references/
  scripts/
  agents/
  examples/
  templates/
```

Only include folders the skill actually uses.

## Public Sharing Check

Before sharing a skill, confirm it does not include:

- Secrets, tokens, or credentials.
- Private file paths that are required for someone else to use the skill.
- Personal notes that should not be public.

