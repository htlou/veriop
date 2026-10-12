#!/usr/bin/env bash
set -euo pipefail

source "$(dirname "$0")/env.sh"
root="$VERIOP_BENCH_ROOT/.."
python3 "$VERIOP_BENCH_ROOT/bootstrap.py" --check > /dev/null

clang="$root/alive2/toolchain/usr/lib/llvm-20/bin/clang++"
alive="$root/alive2/build/alive2/alive-tv"
gcc_dir="$(dirname "$(g++ -print-libgcc-file-name)")"
raw="$VERIOP_BENCH_ROOT/build/simdjson-eight-digits.raw.ll"
ir="$VERIOP_BENCH_ROOT/build/simdjson-eight-digits.ll"
log="$VERIOP_BENCH_ROOT/logs/simdjson-eight-digits-alive2.log"
"$clang" "--gcc-install-dir=$gcc_dir" -std=c++17 -O2 -mssse3 -msse4.1 -DNDEBUG \
    -fno-exceptions -fno-rtti -fno-strict-aliasing -fno-vectorize -fno-slp-vectorize \
    -Wno-undefined-inline -I "$VERIOP_BENCH_ROOT/repos/simdjson/include" \
    -S -emit-llvm "$VERIOP_BENCH_ROOT/alive2/simdjson_eight_digits.cpp" -o "$raw"

# Alive2's LLVM 20 front end rejects nocapture; removing this attribute only
# relaxes the pointer contract and leaves both function bodies unchanged.
sed 's/nocapture //g' "$raw" > "$ir"
python3 - "$raw" "$ir" <<'PY'
from pathlib import Path
import sys
raw, cleaned = (Path(path).read_text() for path in sys.argv[1:])
assert 'nocapture ' in raw
assert cleaned == raw.replace('nocapture ', '')
assert 'dereferenceable(16)' in cleaned
PY

"$alive" --bidirectional --always-verify --fail-src-ub --smt-to=30000 \
    --src-fn=sj_eight_fallback --tgt-fn=sj_eight_westmere "$ir" > "$log" 2>&1
rg -q '^These functions seem to be equivalent!$' "$log"
printf 'Pinned simdjson fallback/Westmere eight-digit parser: bidirectional Alive2 proof passed.\n'
