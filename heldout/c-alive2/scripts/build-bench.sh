#!/usr/bin/env bash
# Usage: build-bench.sh <include-dir> <out-dir> [extra flags...]
# Mirrors the official CMake Release build of benchmarks/{bench_uint16,bench_ip}.cpp
# (CMAKE_BUILD_TYPE=Release -> -O3 -DNDEBUG; CXX_STANDARD 17 w/ extensions -> -std=gnu++17).
set -euo pipefail
HERE="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
source "$HERE/../../alive2/env.sh"
INC="$1"; OUT="$2"; shift 2
mkdir -p "$OUT"
FF="$HERE/repos/fast_float"; CT="$HERE/repos/counters/include"
for b in bench_uint16 bench_ip; do
  clang++ --gcc-install-dir=/usr/lib/gcc/x86_64-linux-gnu/11 -O3 -DNDEBUG -std=gnu++17 "$@" -I "$INC" -I "$CT" "$FF/benchmarks/$b.cpp" -o "$OUT/$b"
  clang++ --gcc-install-dir=/usr/lib/gcc/x86_64-linux-gnu/11 -O3 -DNDEBUG -std=gnu++17 "$@" -I "$INC" -I "$CT" -S "$FF/benchmarks/$b.cpp" -o "$OUT/$b.s"
done
sha256sum "$OUT"/bench_uint16 "$OUT"/bench_ip
