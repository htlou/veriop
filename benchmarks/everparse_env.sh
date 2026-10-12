#!/usr/bin/env bash
# Source before building pinned EverParse F*/CDDL targets.
source "$(dirname "${BASH_SOURCE[0]}")/env.sh"
export EVERPARSE_USE_MY_DEPS=1
export FSTAR_EXE="$VERIOP_BENCH_ROOT/tools/everparse-2026.10.06/everparse/bin/fstar.exe"
export KRML_EXE="$VERIOP_BENCH_ROOT/tools/everparse-2026.10.06/everparse/bin/krml"
export PULSE_HOME="$VERIOP_BENCH_ROOT/tools/everparse-2026.10.06/everparse"
export OPAMROOT="$VERIOP_BENCH_ROOT/../aeneas/env/opam"
export PATH="$VERIOP_BENCH_ROOT/../aeneas/env/ocaml-bin:$PATH"
