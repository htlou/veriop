#!/usr/bin/env bash
set -euo pipefail

case_dir="$(cd "$(dirname "$0")" && pwd)"
root="$(cd "$case_dir/../../../.." && pwd)"
for side in old new; do
  if [[ "$side" == old ]]; then rev='0f32c039^'; else rev='0f32c039'; fi
  GIT_NO_LAZY_FETCH=1 git -C "$root/benchmarks/repos/regex" show "$rev:src/dfa.rs" \
    | cmp - "$case_dir/dfa.$side.rs"
done
GIT_NO_LAZY_FETCH=1 git -C "$root/benchmarks/repos/regex" diff 0f32c039^ 0f32c039 \
  -- src/dfa.rs | cmp - "$case_dir/source.diff"

source "$root/aeneas/env.sh"
cd "$root"
charon rustc --preset=aeneas --start-from-pub --dest-file "$case_dir/step.llbc" \
  -- --edition=2021 --crate-type=lib --crate-name regex_dfa_step \
  "$case_dir/step.rs" > "$case_dir/charon-step.log" 2>&1
aeneas -backend lean -namespace RegexDfaStep -dest "$case_dir/lean" \
  "$case_dir/step.llbc" > "$case_dir/aeneas-step.log" 2>&1
if rg -n '\b(sorry|admit)\b' "$case_dir/lean/Step.lean" "$case_dir/StepEquivalence.lean"; then
  exit 1
fi
cd "$root/aeneas/proof"
lake env sh -c 'LEAN_PATH="$1/lean:$LEAN_PATH" lean --root="$1" -o "$1/lean/Step.olean" "$1/lean/Step.lean"' sh "$case_dir" > "$case_dir/lean-model.log" 2>&1
lake env sh -c 'LEAN_PATH="$1/lean:$LEAN_PATH" lean --root="$1" "$1/StepEquivalence.lean"' sh "$case_dir" > "$case_dir/lean-proof.log" 2>&1
printf 'Historical diff, Aeneas step model, and scheduling lemma checked.\n'
