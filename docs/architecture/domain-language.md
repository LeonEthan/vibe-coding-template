# Domain Language

Use this file to keep project terminology stable for humans and agents.

| Term | Meaning | Notes |
| --- | --- | --- |
| Spec | Durable product or engineering intent for a non-trivial change. | Stored under `docs/product/`. |
| Plan | Execution breakdown of an approved spec into reviewable vertical slices. | Stored under `docs/planning/`. |
| Slice | A small vertical unit of work that can be implemented, tested, reviewed, and shipped independently. | Prefer behavior-first slices over layer-first slices. |
| ADR | Architecture Decision Record. | Stores decisions that future agents cannot infer from code alone. |
| Project-level skill | A workflow guide stored under `.agents/skills/` and loaded by Codex when relevant. | Keep concise and task-specific. |
