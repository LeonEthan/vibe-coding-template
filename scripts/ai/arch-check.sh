#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT"

max_lines="${MAX_FILE_LINES:-500}"

echo "Checking source files over ${max_lines} lines"

paths=()
while IFS= read -r path; do
  paths+=("$path")
done < <(
  find . \
    -path './.git' -prune -o \
    -path './node_modules' -prune -o \
    -path './.venv' -prune -o \
    -path './dist' -prune -o \
    -path './build' -prune -o \
    -type f \( \
      -name '*.js' -o -name '*.jsx' -o -name '*.ts' -o -name '*.tsx' -o \
      -name '*.py' -o -name '*.go' -o -name '*.rs' -o -name '*.java' -o \
      -name '*.kt' -o -name '*.swift' -o -name '*.rb' -o -name '*.php' \
    \) -print
)

if [[ "${#paths[@]}" -eq 0 ]]; then
  echo "No source files found for generic architecture checks."
  exit 0
fi

failed=0
for path in "${paths[@]}"; do
  lines="$(wc -l < "$path" | tr -d ' ')"
  if [[ "$lines" -gt "$max_lines" ]]; then
    echo "File exceeds ${max_lines} lines: ${path} (${lines})"
    failed=1
  fi
done

exit "$failed"
