---
name: write-spec
description: Use when feature ideas, bugfix directions, design discussions, or user decisions need to become durable project specs under docs/product.
---

# Write Spec

Use this skill when a change is non-trivial or will run longer than a small edit.

## Before Writing

Read the relevant code, docs, domain language, and ADRs. If key decisions are missing, use `grill-me` first instead of inventing product direction.

## Spec Shape

Create or update a file under `docs/product/` with this structure:

- Title
- Status: Draft, Approved, In Progress, Shipped, or Archived
- Background
- User Story
- Goals
- Non-Goals / Out of Scope
- Proposed Solution
- Acceptance Plan
- Risks and Tradeoffs
- Open Questions

## Rules

- Write only the key information humans need to review.
- Do not restate implementation details that are obvious from code.
- Make `Out of Scope` explicit enough to prevent scope expansion during review.
- Tie tests and validation to the user story, not to incidental class or field construction.
- Use existing domain language. If a new durable term is introduced, update `docs/architecture/domain-language.md`.
- Reference ADRs that constrain the solution. Create a new ADR only for durable architecture decisions.
- Keep open questions crisp and decision-oriented.

## Handoff

End with either:

- A request for user approval if decisions are still material
- A recommendation to run `slice-plan` if the spec is ready
