# Definition Of Done

A change is done when:

- The implemented scope matches the approved request, spec, or plan slice.
- Out-of-scope work was not added silently.
- The core user story or contract is validated.
- `scripts/ai/check.sh` or the closest available validation command has been run.
- Any validation failure is fixed or explicitly called out.
- Durable architecture or domain decisions are reflected in docs.
- Project-level skill changes pass `scripts/ai/skills-check.sh`.
- The handoff includes evidence: commands, results, screenshots, logs, or test summaries.

For exploratory prototypes, call out shortcuts and what would need hardening before production use.
