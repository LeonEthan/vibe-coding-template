#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT"

ran=0

run_if_exists() {
  local label="$1"
  shift

  echo "==> $label"
  "$@"
  ran=1
}

if [[ -f package.json ]]; then
  if command -v npm >/dev/null 2>&1; then
    npm run lint --if-present
    npm run typecheck --if-present
    npm test --if-present
    ran=1
  else
    echo "npm not found; skipping package.json checks"
  fi
fi

if [[ -f pyproject.toml ]]; then
  if command -v uv >/dev/null 2>&1; then
    if uv run --help >/dev/null 2>&1; then
      if uv run pytest --version >/dev/null 2>&1; then
        run_if_exists "pytest" uv run pytest
      fi
    fi
  elif command -v pytest >/dev/null 2>&1; then
    run_if_exists "pytest" pytest
  else
    echo "pytest/uv not found; skipping Python tests"
  fi
fi

if [[ -x scripts/ai/arch-check.sh ]]; then
  run_if_exists "architecture checks" scripts/ai/arch-check.sh
fi

if [[ "$ran" -eq 0 ]]; then
  echo "No stack-specific checks configured yet."
  echo "Customize scripts/ai/check.sh after adding a language framework."
fi
