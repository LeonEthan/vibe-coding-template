---
name: tech-debt-scan
description: Use for dedicated technical debt cleanup tasks, periodic quality scans, or architecture-health reviews that are intentionally separate from feature delivery. The skill prioritizes rule-backed findings and small reviewable fixes.
---

# Tech Debt Scan

Use this skill only when the task is explicitly about cleanup, maintenance, quality, or architecture health.

## Workflow

1. Run available checks, starting with `scripts/ai/check.sh` and `scripts/ai/arch-check.sh`.
2. Inspect hotspots with objective signals: large files, duplicated logic, flaky tests, TODO clusters, broad modules, or unclear domain names.
3. Propose small fixes that can be reviewed independently.
4. Prefer one focused cleanup slice over a broad rewrite.
5. Do not change product behavior unless explicitly approved.

## Finding Quality

Prioritize findings that:

- Can be validated by a script, test, or diff
- Reduce future feature risk
- Clarify domain concepts
- Remove repeated agent mistakes from the workflow

## Handoff

Report scanned areas, fixes made, checks run, and cleanup intentionally deferred.
