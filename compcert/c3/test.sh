#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/../env.sh"
scratch=$(mktemp -d)
trap 'rm -rf "$scratch"' EXIT
cp "$COMPCERT_WORK"/c1/LayoutSearch.ml "$COMPCERT_WORK"/c3/{PgoLayout,TestPgo}.ml "$scratch/"
cd "$scratch"
ocamlopt -o check LayoutSearch.ml PgoLayout.ml TestPgo.ml
env -u VERIOP_LAYOUT_PROFILE -u EXPECT_PROFILE ./check
printf 'malformed\n' > malformed.profile
VERIOP_LAYOUT_PROFILE=malformed.profile ./check
VERIOP_LAYOUT_PROFILE=absent.profile ./check
cat > key.ml <<'ML'
let () = print_endline (Digest.to_hex (Digest.string (Marshal.to_string 7 [Marshal.No_sharing])))
ML
ocaml key.ml > key.txt
printf '%s 0 1 100\n' "$(cat key.txt)" > valid.profile
VERIOP_LAYOUT_PROFILE=valid.profile EXPECT_PROFILE=yes ./check
printf '%s 0 1 nan\n' "$(cat key.txt)" > nan.profile
VERIOP_LAYOUT_PROFILE=nan.profile ./check
printf '%s 0 1 -1\n' "$(cat key.txt)" > negative.profile
VERIOP_LAYOUT_PROFILE=negative.profile ./check
