#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/env.sh"
base64_variant=${BASE64_VARIANT:-base64-pair-table}
base64_results=${BASE64_RESULTS:-pair-table}
lz4_variant=${LZ4_VARIANT:-lz4-overlap-copy}
lz4_results=${LZ4_RESULTS:-overlap-copy}
for round in 1 2; do
  variants=(rust-base64 "$base64_variant")
  if [ "$round" = 2 ]; then variants=("$base64_variant" rust-base64); fi
  for variant in "${variants[@]}"; do
    mapfile -t binaries < <(find "$AENEAS_WORK/repos/$variant/target/release/deps" -maxdepth 1 -type f -name 'benchmarks-*' -executable)
    [ "${#binaries[@]}" = 1 ]
    CRITERION_HOME="$AENEAS_WORK/results/$base64_results/criterion/$variant" \
      taskset -c 2 "${binaries[0]}" 'encode_(small|large)_input/encode_slice/' \
      --bench --noplot --save-baseline "round-$round" \
      > "$AENEAS_WORK/logs/$base64_results-$variant-round-$round.log" 2>&1
  done
done
for round in 1 2; do
  variants=(lz4_flex "$lz4_variant")
  if [ "$round" = 2 ]; then variants=("$lz4_variant" lz4_flex); fi
  for variant in "${variants[@]}"; do
    mapfile -t binaries < <(find "$AENEAS_WORK/repos/$variant/target/release/deps" -maxdepth 1 -type f -name 'binggan_bench-*' -executable)
    [ "${#binaries[@]}" = 1 ]
    BINGGAN_HOME="$AENEAS_WORK/results/$lz4_results/binggan/$variant/round-$round" \
      BINGGAN_FILTER='bench_name:"lz4 flex"' taskset -c 2 "${binaries[0]}" \
      > "$AENEAS_WORK/logs/$lz4_results-$variant-round-$round.log" 2>&1
  done
done
