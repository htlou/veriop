#!/usr/bin/env bash
set -euo pipefail

source "$(dirname "$0")/env.sh"
python3 "$VERIOP_BENCH_ROOT/bootstrap.py" --check > /dev/null

ptx="$VERIOP_BENCH_ROOT/../cuda/verified_optimization/ptx/aggregate-param.ptx"
log="$VERIOP_BENCH_ROOT/logs/volta-scalar-param-control.log"
"$VOLTA_BIN" --no-log-file compare "$ptx" "$ptx" \
  --kernel1 scalar_params --kernel2 scalar_params -b 128 -g 1 \
  --array input:0x10000:4:128:in --array out:0x20000:4:128:out \
  --check-array out --sample 0 \
  --param ptr:out --param ptr:input --param int:128 > "$log" 2>&1
rg -q '^EQUIVALENT$' "$log"
printf 'Volta scalar-parameter control: EQUIVALENT.\n'
