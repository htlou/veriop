#!/usr/bin/env bash
set -euo pipefail

source "$(dirname "$0")/env.sh"
root="$VERIOP_BENCH_ROOT/.."
python3 "$VERIOP_BENCH_ROOT/bootstrap.py" --check > /dev/null

clang="$root/alive2/toolchain/usr/lib/llvm-20/bin/clang++"
alive="$root/alive2/build/alive2/alive-tv"
gcc_dir="$(dirname "$(g++ -print-libgcc-file-name)")"
ir="$VERIOP_BENCH_ROOT/build/fast-float-bits.ll"
"$clang" "--gcc-install-dir=$gcc_dir" -std=c++17 -DNDEBUG -O1 \
    -fno-exceptions -fno-rtti -fno-strict-aliasing -fno-vectorize -fno-slp-vectorize \
    -I "$VERIOP_BENCH_ROOT/repos/fast_float/include" \
    -S -emit-llvm "$VERIOP_BENCH_ROOT/alive2/fast_float_bits.cpp" -o "$ir"

for kind in lz tz; do
    log="$VERIOP_BENCH_ROOT/logs/fast-float-alive2-$kind.log"
    "$alive" --bidirectional --always-verify --fail-src-ub --smt-to=30000 \
        --src-fn="ff_${kind}_generic" --tgt-fn="ff_${kind}_builtin" "$ir" > "$log" 2>&1
    rg -q '^These functions seem to be equivalent!$' "$log"
done
printf 'Pinned fast_float leading/trailing-zero generic/builtin pairs: bidirectional Alive2 proof passed.\n'
