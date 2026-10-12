#!/usr/bin/env bash
set -euo pipefail

case_dir="$(cd "$(dirname "$0")" && pwd)"
root="$(cd "$case_dir/../../../.." && pwd)"
source "$root/aeneas/env.sh"
cd "$root/aeneas/proof"

for version in Old New; do
  lake env sh -c 'LEAN_PATH="$1/Lean:$LEAN_PATH" lean --root="$1" -o "$1/Lean/RegexUtf8'$version'.olean" "$1/Lean/RegexUtf8'$version'.lean"' sh "$case_dir"
done
lake env sh -c 'LEAN_PATH="$1/Lean:$LEAN_PATH" lean --root="$1" "$1/Lean/Equivalence.lean"' sh "$case_dir"
printf 'regex b12a2761: generated models and conditional equivalence theorem checked.\n'
