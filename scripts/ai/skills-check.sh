#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/../.." && pwd)"
cd "$ROOT"

skills_dir=".agents/skills"

if [[ ! -d "$skills_dir" ]]; then
  echo "No .agents/skills directory found."
  exit 0
fi

failed=0

while IFS= read -r skill_file; do
  rel="${skill_file#./}"
  dir="$(dirname "$skill_file")"
  dirname="$(basename "$dir")"

  name="$(awk '
    BEGIN { in_fm=0 }
    NR == 1 && $0 == "---" { in_fm=1; next }
    in_fm && $0 == "---" { exit }
    in_fm && /^name:/ { sub(/^name:[[:space:]]*/, ""); print; exit }
  ' "$skill_file")"

  description="$(awk '
    BEGIN { in_fm=0 }
    NR == 1 && $0 == "---" { in_fm=1; next }
    in_fm && $0 == "---" { exit }
    in_fm && /^description:/ { sub(/^description:[[:space:]]*/, ""); print; exit }
  ' "$skill_file")"

  if [[ -z "$name" ]]; then
    echo "Missing name in $rel"
    failed=1
  elif [[ ! "$name" =~ ^[a-z0-9-]+$ ]]; then
    echo "Invalid skill name in $rel: $name"
    failed=1
  fi

  if [[ "$name" != "$dirname" ]]; then
    echo "Skill name does not match directory in $rel: name=$name dir=$dirname"
    failed=1
  fi

  if [[ -z "$description" ]]; then
    echo "Missing description in $rel"
    failed=1
  elif [[ "$description" != Use\ when* ]]; then
    echo "Description should start with 'Use when' in $rel"
    failed=1
  fi

  if [[ "$description" =~ [Tt]he[[:space:]]+skill|guides|workflow|process|steps ]]; then
    echo "Description appears to summarize workflow instead of trigger conditions in $rel"
    failed=1
  fi

  if [[ ${#description} -gt 500 ]]; then
    echo "Description exceeds 500 characters in $rel"
    failed=1
  fi

  word_count="$(wc -w < "$skill_file" | tr -d ' ')"
  if [[ "$word_count" -gt 900 ]]; then
    echo "Skill body is long in $rel: ${word_count} words"
    failed=1
  fi
done < <(find "$skills_dir" -mindepth 2 -maxdepth 2 -name SKILL.md -print | sort)

exit "$failed"
