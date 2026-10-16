# Source this to build/run s2n-bignum HOL Light proofs natively with the local OCaml 5.3 toolchain.
V=/srv/home/hantaolou/code/veriop
export PATH=$V/aeneas/env/opam/5.3.0/bin:$PATH
export CAML_LD_LIBRARY_PATH=$V/aeneas/env/opam/5.3.0/lib/stublibs
export LIBRARY_PATH=$V/aeneas/env/gmp/usr/lib/x86_64-linux-gnu${LIBRARY_PATH:+:$LIBRARY_PATH}
export HOLDIR=$V/benchmarks/tools/hol-light
