#!/usr/bin/env bash
set -euo pipefail

source "$(dirname "$0")/env.sh"
python3 "$VERIOP_BENCH_ROOT/bootstrap.py" --check > /dev/null

repo="$VERIOP_BENCH_ROOT/repos/SymCrypt/SymCRust"
tool="$VERIOP_BENCH_ROOT/tools/symcrust-aeneas"
logs="$VERIOP_BENCH_ROOT/logs"
lake_path=$(cd "$repo/lean" && lake env printenv LEAN_PATH)

for kernel in sha3 ntt; do
  if [[ "$kernel" == sha3 ]]; then
    label=sha3-narrow
    starts=(--start-from 'crate::sha3::sha3_impl::keccak_permute_textbook'
            --start-from 'crate::sha3::keccak_opt::keccak_permute_opt')
  else
    label=ntt-multitarget
    starts=(--start-from 'crate::mlkem::ntt::poly_element_ntt'
            --start-from 'crate::mlkem::ntt::poly_element_intt_and_mul_r'
            --targets=x86_64-unknown-linux-gnu,i686-unknown-linux-gnu,aarch64-unknown-linux-gnu)
  fi
  out="$VERIOP_BENCH_ROOT/build/symcrust-$label"
  model="$out/lean/Symcrust/Code"
  mkdir -p "$model"

  (cd "$repo" && RUSTUP_TOOLCHAIN=nightly-2026-06-01 "$tool/charon/bin/charon" cargo \
    --preset=aeneas "${starts[@]}" --dest-file "$out.llbc" -- --features verify) \
    > "$logs/symcrust-$label-charon.log" 2>&1

  "$tool/bin/aeneas" "$out.llbc" -dest "$out/lean" -subdir Symcrust/Code \
    -split-files -backend lean -loops-to-rec -sequential \
    > "$logs/symcrust-$label-aeneas.log" 2>&1

  if rg -q '\b(sorry|admit|axiom)\b' "$model/Types.lean" "$model/Funs.lean"; then
    echo "Aeneas emitted an incomplete $kernel model" >&2
    exit 1
  fi

  units=(Types Funs)
  if [[ -f "$model/FunsExternal_Template.lean" ]]; then
    cp "$model/FunsExternal_Template.lean" "$model/FunsExternal.lean"
    units=(Types FunsExternal Funs)
  fi
  for unit in "${units[@]}"; do
    (cd "$out/lean" && LEAN_PATH="$out/lean:$lake_path" \
      elan run leanprover/lean4:v4.31.0 lean \
        -o "$model/$unit.olean" "$model/$unit.lean") \
      > "$logs/symcrust-$label-${unit,,}-lean.log" 2>&1
  done

  python3 - "$kernel" "$model" "$repo/lean/Symcrust/Code" "${units[@]}" <<'PY'
import re
import sys
from pathlib import Path

kernel, model, published, *units = sys.argv[1:]

def declarations(path):
    result = {}
    for chunk in Path(path).read_text().split('\n/--'):
        match = re.search(r'(?m)^(?:def|structure|inductive|opaque|instance|theorem|axiom)\s+([^\s(:]+)', chunk)
        if match:
            result[match.group(1)] = chunk.removesuffix('\nend symcrust\n').rstrip()
    return result

required = {
    'sha3': {'sha3.sha3_impl.keccak_permute_textbook', 'sha3.keccak_opt.keccak_permute_opt'},
    'ntt': {'mlkem.ntt.poly_element_ntt', 'mlkem.ntt.poly_element_intt_and_mul_r'},
}[kernel]
count = 0
for unit in units:
    generated = declarations(Path(model) / f'{unit}.lean')
    original = declarations(Path(published) / f'{unit}.lean')
    if unit == 'Funs':
        assert required <= generated.keys(), f'{kernel} targets missing from generated model'
    assert all(original.get(name) == body for name, body in generated.items()), \
        f'{kernel} generated {unit} declarations differ from the published proved model'
    count += len(generated)
assert count == {'sha3': 17, 'ntt': 122}[kernel], f'unexpected {kernel} declaration count: {count}'
print(f'{kernel}: Charon, Aeneas, Lean passed; {count} declarations match the published proved model.')
PY
done
