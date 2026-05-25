---
name: execute-plan
description: Use when implementing an approved plan slice end to end. The skill guides Codex to update plan status, implement narrowly, validate, run review/test loops, and produce evidence before handoff.
---

# Execute Plan

Use this skill for implementation after a spec or plan exists.

## Workflow

1. Read the linked spec and current plan.
2. Select one slice unless the plan explicitly marks multiple slices as independent.
3. Mark the slice In Progress.
4. Implement only that slice.
5. Run focused tests as soon as meaningful feedback is available.
6. Run `scripts/ai/check.sh` or the closest available validation command.
7. Use `test-fix-loop` for failures.
8. Use `review-change-loop` before handoff.
9. Update plan status and progress notes.
10. Use `doc-update` when docs or durable decisions changed.

## Constraints

- Do not silently expand scope.
- Do not mix broad cleanup with feature work.
- Preserve unrelated user changes.
- Keep final handoff evidence-based.

## Handoff

Report:

- Slice completed
- Files changed
- Validation run and results
- Known gaps or follow-up slices
