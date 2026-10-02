#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/env.sh"
# Reuse upstream Criterion workloads, with independent result directories.
filter=${BENCH_FILTER:-'encode_(small|large)_input/encode_slice/(3|50|100|500|3072|3145728|10485760|31457280)$'}
variants=("${@:-rust-base64}")
for round in 1 2; do
  order=("${variants[@]}")
  if [ "$round" = 2 ]; then
    order=()
    for ((i=${#variants[@]}-1; i>=0; i--)); do order+=("${variants[i]}"); done
  fi
  for variant in "${order[@]}"; do
    mapfile -t executables < <(find "$AENEAS_WORK/repos/$variant/target/release/deps" -maxdepth 1 -type f -name 'benchmarks-*' -executable)
    [ "${#executables[@]}" = 1 ] || { echo "Build exactly one benchmark binary for $variant" >&2; exit 1; }
    CRITERION_HOME="$AENEAS_WORK/results/criterion/$variant" taskset -c "${BENCH_CPU:-2}" \
      "${executables[0]}" "$filter" --bench --noplot --save-baseline "round-$round" \
      > "$AENEAS_WORK/logs/$variant-round-$round.log" 2>&1
  done
done
