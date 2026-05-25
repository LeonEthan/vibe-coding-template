# Domain Language

Use this file to keep project terminology stable for humans and agents.

| Term | Meaning | Notes |
| --- | --- | --- |
| Spec | Durable product or engineering intent for a non-trivial change. | Stored under `docs/product/`. |
| Plan | Execution breakdown of an approved spec into reviewable vertical slices. | Stored under `docs/planning/`. |
| Slice | A small vertical unit of work that can be implemented, tested, reviewed, and shipped independently. | Prefer behavior-first slices over layer-first slices. |
| ADR | Architecture Decision Record. | Stores decisions that future agents cannot infer from code alone. |
| Project-level skill | A workflow guide stored under `.agents/skills/` and loaded by Codex when relevant. | Keep concise and task-specific. |
| AFK slice | A plan slice an agent can complete without more human decisions. | Still requires validation evidence. |
| HITL slice | A plan slice that requires human-in-the-loop judgment before or during implementation. | Do not execute unattended. |
| Pressure prompt | A prompt used to test whether a skill triggers and changes behavior as intended. | Store only when it remains useful. |
| Trigger-only description | A skill description that says when the skill applies without summarizing the workflow. | Helps the agent load the full skill body instead of shortcutting from metadata. |
