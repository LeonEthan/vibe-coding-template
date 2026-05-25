---
name: writing-skills
description: Use when creating, editing, reviewing, evaluating, pruning, or debugging project-level skills under .agents/skills.
---

# Writing Skills

Use this skill when changing project-level skills.

## Principles

- Skills are workflow discipline, not long-form tutorials.
- Keep each `SKILL.md` small and composable.
- Put deterministic checks in scripts, not prompts.
- Use references or scripts only when the skill would otherwise become bulky.
- Treat skill changes as testable process changes.

## Frontmatter

Every skill must have YAML frontmatter with:

- `name`: lowercase letters, numbers, and hyphens only
- `description`: starts with `Use when`

The description should describe trigger conditions only. Avoid summarizing the workflow; models may follow the description instead of reading the skill body.

## Skill Body

Prefer this shape:

- Title
- Core rule or purpose
- Workflow
- Constraints or red flags
- Output or handoff expectations

Avoid:

- One-off project history
- Long examples that do not change behavior
- Duplicating rules already in `AGENTS.md`
- Mechanical checks that could be scripted

## Evaluation Loop

For meaningful skill edits:

1. Write 2-3 pressure prompts that should trigger or not trigger the skill.
2. Run `scripts/ai/skills-check.sh`.
3. If possible, compare an agent's behavior before and after the skill edit.
4. Tighten the description or body based on the observed failure mode.
5. Remove rules that no longer change behavior.

## Handoff

Report which skill changed, why the trigger/body changed, and what validation was run.
