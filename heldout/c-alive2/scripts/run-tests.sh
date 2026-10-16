#!/usr/bin/env bash
# Build and run the fast_float repository test suite (FASTFLOAT_TEST=ON) for stock and cand.
set -uo pipefail
HERE="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
source "$HERE/../../alive2/env.sh"
for v in ${@:-stock cand}; do
  B="$HERE/build/tests/build-$v"; mkdir -p "$B"
  cmake -S "$HERE/build/tests/src-$v" -B "$B" -DFASTFLOAT_TEST=ON -DCMAKE_BUILD_TYPE=Release \
    -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_CXX_FLAGS="--gcc-install-dir=/usr/lib/gcc/x86_64-linux-gnu/11" > "$B.cmake.log" 2>&1
  cmake --build "$B" -j16 > "$B.build.log" 2>&1; echo "$v build exit $?"
  (cd "$B" && taskset -c 0-95,192-287 ctest -j16 --timeout 1200 --output-on-failure) > "$HERE/results/tests-$v.log" 2>&1
  echo "$v ctest exit $?"; tail -5 "$HERE/results/tests-$v.log"
done
