#!/usr/bin/env bash
# Build the combined extraction crate (candidate sources + verbatim baseline decode.rs) and
# extract it with the patched Charon/Aeneas into proof/DecodeModel/.
# Usage: extract.sh [candidate-repo-name] [model-name]   (defaults: base64-decode-pairs DecodeModel)
set -euo pipefail
source "$(dirname "$0")/env.sh"
cand=${1:-base64-decode-pairs}
model=${2:-DecodeModel}
H=$HELDOUT
dest=$H/extract/combined-$model
rm -rf "$dest"; mkdir -p "$dest"
cp -r "$H/repos/$cand/Cargo.toml" "$H/repos/$cand/Cargo.lock" "$H/repos/$cand/src" "$H/repos/$cand/benches" "$H/repos/$cand/tests" "$H/repos/$cand/examples" "$dest/"
python3 - "$H" "$cand" "$dest" <<'PY'
import sys, re, hashlib
from pathlib import Path
H, cand, dest = Path(sys.argv[1]), sys.argv[2], Path(sys.argv[3])
ref = H / 'repos/base64-ref'
gp = dest / 'src/engine/general_purpose'
# 1. verbatim baseline decode.rs
(gp / 'decode_ref.rs').write_bytes((ref / 'src/engine/general_purpose/decode.rs').read_bytes())
# 2. ref engine with the baseline impl body (verbatim)
base_mod = (ref / 'src/engine/general_purpose/mod.rs').read_text()
m = re.search(r'\nimpl super::Engine for GeneralPurpose \{\n(.*?)\n\}\n', base_mod, re.S)
body = m.group(1)
assert 'decode::decode_helper(' in body
harness = (H / 'harness/ref_engine.rs').read_text().replace('//@@BASELINE_IMPL_BODY@@', body)
(gp / 'ref_engine.rs').write_text(harness)
# 3. module declarations
mod = (gp / 'mod.rs').read_text()
old = 'pub(crate) mod decode_suffix;\n'
assert mod.count(old) == 1
mod = mod.replace(old, old + '#[allow(dead_code, unused_imports)]\npub(crate) mod decode_ref;\n#[allow(missing_docs)]\npub mod ref_engine;\n')
(gp / 'mod.rs').write_text(mod)
# 4. extraction entry points
lib = dest / 'src/lib.rs'
lib.write_text(lib.read_text() + '''
/// Extraction entry point: the public API on the baseline decode path.
pub fn __veriop_decode_slice_ref(
    codec: &engine::general_purpose::ref_engine::RefGeneralPurpose,
    input: &[u8],
    output: &mut [u8],
) -> Result<usize, DecodeSliceError> {
    Engine::decode_slice(codec, input, output)
}

/// Extraction entry point: the public API on the candidate decode path.
pub fn __veriop_decode_slice_opt(
    codec: &engine::general_purpose::GeneralPurpose,
    input: &[u8],
    output: &mut [u8],
) -> Result<usize, DecodeSliceError> {
    Engine::decode_slice(codec, input, output)
}
''')
# provenance
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
assert sha(gp / 'decode_ref.rs') == sha(ref / 'src/engine/general_purpose/decode.rs')
print('decode_ref.rs sha256', sha(gp / 'decode_ref.rs'))
PY
mkdir -p "$H/proof/$model" "$H/logs"
(cd "$dest" && CARGO_PROFILE_DEV_DEBUG_ASSERTIONS=false charon cargo --preset=aeneas \
  --monomorphize-mut=except-types --remove-adt-clauses '--lift-associated-types=*' \
  --opaque base64::engine::Engine --include 'base64::engine::Engine::decode_slice' \
  --opaque 'base64::engine::general_purpose::encode_helper' \
  --opaque 'base64::engine::general_purpose::decode_suffix::decode_suffix' \
  --start-from 'base64::__veriop_decode_slice_ref' --start-from 'base64::__veriop_decode_slice_opt' \
  --dest-file "$H/extract/$model.llbc" -- --lib --no-default-features --features std) \
  > "$H/logs/extract-$model-charon.log" 2>&1
"$AENEAS_DEV" -backend lean -loops-no-rec -no-progress-bar -namespace "$model" \
  -dest "$H/proof/$model" "$H/extract/$model.llbc" > "$H/logs/extract-$model-aeneas.log" 2>&1
if grep -n 'Generated the partial file\|Error' "$H/logs/extract-$model-aeneas.log"; then exit 1; fi
(cd "$H/proof" && lake env lean "$model/$model.lean") > "$H/logs/extract-$model-lean.log" 2>&1 || { grep -m20 error "$H/logs/extract-$model-lean.log"; exit 1; }
grep -n '^axiom' "$H/proof/$model/$model.lean"
echo "PASS: combined model extracted and type-checked"
