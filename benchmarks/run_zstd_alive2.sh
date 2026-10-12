#!/usr/bin/env bash
set -euo pipefail

source "$(dirname "$0")/env.sh"
root="$VERIOP_BENCH_ROOT/.."
python3 "$VERIOP_BENCH_ROOT/bootstrap.py" --check > /dev/null

clang="$root/alive2/toolchain/usr/lib/llvm-20/bin/clang"
alive="$root/alive2/build/alive2/alive-tv"
ir="$VERIOP_BENCH_ROOT/build/zstd-bits.ll"
"$clang" -DNDEBUG -O1 -fno-strict-aliasing -fno-vectorize -fno-slp-vectorize \
    -I "$VERIOP_BENCH_ROOT/repos/zstd/lib/common" \
    -S -emit-llvm "$VERIOP_BENCH_ROOT/alive2/zstd_bits.c" -o "$ir"

for kind in clz ctz; do
    log="$VERIOP_BENCH_ROOT/logs/zstd-alive2-$kind.log"
    "$alive" --bidirectional --always-verify --fail-src-ub --smt-to=30000 \
        --src-fn="zstd_${kind}_fallback" --tgt-fn="zstd_${kind}_builtin" "$ir" > "$log" 2>&1
    rg -q '^These functions seem to be equivalent!$' "$log"
done
printf 'Pinned zstd CLZ and CTZ fallback/builtin pairs: bidirectional Alive2 proof passed for nonzero U32.\n'
