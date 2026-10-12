# Source from Bash to use the isolated CompCert toolchain.
export COMPCERT_WORK="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
export OPAMROOT="$COMPCERT_WORK/env/opam"
export OPAMSWITCH=compcert
export PATH="$COMPCERT_WORK/env/bin:$COMPCERT_WORK/env/opam/compcert/bin:$PATH"
export C_INCLUDE_PATH="$COMPCERT_WORK/env/gmp/usr/include/x86_64-linux-gnu${C_INCLUDE_PATH:+:$C_INCLUDE_PATH}"
export LIBRARY_PATH="$COMPCERT_WORK/env/gmp/usr/lib/x86_64-linux-gnu${LIBRARY_PATH:+:$LIBRARY_PATH}"
export PKG_CONFIG_PATH="$COMPCERT_WORK/env/gmp/usr/lib/x86_64-linux-gnu/pkgconfig${PKG_CONFIG_PATH:+:$PKG_CONFIG_PATH}"
export OPAMJOBS=16
