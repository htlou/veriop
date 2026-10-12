#!/usr/bin/env bash
source "$(dirname "${BASH_SOURCE[0]}")/env.sh"
export OPAMROOT="$VERIOP_BENCH_ROOT/tools/cryptoline-opam"
export PATH="$VERIOP_BENCH_ROOT/../aeneas/env/ocaml-bin:$VERIOP_BENCH_ROOT/tools/cryptoline-deps/usr/bin:$PATH"
export CPATH="$VERIOP_BENCH_ROOT/tools/cryptoline-deps/usr/include:$VERIOP_BENCH_ROOT/../aeneas/env/gmp/usr/include:$VERIOP_BENCH_ROOT/../aeneas/env/gmp/usr/include/x86_64-linux-gnu${CPATH:+:$CPATH}"
export LIBRARY_PATH="$VERIOP_BENCH_ROOT/tools/cryptoline-deps/usr/lib/x86_64-linux-gnu:$LIBRARY_PATH"
export LD_LIBRARY_PATH="$VERIOP_BENCH_ROOT/tools/cryptoline-deps/usr/lib/x86_64-linux-gnu:$LD_LIBRARY_PATH"
export PKG_CONFIG_PATH="$VERIOP_BENCH_ROOT/tools/cryptoline-deps/usr/lib/x86_64-linux-gnu/pkgconfig:$VERIOP_BENCH_ROOT/../aeneas/env/gmp/usr/lib/x86_64-linux-gnu/pkgconfig${PKG_CONFIG_PATH:+:$PKG_CONFIG_PATH}"
eval "$(opam env --root="$OPAMROOT" --switch=5.4.0 --set-switch)"
