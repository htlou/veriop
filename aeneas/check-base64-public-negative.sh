#!/usr/bin/env bash
set -euo pipefail
source "$(dirname "$0")/env.sh"
cd "$AENEAS_WORK"
case "${1:-}" in
  '') path_prefix=base64-public; model_prefix=Base64Public ;;
  unroll8) path_prefix=base64-unroll8-public; model_prefix=Base64Unroll8Public ;;
  *) echo 'Usage: check-base64-public-negative.sh [unroll8]' >&2; exit 2 ;;
esac
python3 - "$path_prefix" <<'PY'
from pathlib import Path
import shutil, sys
prefix = sys.argv[1]
source = Path(f'tool-tests/{prefix}-local-opt')
dest = Path(f'tool-tests/{prefix}-local-negative')
shutil.copytree(source, dest, dirs_exist_ok=True,
                ignore=shutil.ignore_patterns('.git', 'target'))
p = dest / 'src/encode.rs'
text = p.read_text()
old = 'output[i] = padding.as_u8();'
assert text.count(old) == 1
p.write_text(text.replace(old, 'output[i] = padding.as_u8() ^ 1;'))
PY
model="${model_prefix}Negative"
mkdir -p "results/$model"
(cd "tool-tests/$path_prefix-local-negative" && charon cargo --preset=aeneas \
  --monomorphize-mut=except-types --remove-adt-clauses '--remove-associated-types=*' \
  --include core::convert \
  --opaque base64::engine::Engine --include 'base64::engine::Engine::encode_slice' \
  --opaque base64::engine::general_purpose::decode \
  --opaque base64::engine::general_purpose::decode_suffix \
  --dest-file "$AENEAS_WORK/results/$model.llbc" \
  --start-from 'base64::__veriop_encode_slice_probe' \
  -- --lib --no-default-features --features std) > "logs/$path_prefix-negative-charon.log" 2>&1
repos/aeneas/src/_build/default/main.exe -backend lean -loops-no-rec -no-progress-bar \
  -namespace "$model" -dest "results/$model" "results/$model.llbc" \
  > "logs/$path_prefix-negative-aeneas.log" 2>&1
if rg -n 'Generated the partial file' "logs/$path_prefix-negative-aeneas.log"; then exit 1; fi
(cd proof && lake env lean --root "../results/$model" \
  -o ".lake/build/lib/lean/$model.olean" "../results/$model/$model.lean") \
  > "logs/$path_prefix-negative-model.log" 2>&1
python3 - "$model_prefix" <<'PY'
from pathlib import Path
import sys
prefix = sys.argv[1]
text = Path(f'proof/{prefix}Proof.lean').read_text()
text = text.replace(f'import {prefix}Opt.{prefix}Opt', f'import {prefix}Negative')
text = text.replace(f'{prefix}Opt', f'{prefix}Negative')
Path(f'results/{prefix}Negative/Check.lean').write_text(text)
PY
if (cd proof && lake env lean "../results/$model/Check.lean") \
  > "logs/$path_prefix-negative-rejection.log" 2>&1; then
  echo 'ERROR: the public API equivalence proof accepted incorrect padding'
  exit 1
fi
python3 - "$model" "$path_prefix" <<'PY'
from pathlib import Path
import sys
model, prefix = sys.argv[1:]
proof = Path(f'results/{model}/Check.lean').read_text()
line = proof[:proof.index('with_unfolding_all rfl', proof.index('theorem padding_body_equiv'))].count('\n') + 1
log = Path(f'logs/{prefix}-negative-rejection.log').read_text()
assert f'Check.lean:{line}:' in log, 'Expected rejection at the actual padding-body equality'
assert 'error: Tactic `rfl` failed' in log
assert not any(x in log for x in ['timeout', 'unknown module', 'unknown constant'])
PY
echo 'PASS: a valid Rust model with incorrect padding is rejected by the public API proof.'
