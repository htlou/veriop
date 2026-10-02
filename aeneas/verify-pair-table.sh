#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/env.sh"
cd "$AENEAS_WORK"
proof_repo=${BASE64_PROOF_REPO:-base64-pairs-callchain}
echo "Extracting pair-table proof input from repos/$proof_repo"
(cd "repos/$proof_repo" && charon cargo --preset=aeneas \
  --dest-file "$AENEAS_WORK/results/Base64PairsValue.llbc" \
  --start-from base64::engine::general_purpose::encode_scalar_tail \
  -- --lib --no-default-features --features std) \
  > logs/base64-pair-value-charon.log 2>&1
aeneas -backend lean -loops-to-rec -no-progress-bar -namespace Base64PairsValue \
  -dest proof/Base64PairsValue results/Base64PairsValue.llbc \
  > logs/base64-pair-value-aeneas.log 2>&1
if rg -n '\b(sorry|axiom|admit|native_decide|bv_decide|implemented_by)\b' \
    proof/Base64PairsValue proof/PairTableProof.lean proof/PairTableInit.lean proof/PairEmissionProof.lean; then
  exit 1
fi
(cd proof && lake build Base64PairsValue PairTableInit && lake env lean PairTableProof.lean \
  && lake env lean PairTableInit.lean && lake env lean PairEmissionProof.lean) > logs/pair-table-verification.log 2>&1
if rg -n 'sorryAx|\.ax_|Lean.ofReduceBool|Lean.trustCompiler' logs/pair-table-verification.log; then
  exit 1
fi
cat logs/pair-table-verification.log
echo 'PASS: generated model, pair indices, table initialization, pair lookup, pair write, and pair emission equivalence. Full encoder equivalence is not yet proved.'
