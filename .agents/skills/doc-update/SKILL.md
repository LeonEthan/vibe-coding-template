---
name: doc-update
description: Use after implementation, review, or architecture changes to keep specs, plans, ADRs, and domain language concise and current. Remove obsolete planning detail when code is now the source of truth.
---

# Doc Update

Use this skill after a meaningful change ships or when documentation has drifted.

## Rules

- Keep durable rationale, remove temporary execution chatter.
- Delete details that are now obvious from code.
- Preserve decisions that future agents cannot infer from code alone.
- Update `docs/architecture/domain-language.md` when new concepts or naming conventions are introduced.
- Add or update ADRs for decisions that affect architecture, operations, data ownership, or long-term constraints.
- Mark completed plan slices accurately.

## Output

Summarize what documentation changed and why. If no docs were updated, explain why the code is sufficient as the source of truth.
