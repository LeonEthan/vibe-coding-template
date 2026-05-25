---
name: diagnose
description: Use when there is a bug, failing test, build failure, production issue, performance regression, flaky behavior, or unexplained system behavior.
---

# Diagnose

Use this skill before proposing fixes for technical failures.

## Core Rule

Do not patch symptoms before building a feedback loop and identifying a plausible root cause.

## Workflow

1. Build a feedback loop that can show pass/fail for the reported issue.
2. Reproduce the user's symptom, not just a nearby failure.
3. Write 3-5 ranked hypotheses with falsifiable predictions.
4. Test one hypothesis at a time with the smallest useful probe.
5. Fix the root cause.
6. Add or update a regression test when there is a correct seam.
7. Re-run the original feedback loop and broader validation.
8. Remove temporary debug code.

## Feedback Loop Options

Prefer the fastest deterministic signal available:

- Focused automated test
- HTTP request or CLI invocation with fixture input
- Browser script for UI behavior
- Captured trace replay
- Minimal throwaway harness
- Repeated stress loop for nondeterministic bugs
- `git bisect run` when a regression appeared between known commits

If no reliable loop can be built, stop and report what was tried. Ask for logs, traces, recordings, environment access, or permission to add instrumentation.

## Instrumentation

- Add targeted probes only where they distinguish hypotheses.
- Tag temporary logs with a unique prefix such as `[DEBUG-<token>]`.
- Remove all tagged probes before handoff.

## Handoff

Report:

- Reproduction command or scenario
- Root cause
- Fix summary
- Regression coverage, or why no correct seam exists
- Validation commands and results
