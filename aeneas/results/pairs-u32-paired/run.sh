#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/../../env.sh"
for round in 1 2; do
  variants=(rust-base64 base64-pairs-tail base64-pairs-u32)
  if [ "$round" = 2 ]; then variants=(base64-pairs-u32 base64-pairs-tail rust-base64); fi
  for size in 3 50 100 500 3072 3145728 10485760 31457280; do
    for variant in "${variants[@]}"; do
      CRITERION_HOME="$AENEAS_WORK/results/pairs-u32-paired/criterion/$variant" \
        taskset -c 2 "$AENEAS_WORK/repos/$variant/target/release/deps/benchmarks-81bf89f34f44580f" \
        "encode_(small|large)_input/encode_slice/$size\$" --bench --noplot --save-baseline "round-$round" \
        > "$AENEAS_WORK/logs/pairs-u32-paired-$variant-$size-round-$round.log" 2>&1
    done
  done
done
