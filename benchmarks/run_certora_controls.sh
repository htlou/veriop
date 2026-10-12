#!/usr/bin/env bash
set -euo pipefail

source "$(dirname "$0")/env.sh"
cd "$VERIOP_BENCH_ROOT/.."

solc_dir="$VERIOP_BENCH_ROOT/tools/solc-bin"
mkdir -p "$solc_dir"
for version in 0.8.26 0.8.35; do
    compiler="${SOLC_CACHE:-$HOME/.local/share/svm}/$version/solc-$version"
    test -x "$compiler" || { printf 'missing %s\n' "$compiler" >&2; exit 1; }
    ln -sfn "$compiler" "$solc_dir/solc-$version"
done
export PATH="$solc_dir:$PATH"

eqcheck="$VERIOP_BENCH_ROOT/tools/certora-venv/bin/certoraEqCheck"
"$eqcheck" conf "$VERIOP_BENCH_ROOT/certora/v4/control.conf" TickReference:maxUsableTick TickControl:maxUsableTick > "$VERIOP_BENCH_ROOT/logs/certora-v4-control.log" 2>&1
"$eqcheck" conf "$VERIOP_BENCH_ROOT/certora/oz/control.conf" MathReference:add512 MathControl:add512 > "$VERIOP_BENCH_ROOT/logs/certora-oz-control.log" 2>&1
rg -q 'Certora spec file generated!' "$VERIOP_BENCH_ROOT/logs/certora-v4-control.log"
rg -q 'Certora spec file generated!' "$VERIOP_BENCH_ROOT/logs/certora-oz-control.log"
printf 'Certora Solidity compilation and CVL typechecking passed for both pinned-source controls.\n'
