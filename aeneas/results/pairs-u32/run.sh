#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/../../env.sh"
for round in 1 2; do
  variants=(rust-base64 base64-pairs-u32)
  if [ "$round" = 2 ]; then variants=(base64-pairs-u32 rust-base64); fi
  for variant in "${variants[@]}"; do
    CRITERION_HOME="$AENEAS_WORK/results/pairs-u32/criterion/$variant" \
      taskset -c 2 "$AENEAS_WORK/repos/$variant/target/release/deps/benchmarks-81bf89f34f44580f" \
      'encode_(small|large)_input/encode_slice/' --bench --noplot --save-baseline "round-$round" \
      > "$AENEAS_WORK/logs/pairs-u32-$variant-round-$round.log" 2>&1
  done
done
