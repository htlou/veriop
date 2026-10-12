#!/usr/bin/env bash
set -euo pipefail

case_dir="$(cd "$(dirname "$0")" && pwd)"
root="$(cd "$case_dir/../../../.." && pwd)"
cd "$root"
python3 -B "$case_dir/recover.py" > "$case_dir/source-recovery.log"
clang -std=c11 -O2 -fsanitize=undefined,address -fno-omit-frame-pointer \
  "$case_dir/hex.old.c" "$case_dir/hex.new.c" "$case_dir/witness.c" \
  -lcrypto -o /tmp/openssl-d6e40568-witness
ASAN_OPTIONS=detect_leaks=0 /tmp/openssl-d6e40568-witness > "$case_dir/native-witness.log" 2>&1
for side in old new; do
  "$root/alive2/toolchain/usr/bin/clang-20" -std=c11 -O0 -Xclang -disable-O0-optnone \
    -S -emit-llvm "$case_dir/step.$side.c" -o "$case_dir/step.$side.ll"
done
checker="$root/alive2/build/alive2/alive-tv"
"$checker" --func=step_all --always-verify "$case_dir/step.old.ll" "$case_dir/step.new.ll" \
  > "$case_dir/step-unequal.log"
"$checker" --func=step_positive --always-verify "$case_dir/step.old.ll" "$case_dir/step.new.ll" \
  > "$case_dir/step-positive-forward.log"
"$checker" --func=step_positive --always-verify "$case_dir/step.new.ll" "$case_dir/step.old.ll" \
  > "$case_dir/step-positive-backward.log"
rg -q '1 incorrect transformations' "$case_dir/step-unequal.log"
for side in forward backward; do
  rg -q '1 correct transformations' "$case_dir/step-positive-$side.log"
  rg -q '0 incorrect transformations' "$case_dir/step-positive-$side.log"
done
printf 'Exact source, defined public counterexample, and Alive2 step relations checked.\n'
