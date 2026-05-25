# AGENTS.md

## Project Purpose

This repository is an AI-native software project template. It provides a reusable collaboration system for Codex-style agents: persistent specs, reviewable plans, project-level skills, validation scripts, and lightweight architecture memory.

## Source Of Truth

- Product specs: `docs/product/`
- Execution plans: `docs/planning/`
- Architecture decisions: `docs/architecture/adr/`
- Domain language: `docs/architecture/domain-language.md`
- Quality rules and acceptance standards: `docs/quality/`
- Project-level skills: `.agents/skills/`
- Validation entrypoint: `scripts/ai/check.sh`
- Reusable artifact templates: `templates/`

## Operating Model

- Treat vague feature requests as design work first. Explore the repo, ask the smallest set of high-leverage questions, then write or update a spec.
- For non-trivial work, use a spec plus an execution plan before implementation.
- Prefer vertical slices that can be independently built, tested, reviewed, and shipped.
- Mark slices as `AFK` when an agent can complete them without more product decisions, and `HITL` when human judgment is expected.
- Keep each slice reviewable. As a default target, keep implementation diffs near 500 changed lines unless the user explicitly approves a larger slice.
- Respect `Out of Scope` in specs and plans. Do not expand review fixes into unrelated refactors.
- Use `docs/architecture/domain-language.md` to keep naming stable. Update it when durable terms are resolved.
- Preserve existing user changes. Never revert work you did not make unless explicitly asked.
- Put durable architectural rationale in ADRs. Remove temporary plan details after the code makes them obsolete.

## Quality Bar

- Run `scripts/ai/check.sh` after code changes, or explain why it could not be run.
- Run `scripts/ai/skills-check.sh` after changing project-level skills.
- Prefer rule-based checks for repeatable quality constraints. Do not rely on prompt text for issues that can be scripted.
- Include validation evidence in final handoff: commands, results, screenshots, logs, or test output summaries.
- For UI changes, validate the rendered experience in a browser when a local app target is available.
- For mature modules, optimize for small safe changes. For prototypes, optimize for learning speed and call out shortcuts explicitly.

## Skill Map

- Use `grill-me` for vague one-line product or feature requests.
- Use `write-spec` to turn decisions into a project spec.
- Use `slice-plan` to split an approved spec into reviewable vertical slices.
- Use `execute-plan` to implement one approved slice end to end.
- Use `review-change-loop` before handing off a change or opening a PR.
- Use `test-fix-loop` when automated validation fails or coverage is uncertain.
- Use `diagnose` before fixing unexplained bugs, failing tests, or flaky behavior.
- Use `doc-update` after implementation to keep docs dense and current.
- Use `tech-debt-scan` for focused cleanup tasks that are separate from feature delivery.
- Use `writing-skills` when creating, editing, or evaluating `.agents/skills`.

## Repository Initialization Checklist

When applying this template to a new project:

1. Update `README.md` with the actual product purpose and stack.
2. Fill `docs/architecture/domain-language.md` with project terms.
3. Add the first ADR under `docs/architecture/adr/`.
4. Customize `scripts/ai/check.sh`, `scripts/ai/arch-check.sh`, and `scripts/ai/skills-check.sh` for the stack and workflow.
5. Copy `templates/spec.md`, `templates/plan.md`, or `templates/adr.md` when creating new artifacts.
6. Remove template text that does not apply.
7. Run `scripts/ai/check.sh` and commit the baseline.
