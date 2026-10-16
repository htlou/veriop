#!/usr/bin/env bash
# Negative control: a one-character mutation of the candidate (shift 28 -> 29 for the third pair
# in decode_chunk_8_pairs) is extracted exactly like the real candidate, and the unchanged
# proof script must fail on it.
set -euo pipefail
source "$(dirname "$0")/env.sh"
H=$HELDOUT
neg=$H/repos/base64-decode-pairs-negative
rm -rf "$neg"; cp -a "$H/repos/base64-decode-pairs" "$neg"; rm -rf "$neg/target"
f=$neg/src/engine/general_purpose/decode.rs
grep -c '| u64::from(p2) << 28' "$f"
sed -i 's/| u64::from(p2) << 28/| u64::from(p2) << 29/' "$f"
grep -c '| u64::from(p2) << 29' "$f"
bash "$H/scripts/extract.sh" base64-decode-pairs-negative DecodeModelNeg
cd "$H/proof"
taskset -c 64-79 lake build DecodeModelNeg > "$H/logs/negative-model-build.log" 2>&1
sed 's/^import DecodeModel\.DecodeModel$/import DecodeModelNeg.DecodeModelNeg/; s/^open DecodeModel$/open DecodeModelNeg/; s/DecodeProof/DecodeProofNeg/g' \
  DecodeProof.lean > DecodeProofNeg.lean
if taskset -c 64-79 lake env lean DecodeProofNeg.lean > "$H/logs/negative-proof.log" 2>&1; then
  echo "FAIL: proof accepted the mutated candidate"; exit 1
fi
if grep -q 'unknown module\|unknown namespace' "$H/logs/negative-proof.log"; then echo "FAIL: setup error"; exit 1; fi
grep -m3 'error' "$H/logs/negative-proof.log"
echo "PASS: the equivalence proof rejects the mutated candidate"
