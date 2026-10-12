#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/cryptoline_env.sh"

cd "$VERIOP_BENCH_ROOT/tools/cryptoline"
summary="$VERIOP_BENCH_ROOT/logs/cryptoline-simple-jobs2-summary.log"
mkdir -p "$VERIOP_BENCH_ROOT/logs/cryptoline-simple-jobs2"
TERM=dumb LOGDIR="$VERIOP_BENCH_ROOT/logs/cryptoline-simple-jobs2" ./run_experiments -simple -jobs 2 | tee "$summary"
[[ "$(rg -c '\[OK\]$' "$summary")" == 5 ]]
! rg -q '\[(FAIL|ERROR)\]' "$summary"

proof="$VERIOP_BENCH_ROOT/logs/cryptoline-openssl-ecp-mul-by-2.log"
cv -v -no_carry_constraint -isafety -slicing -jobs 2 examples/openssl/ecp_nistz256/ecp_nistz256_mul_by_2_chains.cl > "$proof" 2>&1
rg -q 'Verification result:.*\[OK\]' "$proof"
