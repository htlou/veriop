#!/usr/bin/env bash
# Build the official bench_uint16 against the Alive2-checked IR.
# Usage: build-linked.sh <stock|cand>
#  1. harness/u16_impl.cpp -> build/ir/<v>/u16_impl.ll   (the IR that Alive2 checks)
#  2. that .ll -> object with codegen only (-disable-llvm-optzns: no IR re-optimization)
#  3. unmodified benchmarks/bench_uint16.cpp, official Release flags, plus
#     -include harness/u16_extern.h (extern template => calls the checked symbol)
#  4. link.
set -euo pipefail
HERE="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
source "$HERE/../../alive2/env.sh"
V="$1"; D=""; [ "$V" = cand ] && D=-DFF_HAS_SLOW
INC="$HERE/src/${SRC:-$V}/include"; IR="$HERE/build/ir/${SRC:-$V}"; OUT="$HERE/build/linked/${SRC:-$V}"; mkdir -p "$IR" "$OUT"
CXX=(clang++ --gcc-install-dir=/usr/lib/gcc/x86_64-linux-gnu/11)
F=(-O3 -DNDEBUG -std=gnu++17)
"${CXX[@]}" "${F[@]}" -fno-strict-aliasing $D -I "$INC" -S -emit-llvm "$HERE/harness/u16_impl.cpp" -o "$IR/u16_impl.ll"
"${CXX[@]}" -O3 -Xclang -disable-llvm-optzns -c "$IR/u16_impl.ll" -o "$OUT/u16_impl.o"
"${CXX[@]}" -O3 -Xclang -disable-llvm-optzns -S "$IR/u16_impl.ll" -o "$OUT/u16_impl.s"
"${CXX[@]}" "${F[@]}" $D -I "$INC" -I "$HERE/repos/counters/include" -include "$HERE/harness/u16_extern.h" \
  -c "$HERE/repos/fast_float/benchmarks/bench_uint16.cpp" -o "$OUT/bench_uint16_main.o"
"${CXX[@]}" "$OUT/bench_uint16_main.o" "$OUT/u16_impl.o" -o "$OUT/bench_uint16"
sha256sum "$IR/u16_impl.ll" "$OUT/u16_impl.o" "$OUT/bench_uint16_main.o" "$OUT/bench_uint16"
