# Decisions

## 2026-06-15: Use one repo with separate skill folders

Decision: Store all shared skills in one repository under `skills/<skill-name>/`.

Reason: This is easier for people to browse and maintain than Git submodules or many tiny repos.

Alternatives considered: One repo per skill, Git submodules, and a package registry.

Consequences: People who clone the repo get the full collection, but a helper script can install just one skill.

## 2026-06-15: Start with `project-docs-bootstrap`

Decision: Add `project-docs-bootstrap` as the first shared skill.

Reason: It is already useful, self-contained, and matches the repo's own docs-first setup style.

Consequences: The first skill folder sets the expected structure for future skills.

## 2026-06-15: Prepare for public GitHub publishing

Decision: This repo should be public.

Reason: Katherine wants this to be her first public repo and a shareable home for reusable skills.

Consequences: The repo needs a clear license before publication so people know how they may reuse the skills.

## 2026-06-15: Use MIT License

Decision: License the repo under MIT.

Reason: The repo is meant for public sharing and reuse, and MIT is a simple permissive license.

Consequences: Other people can use, copy, modify, and share the skills as long as they keep the copyright and license notice.
