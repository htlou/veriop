#!/usr/bin/env bash
# Upstream Lean verification of the regenerated tests (tests/lean: `make` = prepare-projects +
# `lake exe cache get && lake build`). The mathlib cache download is replaced by copying the
# already-built packages at the same pinned revisions (mathlib fabf563a7c, ...).
# Usage: run-lean-tests.sh <tree> <cpus>
set -uo pipefail
tree=$1; cpus=$2
V="$(cd "$(dirname "$0")" && pwd)"
name=$(basename "$tree")
log="$V/logs/lean-tests-$name.log"
cd "$tree/tests/lean"
mkdir -p .lake
[ -d .lake/packages ] || cp -a /srv/home/hantaolou/code/veriop/heldout/rust-aeneas/tools/aeneas-lean/.lake/packages .lake/
{ make prepare-projects && taskset -c "$cpus" lake build -KCI=1 2>&1; echo "lake-build-exit=$?"; } > "$log" 2>&1
