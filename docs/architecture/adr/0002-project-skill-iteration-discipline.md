# ADR 0002: Project Skill Iteration Discipline

Status: Accepted

## Context

Project-level skills strongly influence how agents interpret and execute work. Installing large external skill sets can improve discipline, but it also changes the workflow broadly and makes failures harder to attribute. This template should stay reusable across stacks and teams.

## Decision

Maintain a small project-level skill set under `.agents/skills/` and treat skill changes as reviewable, testable process changes.

Use:

- `writing-skills` for skill authoring and iteration
- `scripts/ai/skills-check.sh` for mechanical skill hygiene
- Pressure prompts to evaluate whether a skill meaningfully changes behavior
- Concise trigger-only descriptions, with workflow detail kept in the skill body

Do not vendor complete external methodology plugins into this template by default.

## Consequences

The template keeps a smaller blast radius and remains easier to adapt. Teams can still borrow patterns from external skill repositories, but each adopted pattern must be expressed as a local project skill or script and validated against local workflow needs.
