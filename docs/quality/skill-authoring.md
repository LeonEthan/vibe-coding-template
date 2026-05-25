# Skill Authoring

Project-level skills live under `.agents/skills/<skill-name>/SKILL.md`.

## Goals

- Keep skills small, composable, and easy to revise.
- Make trigger conditions precise.
- Move repeatable checks into scripts.
- Evaluate whether a skill changes agent behavior before adding more rules.

## Frontmatter Rules

- `name` uses lowercase letters, numbers, and hyphens.
- `description` starts with `Use when`.
- `description` describes only trigger conditions.
- Avoid workflow summaries in `description`; put workflow in the body.

## Body Rules

Good skill bodies include:

- Core rule
- Short workflow
- Scope constraints
- Handoff expectations

Avoid:

- Long tutorial prose
- One-off implementation stories
- Duplicate rules from `AGENTS.md`
- Rules that can be enforced by `scripts/ai/skills-check.sh` or another script

## Iteration

When a skill fails in practice, capture the failure as a pressure prompt:

- What did the user ask?
- Which skill should or should not have triggered?
- What incorrect behavior happened?
- What small rule would prevent the failure?

Prefer removing stale rules over accumulating prompts indefinitely.
