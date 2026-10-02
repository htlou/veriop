#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/env.sh"
cd "$AENEAS_WORK"
dev_aeneas="$AENEAS_WORK/repos/aeneas/src/_build/default/main.exe"
for side in Ref Opt; do
  if [ "$side" = Ref ]; then repo=rust-base64; else repo=base64-pairs-callchain; fi
  model="Base64ApiPartial$side"
  mkdir -p "proof/$model"
  (cd "repos/$repo" && charon cargo --preset=aeneas \
    --monomorphize-mut=except-types --remove-adt-clauses '--remove-associated-types=*' \
    --dest-file "$AENEAS_WORK/results/$model.llbc" \
    --start-from '{impl base64::engine::Engine for base64::engine::general_purpose::GeneralPurpose}::internal_encode' \
    --opaque base64::engine::general_purpose::decode \
    --opaque base64::engine::general_purpose::decode_suffix \
    -- --lib --no-default-features --features std) \
    > "logs/base64-api-$side-charon.log" 2>&1
  "$dev_aeneas" -backend lean -loops-to-rec -no-progress-bar \
    -namespace "$model" -dest "proof/$model" "results/$model.llbc" \
    > "logs/base64-api-$side-aeneas.log" 2>&1
  if rg -n 'Generated the partial file' "logs/base64-api-$side-aeneas.log"; then exit 1; fi
  if rg -n '\b(sorry|axiom|admit|native_decide|bv_decide|implemented_by)\b' "proof/$model"; then exit 1; fi
done
(cd proof && lake build Base64ApiPartialRef Base64ApiPartialOpt \
  && lake env lean Base64ApiProof.lean) > logs/base64-api-verification.log 2>&1
if rg -n 'sorryAx|\.ax_|Lean.ofReduceBool|Lean.trustCompiler' logs/base64-api-verification.log; then exit 1; fi
cat logs/base64-api-verification.log
echo 'PASS: actual internal_encode models and supporting lemmas. Whole encoder equivalence is not yet proved.'
