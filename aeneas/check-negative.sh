#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/env.sh"
cd "$AENEAS_WORK/proof"
lake build Lz4Ref Lz4Negative > ../logs/negative-build.log 2>&1
if lake env lean ../results/NegativeCheck.lean > ../logs/negative-rejection.log 2>&1; then
  echo 'ERROR: wrong return value was accepted' >&2
  exit 1
fi
rg -q 'Tactic `rfl` failed' ../logs/negative-rejection.log
echo 'PASS: the incorrect return-value mutation was rejected.'
