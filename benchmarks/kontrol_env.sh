#!/usr/bin/env bash
# Source before the pinned Kontrol kdist build and profiling workload.
source "$(dirname "${BASH_SOURCE[0]}")/env.sh"
_deps="$VERIOP_BENCH_ROOT/tools/apt"
export CXX='g++ -fpermissive' CC=gcc
export K_CLANG_CXX="$_deps/clang15/usr/bin/clang++-15"
export PATH="$_deps/clang15/usr/lib/llvm-15/bin:$_deps/clang15/usr/bin:$PATH"
export CPATH="$_deps/gmp-dev/usr/include:$_deps/gmp-dev/usr/include/x86_64-linux-gnu:$_deps/mpfr-dev/usr/include:$_deps/secp-dev/usr/include"
export CPLUS_INCLUDE_PATH="/usr/include/c++/11:/usr/include/x86_64-linux-gnu/c++/11:/usr/include/c++/11/backward:$CPATH"
export CMAKE_INCLUDE_PATH="$CPATH"
export LIBRARY_PATH="/usr/lib/gcc/x86_64-linux-gnu/11:$_deps/gmp-dev/usr/lib/x86_64-linux-gnu:$_deps/mpfr-dev/usr/lib/x86_64-linux-gnu:$_deps/secp-dev/usr/lib/x86_64-linux-gnu:$_deps/unwind-dev/usr/lib/x86_64-linux-gnu"
export CMAKE_LIBRARY_PATH="$LIBRARY_PATH"
export LD_LIBRARY_PATH="$_deps/clang15/usr/lib/x86_64-linux-gnu:$_deps/jemalloc-runtime/usr/lib/x86_64-linux-gnu:$_deps/secp-runtime/usr/lib/x86_64-linux-gnu:$_deps/gmpxx-runtime/usr/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH"
export UV_CACHE_DIR="$VERIOP_BENCH_ROOT/tools/uv-cache"
unset _deps
