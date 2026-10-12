#!/usr/bin/env bash
set -euo pipefail

case_dir="$(cd "$(dirname "$0")" && pwd)"
root="$(cd "$case_dir/../../../.." && pwd)"
cd "$root"
python3 -B "$case_dir/prepare.py" > "$case_dir/source-recovery.log"
source "$root/aeneas/env.sh"
rustc --edition=2021 --crate-type=lib --crate-name regex_set_config \
  "$case_dir/contract.rs" -o /tmp/regex-930770bb8b.rlib \
  > "$case_dir/rust-build.log" 2>&1
charon rustc --preset=aeneas --start-from-pub --dest-file "$case_dir/contract.llbc" \
  -- --edition=2021 --crate-type=lib --crate-name regex_set_config \
  "$case_dir/contract.rs" > "$case_dir/charon.log" 2>&1
aeneas -backend lean -namespace RegexSetConfig -dest "$case_dir/lean" \
  "$case_dir/contract.llbc" > "$case_dir/aeneas.log" 2>&1
if rg -n '\b(sorry|admit)\b' "$case_dir/lean/Contract.lean" "$case_dir/Equivalence.lean"; then
  exit 1
fi
cd "$root/aeneas/proof"
lake env sh -c 'LEAN_PATH="$1/lean:$LEAN_PATH" lean --root="$1" -o "$1/lean/Contract.olean" "$1/lean/Contract.lean"' sh "$case_dir" > "$case_dir/lean-model.log" 2>&1
lake env sh -c 'LEAN_PATH="$1/lean:$LEAN_PATH" lean --root="$1" "$1/Equivalence.lean"' sh "$case_dir" > "$case_dir/lean-proof.log" 2>&1
printf 'Exact source hashes and Aeneas/Lean configuration relation checked.\n'
