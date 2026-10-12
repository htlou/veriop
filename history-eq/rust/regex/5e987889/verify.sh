#!/usr/bin/env bash
set -euo pipefail

case_dir="$(cd "$(dirname "$0")" && pwd)"
root="$(cd "$case_dir/../../../.." && pwd)"
for side in old new; do
  if [[ "$side" == old ]]; then rev='5e987889^'; else rev='5e987889'; fi
  for stem in re_bytes re_unicode; do
    GIT_NO_LAZY_FETCH=1 git -C "$root/benchmarks/repos/regex" show "$rev:src/$stem.rs" \
      | cmp - "$case_dir/$stem.$side.rs"
  done
done
GIT_NO_LAZY_FETCH=1 git -C "$root/benchmarks/repos/regex" diff 5e987889^ 5e987889 \
  -- src/re_bytes.rs src/re_unicode.rs | cmp - "$case_dir/source.diff"

source "$root/aeneas/env.sh"
cd "$root"
charon rustc --preset=aeneas --start-from-pub --dest-file "$case_dir/contract.llbc" \
  -- --edition=2021 --crate-type=lib --crate-name regex_match_contract \
  "$case_dir/contract.rs" > "$case_dir/charon.log" 2>&1
aeneas -backend lean -namespace RegexMatchContract -dest "$case_dir/lean" \
  "$case_dir/contract.llbc" > "$case_dir/aeneas.log" 2>&1
if rg -n '\b(sorry|admit)\b' "$case_dir/lean/Contract.lean" "$case_dir/Equivalence.lean"; then
  exit 1
fi
cd "$root/aeneas/proof"
lake env sh -c 'LEAN_PATH="$1/lean:$LEAN_PATH" lean --root="$1" -o "$1/lean/Contract.olean" "$1/lean/Contract.lean"' sh "$case_dir" > "$case_dir/lean-model.log" 2>&1
lake env sh -c 'LEAN_PATH="$1/lean:$LEAN_PATH" lean --root="$1" "$1/Equivalence.lean"' sh "$case_dir" > "$case_dir/lean-proof.log" 2>&1
printf 'Historical wrapper source, Aeneas model, and conditional Lean theorem checked.\n'
