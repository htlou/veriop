#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/env.sh"
cd "$AENEAS_WORK"
case "${1:-}" in
  '') candidate=base64-pairs-tail; model_prefix=Base64Public; path_prefix=base64-public ;;
  unroll8) candidate=base64-pairs-unroll8-exact; model_prefix=Base64Unroll8Public; path_prefix=base64-unroll8-public ;;
  *) echo 'Usage: extract-base64-public.sh [unroll8]' >&2; exit 2 ;;
esac
python3 - "$candidate" "$path_prefix" <<'PY'
from pathlib import Path
import shutil, sys
candidate, path_prefix = sys.argv[1:]
probe = '''
/// Extraction entry point: calls the existing public API without changing it.
pub fn __veriop_encode_slice_probe(
    codec: &engine::general_purpose::GeneralPurpose,
    input: &[u8], output: &mut [u8],
) -> Result<usize, EncodeSliceError> {
    Engine::encode_slice(codec, input, output)
}
'''
for side, repo in [('ref', 'rust-base64'), ('opt', candidate)]:
    source = Path('repos') / repo
    dest = Path('tool-tests') / f'{path_prefix}-local-{side}'
    shutil.copytree(source, dest, dirs_exist_ok=True,
                    ignore=shutil.ignore_patterns('.git', 'target'))
    lib = dest / 'src/lib.rs'
    lib.write_bytes((source / 'src/lib.rs').read_bytes() + probe.encode())
PY
for side in Ref Opt; do
  model="$model_prefix$side"
  mkdir -p "proof/$model"
  (cd "tool-tests/$path_prefix-local-${side,,}" && charon cargo --preset=aeneas \
    --monomorphize-mut=except-types --remove-adt-clauses '--remove-associated-types=*' \
    --include core::convert \
    --opaque base64::engine::Engine --include 'base64::engine::Engine::encode_slice' \
    --opaque base64::engine::general_purpose::decode \
    --opaque base64::engine::general_purpose::decode_suffix \
    --dest-file "$AENEAS_WORK/results/$model.llbc" \
    --start-from 'base64::__veriop_encode_slice_probe' \
    -- --lib --no-default-features --features std) \
    > "logs/$path_prefix-$side-charon.log" 2>&1
  repos/aeneas/src/_build/default/main.exe -backend lean -loops-no-rec -no-progress-bar \
    -namespace "$model" -dest "proof/$model" "results/$model.llbc" \
    > "logs/$path_prefix-$side-aeneas.log" 2>&1
  if rg -n 'Generated the partial file' "logs/$path_prefix-$side-aeneas.log"; then exit 1; fi
  (cd proof && lake env lean "$model/$model.lean") \
    > "logs/$path_prefix-$side-check.log" 2>&1
done
echo 'PASS: both concrete public encode_slice models extracted and checked; equivalence proof is separate.'
