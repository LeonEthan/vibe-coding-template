---
name: review-change-loop
description: Use before handing off a code change, creating a PR, or after a substantial implementation. The skill focuses review on correctness, regressions, architecture fit, scope control, and missing validation.
---

# Review Change Loop

Use this skill as a local pre-review before asking humans to review.

## Workflow

1. Inspect the diff, not only the final files.
2. Check correctness and regression risk first.
3. Check whether the change respects the spec, plan, and `Out of Scope`.
4. Check whether tests validate the core user story.
5. Check whether docs or ADRs need updates.
6. Fix issues that are clearly in scope.
7. If review does not converge after several rounds, reassess the design instead of expanding the patch.

## Review Lenses

- User-visible behavior
- Data and migration safety
- Error handling and edge cases
- Security and privacy boundaries
- Architecture and domain language fit
- Test usefulness, not test volume

## Output

Summarize findings fixed, findings deferred, and validation evidence. Do not claim no issues unless the diff was actually inspected.
