#!/usr/bin/env bash
set -euo pipefail

usage() {
  echo "Usage: $0 <skill-name> [target-dir]" >&2
  echo "Default target-dir: \$CODEX_HOME/skills or ~/.codex/skills" >&2
}

if [ "${1:-}" = "" ]; then
  usage
  exit 1
fi

skill_name="$1"
target_dir="${2:-${CODEX_HOME:-$HOME/.codex}/skills}"
repo_root="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
source_dir="$repo_root/skills/$skill_name"
destination_dir="$target_dir/$skill_name"

if [ ! -f "$source_dir/SKILL.md" ]; then
  echo "Skill not found or missing SKILL.md: $skill_name" >&2
  exit 1
fi

mkdir -p "$target_dir"
rm -rf "$destination_dir"
cp -R "$source_dir" "$destination_dir"

echo "Installed $skill_name to $destination_dir"

