#!/usr/bin/env bash
set -euo pipefail
bench_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
target="$bench_root/repos/hacl-star/dist/gcc-compatible"
harness="$bench_root/tools/hacl-packages"
build="$bench_root/build/hacl-packages"

make -C "$target" -j"${HACL_JOBS:-4}"
cmake -S "$harness" -B "$build" -DENABLE_BENCHMARKS=ON -DENABLE_OPENSSL_BENCHMARKS=ON -DCMAKE_BUILD_TYPE=Release
cmake --build "$build" --target chacha20_benchmark -j"${HACL_JOBS:-4}"
g++ -O3 -std=c++17 -DHACL_CAN_COMPILE_VEC128 -DHACL_CAN_COMPILE_VEC256 \
  -I"$target" -I"$bench_root/repos/hacl-star/dist/karamel/include" \
  -I"$bench_root/repos/hacl-star/dist/karamel/krmllib/dist/minimal" \
  -I"$harness/benchmarks" -I"$harness/cpu-features/include" \
  -I"$build/benchmark-src/include" \
  "$harness/benchmarks/chacha20.cc" \
  "$build/CMakeFiles/hacl_cpu_features.dir/cpu-features/src/cpu-features.c.o" \
  "$target/libevercrypt.a" "$build/benchmark-build/src/libbenchmark.a" \
  -lcrypto -ldl -pthread -o "$bench_root/build/hacl-star-chacha20-benchmark"
