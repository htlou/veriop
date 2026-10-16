#!/usr/bin/env bash
# Exploratory (non-final) timing: run official decode_slice workloads for one variant on CPU 184.
# Usage: quick-bench.sh <variant> <tag>
set -euo pipefail
H="$(cd "$(dirname "$0")/.." && pwd)"
variant=$1; tag=$2
filter=${BENCH_FILTER:-'decode_(small|large)_input/decode_slice/(3|50|100|500|3072|3145728|10485760|31457280)$'}
mapfile -t exe < <(find "$H/repos/$variant/target/release/deps" -maxdepth 1 -type f -name 'benchmarks-*' -executable)
[ "${#exe[@]}" = 1 ] || { echo "need exactly one bench binary for $variant" >&2; exit 1; }
out="$H/results/explore/$variant/$tag"; mkdir -p "$out"
CRITERION_HOME="$out/criterion" taskset -c 184 "${exe[0]}" "$filter" --bench --noplot > "$out/run.log" 2>&1
python3 - "$out/criterion" <<'PY'
import json,sys,glob,os
root=sys.argv[1]
for f in sorted(glob.glob(root+'/*/decode_slice/*/new/estimates.json'), key=lambda p:int(p.split('/')[-3])):
    print(f.split('/')[-3], round(json.load(open(f))['median']['point_estimate'],2))
PY
