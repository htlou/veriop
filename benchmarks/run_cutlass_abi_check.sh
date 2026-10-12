#!/usr/bin/env bash
set -euo pipefail

source "$(dirname "$0")/env.sh"
python3 "$VERIOP_BENCH_ROOT/bootstrap.py" --check > /dev/null

generated="$VERIOP_BENCH_ROOT/build/cutlass/tools/library/generated/gemm/50/sgemm/cutlass_simt_sgemm_128x128_8x2_nn_align1.cu"
check="$VERIOP_BENCH_ROOT/volta/cutlass-pinned/check_params_offset.cu"
python3 - "$generated" "$check" > "$VERIOP_BENCH_ROOT/logs/cutlass-params-type-match.log" <<'PY'
from pathlib import Path
import re
import sys

generated, check = (Path(p).read_text() for p in sys.argv[1:])
old = re.search(r'using cutlass_simt_sgemm_128x128_8x2_nn_align1_base\s*=\s*(typename.*?::GemmKernel);', generated, re.S).group(1)
new = re.search(r'using Gemm\s*=\s*(typename.*?::GemmKernel);', check, re.S).group(1)
def tokens(text):
    return re.sub(r'\s+', '', re.sub(r'//[^\n]*', '', text))
assert tokens(old) == tokens(new), 'ABI check uses different GEMM template arguments'
print('exact generated GEMM template arguments match')
PY

nvcc -std=c++17 -I "$VERIOP_BENCH_ROOT/repos/cutlass/include" \
  -c "$check" -o "$VERIOP_BENCH_ROOT/build/cutlass-params-offset-check.o" \
  > "$VERIOP_BENCH_ROOT/logs/cutlass-params-offset-check.log" 2>&1
printf 'CUTLASS generated GEMM parameter offset: 20 bytes for grid_tiled_shape.k.\n'
