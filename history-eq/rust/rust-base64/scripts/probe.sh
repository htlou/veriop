#!/usr/bin/env bash
# usage: probe.sh <short> <harness .rs file>  -- appends the identical harness to src/lib.rs of both worktrees
# (restores lib.rs from git first so it can be re-run)
set -euo pipefail
H=/srv/home/hantaolou/code/veriop/history-eq
s=$1; f=$2
for side in old new; do
  d=$H/wt/base64-$s-$side
  git -C $d checkout -q -- src/lib.rs
  { echo; echo "// ==== equivalence-check harness (identical on both sides): $(basename $f) ===="; cat $f; } >> $d/src/lib.rs
done
echo "appended $f"
