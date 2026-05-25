---
name: slice-plan
description: Use when an approved or mostly settled spec needs to be split into small reviewable vertical slices.
---

# Slice Plan

Use this skill to turn an approved spec into an execution plan under `docs/planning/`.

## Planning Rules

- Prefer vertical slices over horizontal layers.
- Each slice should produce observable behavior or validated infrastructure.
- Keep dependencies explicit.
- Mark each slice as `AFK` when an agent can complete it without more product decisions, or `HITL` when human interaction is expected.
- Keep risky migrations, large refactors, and feature work in separate slices.
- Include validation commands and evidence expected for each slice.
- Call out feature flags, staged rollout, or hidden prototype states when useful.

## Plan Shape

Create or update a plan with:

- Title
- Linked spec
- Current status
- Slice table: id, type, goal, files likely touched, dependencies, validation, status
- Parallelization notes
- Rollback or recovery notes
- Progress log

## During Execution

When using the plan for long-running work, update slice status and progress notes as work completes. Keep notes brief and factual so they survive context compaction.
