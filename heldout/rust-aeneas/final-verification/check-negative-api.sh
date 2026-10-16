#!/usr/bin/env bash
# Negative controls for the new public-API theorems (decode_equiv, decode_vec_equiv and the
# generic-input forms decode_default_equiv, decode_vec_default_equiv).
# Each mutant of the candidate is extracted exactly like the real candidate (extract-api.sh), and
# the unchanged proof scripts (DecodeApiBase = proof/DecodeProof.lean, then DecodeApiProof.lean),
# with only the model namespace renamed, are checked against it in one file.
#   M1 "shift":    `u64::from(p2) << 28` -> `<< 29` in decode_chunk_8_pairs (the existing control).
#                  Decoded bytes differ, so every equivalence statement is false. Required: neither
#                  new theorem is established (each depends on sorryAx / fails).
#   M2 "estimate": `decoded_len_estimate` returns `conservative_decoded_len + 1`. `decode_slice` does
#                  not use this method, so the base lemmas and decode_slice_equiv must still be proved
#                  without sorry, while decode_vec_equiv (whose statement is now false: on an
#                  `InvalidByte` error the returned buffer is one byte longer) must be rejected.
set -euo pipefail
source "$(dirname "$0")/../scripts/env.sh"
H=$HELDOUT
F=$H/final-verification
mkdir -p "$F/logs"
mk_mutant() {  # name sed-expr check-string
  local neg=$H/repos/base64-decode-pairs-$1
  rm -rf "$neg"; cp -a "$H/repos/base64-decode-pairs" "$neg"; rm -rf "$neg/target"
  local f=$neg/src/engine/general_purpose/decode.rs
  python3 - "$f" "$2" "$3" <<'PY'
import sys
from pathlib import Path
p, old, new = Path(sys.argv[1]), sys.argv[2], sys.argv[3]
s = p.read_text()
assert s.count(old) == 1, (old, s.count(old))
p.write_text(s.replace(old, new))
print('mutated:', repr(old), '->', repr(new))
PY
}
run_check() {  # model
  local model=$1
  bash "$F/extract-api.sh" "base64-decode-pairs-${2}" "$model"
  (cd "$H/proof" && taskset -c 64-79 lake build "$model") > "$F/logs/negative-$model-build.log" 2>&1
  local out=$F/lean/${model}Check.lean
  { sed "s/^import DecodeModel\.DecodeModel$/import $model.$model/; s/^open DecodeModel$/open $model/; s/DecodeProof/DecodeApiBase/g" \
      "$H/proof/DecodeProof.lean"
    echo
    sed '/^import DecodeApiBase$/d' "$F/lean/DecodeApiProof.lean" | sed "s/DecodeApiModel/$model/g"
  } > "$out"
  (cd "$H/proof" && taskset -c 64-79 lake env lean "$out") > "$F/logs/negative-$model-proof.log" 2>&1 || true
  if grep -q 'unknown module\|unknown namespace\|unknown package' "$F/logs/negative-$model-proof.log"; then
    echo "FAIL: setup error ($model)"; exit 1; fi
}
audit() {  # log ; prints "theorem<TAB>sorry|clean"
  python3 - "$1" <<'PY'
import re, sys
from pathlib import Path
log = Path(sys.argv[1]).read_text()
for m in re.finditer(r"'(?:DecodeApiBase|DecodeApiProof)\.(\w+)' depends on axioms: \[(.*?)\]", log, re.S):
    print(m.group(1), 'sorry' if 'sorryAx' in m.group(2) else 'clean', sep='\t')
PY
}

# M1
mk_mutant negative-api '| u64::from(p2) << 28' '| u64::from(p2) << 29'
run_check DecodeApiModelNeg negative-api
audit "$F/logs/negative-DecodeApiModelNeg-proof.log" | tee "$F/logs/negative-DecodeApiModelNeg-audit.txt"
grep -q 'error' "$F/logs/negative-DecodeApiModelNeg-proof.log"
for t in decode_equiv decode_vec_equiv decode_default_equiv decode_vec_default_equiv decode_slice_equiv; do
  grep -qP "^$t\tsorry$" "$F/logs/negative-DecodeApiModelNeg-audit.txt" || { echo "FAIL: M1 $t accepted"; exit 1; }
done
echo "PASS: M1 (shift mutation) rejected by decode_equiv, decode_vec_equiv, decode_default_equiv, decode_vec_default_equiv and decode_slice_equiv"

# M2
mk_mutant negative-est $'    fn decoded_len_estimate(&self) -> usize {\n        self.conservative_decoded_len\n' \
                        $'    fn decoded_len_estimate(&self) -> usize {\n        self.conservative_decoded_len + 1\n'
run_check DecodeApiModelNeg2 negative-est
audit "$F/logs/negative-DecodeApiModelNeg2-proof.log" | tee "$F/logs/negative-DecodeApiModelNeg2-audit.txt"
for t in pairs_spec chunk8_pairs_eq chunk4_pairs_eq decode_complete_quads_equiv internal_decode_equiv decode_slice_equiv; do
  grep -qP "^$t\tclean$" "$F/logs/negative-DecodeApiModelNeg2-audit.txt" || { echo "FAIL: M2 $t not proved"; exit 1; }
done
for t in decode_vec_equiv decode_vec_default_equiv; do
  grep -qP "^$t\tsorry$" "$F/logs/negative-DecodeApiModelNeg2-audit.txt" || { echo "FAIL: M2 $t accepted"; exit 1; }
done
echo "PASS: M2 (estimate mutation) leaves decode_slice_equiv proved and is rejected by decode_vec_equiv and decode_vec_default_equiv"
