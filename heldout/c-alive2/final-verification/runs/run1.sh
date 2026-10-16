#!/usr/bin/env bash
# run1.sh <case> <unroll> <cpu> <logdir> [smt-to-ms] [extra alive-tv args...]
HERE="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "$HERE/../../../alive2/env.sh"
c=$1; u=$2; cpu=$3; ld=$4; to=${5:-600000}; shift 5 2>/dev/null || shift $#
mkdir -p "$ld"
start=$(date +%s.%N)
LD_PRELOAD=$HERE/../tools/z3mem_shim.so Z3MEM_BYTES=$((24<<30)) taskset -c $cpu \
  "$HERE/alive2-sinkcheck/build/alive-tv" --func=ver --bidirectional --always-verify --fail-src-ub \
  --smt-to=$to --time-verify --src-unroll=$u --tgt-unroll=$u "$@" \
  "$HERE/modules/${c}_src.ll" "$HERE/modules/${c}_tgt.ll" > "$ld/${c}_u$u.log" 2>&1
rc=$?
end=$(date +%s.%N)
echo "$c u$u rc=$rc $(echo "$end - $start" | bc)s $(grep -E '\[sink-check\]' "$ld/${c}_u$u.log" | tr '\n' ' ') $(grep -cE 'seem to be equivalent' "$ld/${c}_u$u.log")equiv $(grep -E '^ERROR' "$ld/${c}_u$u.log" | head -2 | tr '\n' ' ')"
