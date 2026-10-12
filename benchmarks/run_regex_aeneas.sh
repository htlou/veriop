#!/usr/bin/env bash
set -euo pipefail

source "$(dirname "$0")/env.sh"
root="$VERIOP_BENCH_ROOT/.."
source "$root/aeneas/env.sh"
python3 "$VERIOP_BENCH_ROOT/bootstrap.py" --check > /dev/null

repo="$VERIOP_BENCH_ROOT/repos/regex"
out="$VERIOP_BENCH_ROOT/build/regex-utf8"
export CARGO_TARGET_DIR="$VERIOP_BENCH_ROOT/build/regex-charon-target"

(cd "$repo" && charon cargo --preset=aeneas \
  --dest-file "$out.llbc" \
  --start-from regex_automata::util::utf8::is_leading_or_invalid_byte \
  -- --lib -p regex-automata --no-default-features --features std) \
  > "$VERIOP_BENCH_ROOT/logs/regex-charon-utf8.log" 2>&1

aeneas -backend lean -loops-no-rec -no-progress-bar -namespace RegexUtf8 \
  -dest "$out-lean" "$out.llbc" \
  > "$VERIOP_BENCH_ROOT/logs/regex-aeneas-utf8.log" 2>&1

model="$out-lean/Regex-utf8.lean"
rg -q -F 'def util.utf8.is_leading_or_invalid_byte' "$model"
if rg -q '\b(sorry|admit|axiom)\b' "$model"; then
  echo 'Aeneas emitted an incomplete regex model' >&2
  exit 1
fi
(cd "$root/aeneas/proof" && lake env lean "$model") \
  > "$VERIOP_BENCH_ROOT/logs/regex-lean-utf8.log" 2>&1

printf 'Pinned regex UTF-8 helper: Charon extraction, Aeneas translation, and Lean typecheck passed.\n'
