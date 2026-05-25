# Vibe Coding Template

An AI-native project template for Codex-style development.

This repository starts with collaboration infrastructure before application code:

- `AGENTS.md` for project-wide agent rules
- `.agents/skills/` for project-level workflow skills
- `docs/product/` for durable specs
- `docs/planning/` for execution plans and vertical slices
- `docs/architecture/` for domain language and ADRs
- `docs/quality/` for review and done standards
- `scripts/ai/check.sh` as the validation entrypoint
- `scripts/ai/skills-check.sh` for project-level skill hygiene
- `templates/` for reusable spec, plan, and ADR skeletons

## Initialize A New Project

1. Copy or fork this template.
2. Update this README with the product name, purpose, and stack.
3. Fill `docs/architecture/domain-language.md` with project-specific terms.
4. Add an initial ADR under `docs/architecture/adr/`.
5. Customize `scripts/ai/check.sh`, `scripts/ai/arch-check.sh`, and `scripts/ai/skills-check.sh` for the stack and workflow.
6. Use `templates/` when creating new specs, plans, and ADRs.
7. Start non-trivial work with a spec and a slice plan.

## Recommended Workflow

For vague requests, use `grill-me` to clarify the important decisions first.

For feature work:

1. `write-spec`
2. `slice-plan`
3. `execute-plan`
4. `review-change-loop`
5. `doc-update`

For maintenance:

1. `tech-debt-scan`
2. `diagnose` for unexplained failures
3. `test-fix-loop`
4. `doc-update`

For skill changes:

1. `writing-skills`
2. `scripts/ai/skills-check.sh`
3. `doc-update`

## Validate

Run:

```bash
scripts/ai/check.sh
```

The default checks are stack-neutral. They should be customized as soon as the project adopts a language framework.
