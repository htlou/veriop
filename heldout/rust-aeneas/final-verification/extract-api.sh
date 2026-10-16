#!/usr/bin/env bash
# Extended extraction for the final verification: the same combined crate as scripts/extract.sh
# (candidate sources + byte-identical baseline decode.rs as `decode_ref` + `RefGeneralPurpose`),
# with additional entry points for the public `Engine::decode` and `Engine::decode_vec`, and the
# same Charon/Aeneas options except that `Engine::decode` and `Engine::decode_vec` are also
# `--include`d (their default bodies are translated, not opaque).
# Usage: extract-api.sh [candidate-repo-name] [model-name]   (defaults: base64-decode-pairs DecodeApiModel)
set -euo pipefail
source "$(dirname "$0")/../scripts/env.sh"
cand=${1:-base64-decode-pairs}
model=${2:-DecodeApiModel}
H=$HELDOUT
F=$H/final-verification
dest=$H/extract/combined-$model
rm -rf "$dest"; mkdir -p "$dest" "$F/logs"
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
# 4. extraction entry points: the original two (decode_slice) plus decode and decode_vec
lib = dest / 'src/lib.rs'
entry = '''
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
'''
for side, ty in [('ref', 'engine::general_purpose::ref_engine::RefGeneralPurpose'),
                 ('opt', 'engine::general_purpose::GeneralPurpose')]:
    entry += f'''
/// Extraction entry point: public `Engine::decode` ({side}).
pub fn __veriop_decode_{side}(
    codec: &{ty},
    input: &[u8],
) -> Result<alloc::vec::Vec<u8>, DecodeError> {{
    Engine::decode(codec, input)
}}

/// Extraction entry point: public `Engine::decode_vec` ({side}).
pub fn __veriop_decode_vec_{side}(
    codec: &{ty},
    input: &[u8],
    buffer: &mut alloc::vec::Vec<u8>,
) -> Result<(), DecodeError> {{
    Engine::decode_vec(codec, input, buffer)
}}
'''
lib.write_text(lib.read_text() + entry)
# 5. Name-clash workaround (extraction crate only, no semantic effect): the trait method
#    `Engine::decode` would become a Lean structure field `decode` of `engine.Engine`, which shadows
#    the crate module namespace `decode` (`decode.DecodeError`) in the types of the later fields.
#    The inert Charon tool attribute renames only the extracted name of that method.
em = dest / 'src/engine/mod.rs'
src = em.read_text()
sig = '    fn decode<T: AsRef<[u8]>>(&self, input: T) -> Result<Vec<u8>, DecodeError> {\n'
assert src.count(sig) == 1
em.write_text(src.replace(sig, '    #[charon::rename("decode_to_vec")]\n' + sig))
lib.write_text('#![feature(register_tool)]\n#![register_tool(charon)]\n' + lib.read_text())
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
assert sha(gp / 'decode_ref.rs') == sha(ref / 'src/engine/general_purpose/decode.rs')
print('decode_ref.rs sha256', sha(gp / 'decode_ref.rs'))
PY
mkdir -p "$F/lean/$model"
(cd "$dest" && CARGO_PROFILE_DEV_DEBUG_ASSERTIONS=false taskset -c 64-79 charon cargo --preset=aeneas \
  --monomorphize-mut=except-types --remove-adt-clauses '--lift-associated-types=*' \
  --opaque base64::engine::Engine --include 'base64::engine::Engine::decode_slice' \
  --include 'base64::engine::Engine::decode' --include 'base64::engine::Engine::decode_vec' \
  --opaque 'base64::engine::general_purpose::encode_helper' \
  --opaque 'base64::engine::general_purpose::decode_suffix::decode_suffix' \
  --start-from 'base64::__veriop_decode_slice_ref' --start-from 'base64::__veriop_decode_slice_opt' \
  --start-from 'base64::__veriop_decode_ref' --start-from 'base64::__veriop_decode_opt' \
  --start-from 'base64::__veriop_decode_vec_ref' --start-from 'base64::__veriop_decode_vec_opt' \
  --dest-file "$H/extract/$model.llbc" -- --lib --no-default-features --features std) \
  > "$F/logs/extract-$model-charon.log" 2>&1
taskset -c 64-79 "$AENEAS_DEV" -backend lean -loops-no-rec -no-progress-bar -namespace "$model" \
  -dest "$F/lean/$model" "$H/extract/$model.llbc" > "$F/logs/extract-$model-aeneas.log" 2>&1
if grep -n 'Generated the partial file\|Error' "$F/logs/extract-$model-aeneas.log"; then exit 1; fi
(cd "$H/proof" && taskset -c 64-79 lake env lean "$F/lean/$model/$model.lean") > "$F/logs/extract-$model-lean.log" 2>&1 || { grep -m20 error "$F/logs/extract-$model-lean.log"; exit 1; }
grep -n '^axiom' "$F/lean/$model/$model.lean"
echo "PASS: extended combined model extracted and type-checked"
