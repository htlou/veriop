# Source from bash. Reuses the pilot's pinned toolchains (read-only) and this experiment's Aeneas copy.
source /srv/home/hantaolou/code/veriop/aeneas/env.sh
export HELDOUT="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")/.." && pwd)"
P=/srv/home/hantaolou/code/veriop/aeneas/env/opam/5.3.0
export OPAM_SWITCH_PREFIX=$P
export CAML_LD_LIBRARY_PATH=$P/lib/stublibs:$P/lib/ocaml/stublibs:$P/lib/ocaml
export OCAMLTOP_INCLUDE_PATH=$P/lib/toplevel
export PATH=$P/bin:$PATH
export AENEAS_DEV="$HELDOUT/tool-validation/trees/aeneas-final/src/_build/default/main.exe"   # upstream 557eff83 + patches/aeneas-final-from-upstream.patch
export LIBRARY_PATH=/srv/home/hantaolou/code/veriop/aeneas/env/gmp/usr/lib/x86_64-linux-gnu${LIBRARY_PATH:+:$LIBRARY_PATH}
export LD_LIBRARY_PATH=/srv/home/hantaolou/code/veriop/aeneas/env/gmp/usr/lib/x86_64-linux-gnu${LD_LIBRARY_PATH:+:$LD_LIBRARY_PATH}
export PATH="$HELDOUT/tools/charon-bin:$PATH"
