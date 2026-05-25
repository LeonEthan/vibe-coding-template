---
name: write-spec
description: Use when turning a feature idea, bugfix direction, design discussion, or user decisions into a durable project spec under docs/product. The spec must capture background, user story, solution, acceptance plan, out of scope, and open questions.
---

# Write Spec

Use this skill when a change is non-trivial or will run longer than a small edit.

## Before Writing

Read the relevant code and docs. If key decisions are missing, use `grill-me` first instead of inventing product direction.

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
- Keep open questions crisp and decision-oriented.

## Handoff

End with either:

- A request for user approval if decisions are still material
- A recommendation to run `slice-plan` if the spec is ready
