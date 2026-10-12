#!/usr/bin/env bash
set -euo pipefail

source "$(dirname "$0")/env.sh"
root="$VERIOP_BENCH_ROOT/.."
python3 "$VERIOP_BENCH_ROOT/bootstrap.py" --check > /dev/null

clang="$root/alive2/toolchain/usr/lib/llvm-20/bin/clang++"
alive="$root/alive2/build/alive2/alive-tv"
gcc_dir="$(dirname "$(g++ -print-libgcc-file-name)")"
ir="$VERIOP_BENCH_ROOT/build/aws-lc-sha-word.ll"
log="$VERIOP_BENCH_ROOT/logs/aws-lc-sha-word-alive2.log"
"$clang" "--gcc-install-dir=$gcc_dir" -std=c++17 -O1 -DNDEBUG \
    -fno-exceptions -fno-rtti -fno-strict-aliasing -fno-vectorize -fno-slp-vectorize \
    -I "$VERIOP_BENCH_ROOT/repos/aws-lc" -I "$VERIOP_BENCH_ROOT/repos/aws-lc/include" \
    -S -emit-llvm "$VERIOP_BENCH_ROOT/alive2/aws_lc_sha_word.cpp" -o "$ir"

"$alive" --bidirectional --always-verify --fail-src-ub --smt-to=30000 \
    --src-fn=aws_sha_word_bytes --tgt-fn=aws_sha_word_load "$ir" > "$log" 2>&1
rg -q '^These functions seem to be equivalent!$' "$log"
printf 'Pinned aws-lc SHA-256 big-endian word load: bidirectional Alive2 value proof passed.\n'
