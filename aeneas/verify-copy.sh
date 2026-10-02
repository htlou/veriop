#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/env.sh"
cd "$AENEAS_WORK"
dev_aeneas="$AENEAS_WORK/repos/aeneas/src/_build/default/main.exe"
for side in Ref Opt; do
  if [ "$side" = Ref ]; then repo=lz4_flex; else repo=lz4-stdlib-copy; fi
  (cd "repos/$repo" && charon cargo --preset=aeneas \
    --dest-file "$AENEAS_WORK/results/Lz4Copy$side.llbc" \
    --start-from lz4_flex::fastcpy::slice_copy \
    -- --lib --no-default-features --features std,safe-encode,safe-decode,checked-decode) \
    > "logs/lz4-copy-$side-charon.log" 2>&1
  "$dev_aeneas" -backend lean -loops-to-rec -no-progress-bar \
    -namespace "Lz4Copy$side" -dest "proof/Lz4Copy$side" \
    "results/Lz4Copy$side.llbc" > "logs/lz4-copy-$side-aeneas.log" 2>&1
done
if rg -n '\b(sorry|axiom|admit|native_decide|implemented_by)\b' \
    proof/Lz4CopyRef proof/Lz4CopyOpt proof/CopyProof.lean; then exit 1; fi
(cd proof && lake build Lz4CopyRef Lz4CopyOpt && lake env lean CopyProof.lean) \
  > logs/copy-verification.log 2>&1
if rg -n 'sorryAx|\.ax_|Lean.ofReduceBool|Lean.trustCompiler' logs/copy-verification.log; then exit 1; fi
cat logs/copy-verification.log
echo 'PASS: original and stdlib copy helpers are equal for all slice inputs. Full block equivalence is not yet proved.'
