#!/usr/bin/env bash
set -euo pipefail

case_dir="$(cd "$(dirname "$0")" && pwd)"
root="$(cd "$case_dir/../../../.." && pwd)"
cd "$root"
python3 "$case_dir/prepare.py" > "$case_dir/source-recovery.log"
source "$root/aeneas/env.sh"
rustc --edition=2021 "$case_dir/witness.rs" -o /tmp/regex-9ee9943e-witness \
  > "$case_dir/rust-witness.log" 2>&1
/tmp/regex-9ee9943e-witness >> "$case_dir/rust-witness.log"
charon rustc --preset=aeneas --start-from-pub --dest-file "$case_dir/contract.llbc" \
  -- --edition=2021 --crate-type=lib --crate-name regex_dfa_gate \
  "$case_dir/contract.rs" > "$case_dir/charon.log" 2>&1
aeneas -backend lean -namespace RegexDfaGate -dest "$case_dir/lean" \
  "$case_dir/contract.llbc" > "$case_dir/aeneas.log" 2>&1
if rg -n '\b(sorry|admit)\b' "$case_dir/lean/Contract.lean" "$case_dir/Equivalence.lean"; then
  exit 1
fi
cd "$root/aeneas/proof"
lake env sh -c 'LEAN_PATH="$1/lean:$LEAN_PATH" lean --root="$1" -o "$1/lean/Contract.olean" "$1/lean/Contract.lean"' sh "$case_dir" > "$case_dir/lean-model.log" 2>&1
lake env sh -c 'LEAN_PATH="$1/lean:$LEAN_PATH" lean --root="$1" "$1/Equivalence.lean"' sh "$case_dir" > "$case_dir/lean-proof.log" 2>&1
printf 'Source hashes, Rust witness, Aeneas model, and conditional Lean lemmas checked.\n'
