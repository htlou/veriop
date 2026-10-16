#!/usr/bin/env bash
# Cross-check: extract the *actual* baseline crate (pinned 5b98ee18, plus only an appended probe)
# and compare its generated Lean definitions of the decode path with the `decode_ref` copies in
# the combined model (after renaming the module path). Same Charon/Aeneas options as extract.sh.
set -euo pipefail
source "$(dirname "$0")/env.sh"
H=$HELDOUT
dest=$H/extract/baseline-probe
rm -rf "$dest"; mkdir -p "$dest"
cp -r "$H/repos/base64-ref/Cargo.toml" "$H/repos/base64-ref/Cargo.lock" "$H/repos/base64-ref/src" \
  "$H/repos/base64-ref/benches" "$H/repos/base64-ref/tests" "$H/repos/base64-ref/examples" "$dest/"
cat >> "$dest/src/lib.rs" <<'RS'

/// Extraction entry point: the public API of the unmodified baseline.
pub fn __veriop_decode_slice_baseline(
    codec: &engine::general_purpose::GeneralPurpose,
    input: &[u8],
    output: &mut [u8],
) -> Result<usize, DecodeSliceError> {
    Engine::decode_slice(codec, input, output)
}
RS
(cd "$dest" && CARGO_PROFILE_DEV_DEBUG_ASSERTIONS=false charon cargo --preset=aeneas \
  --monomorphize-mut=except-types --remove-adt-clauses '--lift-associated-types=*' \
  --opaque base64::engine::Engine --include 'base64::engine::Engine::decode_slice' \
  --opaque 'base64::engine::general_purpose::encode_helper' \
  --opaque 'base64::engine::general_purpose::decode_suffix::decode_suffix' \
  --start-from 'base64::__veriop_decode_slice_baseline' \
  --dest-file "$H/extract/BaselineCheck.llbc" -- --lib --no-default-features --features std) \
  > "$H/logs/faithful-charon.log" 2>&1
mkdir -p "$H/extract/BaselineCheck"
"$AENEAS_DEV" -backend lean -loops-no-rec -no-progress-bar -namespace DecodeModel \
  -dest "$H/extract/BaselineCheck" "$H/extract/BaselineCheck.llbc" > "$H/logs/faithful-aeneas.log" 2>&1
if grep -n 'Generated the partial file\|Error' "$H/logs/faithful-aeneas.log"; then exit 1; fi
python3 - "$H" <<'PY'
import re, sys
from pathlib import Path
H = Path(sys.argv[1])
base = (H / 'extract/BaselineCheck/BaselineCheck.lean').read_text()
comb = (H / 'proof/DecodeModel/DecodeModel.lean').read_text()
def defs(text):
    out = {}
    for m in re.finditer(r'\n(?:/--.*?-/\n)?(?:@\[[^\n]*\]\n)?def\s*\n?\s*(\S+)(.*?)(?=\n\n)', text, re.S):
        out[m.group(1)] = m.group(2)
    return out
B, C = defs(base), defs(comb)
GP = 'engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate'
RG = 'engine.general_purpose.ref_engine.RefGeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate'
GPC = 'engine.general_purpose.EngineGeneralPurposeGeneralPurposeConfigGeneralPurposeEstimate'
RGC = 'engine.general_purpose.ref_engine.EngineRefGeneralPurposeGeneralPurposeConfigGeneralPurposeEstimate'
def norm(s):
    s = s.replace('engine.general_purpose.decode_ref.', 'engine.general_purpose.decode.')
    s = s.replace(RG, GP).replace(RGC, GPC)
    s = s.replace('engine.general_purpose.ref_engine.RefGeneralPurpose', 'engine.general_purpose.GeneralPurpose')
    return ' '.join(s.split())
checked = []
for name, body in sorted(B.items()):
    if not (name.startswith('engine.general_purpose.decode.') or name.startswith(GP + '.internal_decode')
            or name.startswith(GPC + '.internal_decode')):
        continue
    cname = name.replace('engine.general_purpose.decode.', 'engine.general_purpose.decode_ref.').replace(GP, RG).replace(GPC, RGC)
    assert cname in C, f'missing in combined model: {cname}'
    assert norm(body) == norm(C[cname]), f'definition differs: {name}'
    checked.append(name)
assert any('decode_complete_quads_loop0.body' in n for n in checked)
# Every other item of the baseline model (shared wrappers, types, opaque declarations) must occur
# with the same name and text in the combined model.
def items(text):
    out = {}
    for m in re.finditer(r'\n(def|structure|inductive|axiom)\s*\n?\s*(\S+)(.*?)(?=\n\n)', text, re.S):
        out[(m.group(1), m.group(2))] = m.group(3)
    return out
BI, CI = items(base), items(comb)
shared = 0
for key, body in sorted(BI.items()):
    if key[1] in checked or key[1] in ('__veriop_decode_slice_baseline',):
        continue
    assert key in CI, f'missing in combined model: {key}'
    assert ' '.join(body.split()) == ' '.join(CI[key].split()), f'item differs: {key}'
    shared += 1
print(f'PASS: {shared} further baseline items (types, wrappers, opaque declarations) identical in the combined model')
print(f'PASS: {len(checked)} baseline definitions identical to the decode_ref copies:')
for n in checked: print('  ', n)
PY
