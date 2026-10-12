#!/usr/bin/env bash
set -euo pipefail

case_dir="$(cd "$(dirname "$0")" && pwd)"
root="$(cd "$case_dir/../../../.." && pwd)"
python3 -B "$case_dir/check_source.py"

source "$root/aeneas/env.sh"
cd "$root"
charon rustc --preset=aeneas --start-from-pub --dest-file "$case_dir/error_scan.llbc" \
  -- --edition=2021 --crate-type=lib --crate-name base64_error_scan \
  "$case_dir/error_scan.rs" > "$case_dir/charon.log" 2>&1
aeneas -backend lean -namespace Base64ErrorScan -dest "$case_dir/lean" \
  "$case_dir/error_scan.llbc" > "$case_dir/aeneas.log" 2>&1
if rg -n '\b(sorry|admit)\b' "$case_dir/lean/ErrorScan.lean" "$case_dir/ErrorScanEquivalence.lean"; then
  exit 1
fi

cd "$root/aeneas/proof"
lake env sh -c 'LEAN_PATH="$1/lean:$LEAN_PATH" lean --root="$1" -o "$1/lean/ErrorScan.olean" "$1/lean/ErrorScan.lean"' sh "$case_dir" > "$case_dir/lean-model.log" 2>&1
lake env sh -c 'LEAN_PATH="$1/lean:$LEAN_PATH" lean --root="$1" "$1/ErrorScanEquivalence.lean"' sh "$case_dir" > "$case_dir/lean-proof.log" 2>&1
printf 'Source audit, Aeneas translation, and multi-chunk error/state theorem passed.\n'
