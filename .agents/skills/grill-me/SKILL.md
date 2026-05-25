---
name: grill-me
description: Use when a product or engineering request is vague, one-line, high-impact, or likely to need decisions before a spec or implementation.
---

# Grill Me

Use this skill before implementation when the request has meaningful product, UX, architecture, data, security, or rollout ambiguity.

## Workflow

1. Inspect the relevant code, docs, domain language, ADRs, and current behavior enough to avoid generic questions.
2. Identify the highest-leverage unresolved decision.
3. Ask exactly one question at a time.
4. After each answer, decide whether another question is needed.
5. Update `docs/architecture/domain-language.md` when a durable term is resolved.
6. Offer an ADR only when the decision is hard to reverse, surprising without context, and a real tradeoff.
7. Stop when the remaining choices are low-risk implementation details.
8. Summarize the decisions and either write a spec or ask for permission to proceed, depending on the user's requested mode.

## Question Quality

Good questions change the implementation path. Avoid questions about details that can be inferred from existing conventions or safely decided during implementation.

Prefer questions about:

- Target user and primary job to be done
- Core user story and acceptance criteria
- Data ownership and lifecycle
- Compatibility and migration constraints
- Rollout, feature flag, or prototype expectations
- Explicit out-of-scope boundaries
- Domain terms that are overloaded or conflicting
- Decisions that may deserve ADRs

## Output

Return:

- Confirmed decisions
- Remaining open questions, if any
- Domain language or ADR updates made
- Recommended next artifact: spec, plan, prototype, or direct fix
