#!/usr/bin/env bash
# usage: lchk.sh <file.lean relative to lean/> [<olean module path e.g. C9979cc3/SufOld>]
# typechecks (and optionally compiles to lean/build/<mod>.olean) a lean file with lean/build on LEAN_PATH
set -uo pipefail
L=/srv/home/hantaolou/code/veriop/history-eq/rust/rust-base64/lean
cd $L
f=$1; mod=${2:-}
mkdir -p build
if [ -n "$mod" ]; then
  mkdir -p build/$(dirname $mod)
  lake env bash -c "LEAN_PATH=$L/build:\$LEAN_PATH lean -o build/$mod.olean -i build/$mod.ilean $f"
else
  lake env bash -c "LEAN_PATH=$L/build:\$LEAN_PATH lean $f"
fi
