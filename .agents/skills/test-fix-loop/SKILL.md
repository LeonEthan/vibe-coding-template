---
name: test-fix-loop
description: Use when validation fails, tests are missing for a risky path, or implementation needs red-green-refactor feedback.
---

# Test Fix Loop

Use this skill to turn validation into a tight feedback cycle.

## Workflow

1. Reproduce the failure or identify the missing acceptance path.
2. Prefer a failing test that matches the user story or regression risk.
3. Implement the smallest fix.
4. Re-run the focused test.
5. Re-run the broader validation command when the focused issue passes.
6. Record command output in the handoff summary.

Use `diagnose` instead when the failure is not understood or repeated fixes are not converging.

## Test Quality

Avoid tests that only assert object construction, constant values, or mocks with no behavior. Prefer tests that would fail if the user-facing flow, contract, or important edge case regressed.

## When Not To Use TDD

Exploratory UI work, visual tuning, and throwaway prototypes may need browser inspection or screenshots instead of strict red-green-refactor.
