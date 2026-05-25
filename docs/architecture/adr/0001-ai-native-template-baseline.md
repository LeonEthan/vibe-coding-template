# ADR 0001: AI-Native Template Baseline

Status: Accepted

## Context

This repository is intended to become a reusable template for AI-assisted software projects. Agent sessions can run long enough to hit context compaction, so key product intent, execution state, and architecture rationale need to live in files rather than only in chat history.

## Decision

Use a small set of persistent coordination artifacts:

- `AGENTS.md` for stable project-wide operating rules
- `.agents/skills/` for task-specific workflow discipline
- `docs/product/` for specs
- `docs/planning/` for execution plans
- `docs/architecture/domain-language.md` for shared terminology
- `docs/architecture/adr/` for durable architecture decisions
- `scripts/ai/check.sh` as the validation entrypoint

## Consequences

Agents get a consistent starting point for long-running tasks and handoffs. The template remains stack-neutral, but each adopted project must customize validation scripts and domain language before relying on the baseline.
