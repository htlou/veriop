#!/usr/bin/env bash
# Default upstream CMake (Release) builds of the official benchmarks, stock vs patched, clang 20.
set -uo pipefail
H="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"; source "$H/../../alive2/env.sh"
FS="$H/full-suite"; GCC="--gcc-install-dir=/usr/lib/gcc/x86_64-linux-gnu/11"
for v in stock patched; do
  cmake -S "$FS/libdivide-$v" -B "$FS/build-libdivide-$v" -DCMAKE_CXX_COMPILER=clang++ -DCMAKE_C_COMPILER=clang \
     -DCMAKE_CXX_FLAGS="$GCC" -DCMAKE_C_FLAGS="$GCC" > "$FS/build-libdivide-$v.cmake.log" 2>&1
  cmake --build "$FS/build-libdivide-$v" -j16 --target benchmark benchmark_branchfree tester > "$FS/build-libdivide-$v.build.log" 2>&1; echo "libdivide $v build $?"
  cmake -S "$FS/ff-$v" -B "$FS/build-ff-$v" -DFASTFLOAT_BENCHMARKS=ON -DCMAKE_CXX_COMPILER=clang++ \
     -DCMAKE_CXX_FLAGS="$GCC" > "$FS/build-ff-$v.cmake.log" 2>&1
  cmake --build "$FS/build-ff-$v" -j16 > "$FS/build-ff-$v.build.log" 2>&1; echo "ff $v build $?"
done
