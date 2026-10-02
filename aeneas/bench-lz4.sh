#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/env.sh"
for round in 1 2; do
  if [ "$round" = 1 ]; then variants='lz4_flex lz4-candidate'; else variants='lz4-candidate lz4_flex'; fi
  for variant in $variants; do
    mapfile -t executables < <(find "$AENEAS_WORK/repos/$variant/target/release/deps" -maxdepth 1 -type f -name 'binggan_bench-*' -executable)
    [ "${#executables[@]}" = 1 ] || exit 1
    BINGGAN_HOME="$AENEAS_WORK/results/binggan/$variant/round-$round" \
      BINGGAN_FILTER='bench_name:"lz4 flex"' taskset -c "${BENCH_CPU:-2}" "${executables[0]}" \
      > "$AENEAS_WORK/logs/$variant-final-$round.log" 2>&1
  done
done
