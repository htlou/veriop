#!/usr/bin/env bash
set -euo pipefail

bench_root="$(cd -- "$(dirname -- "${BASH_SOURCE[0]}")" && pwd)"
source "$bench_root/kontrol_env.sh"
repo="$bench_root/repos/kontrol"
proofs="$bench_root/kontrol"
logs="$bench_root/logs"
kdist="$repo/.venv/bin/kdist"
pin="$(awk -F '\t' '$2 == "kontrol" { print $5 }' "$bench_root/targets.tsv")"
[[ "$(git -C "$repo" rev-parse HEAD)" == "$pin" ]]

python3 - "$repo/src/kontrol/kdist/kontrol_lemmas.md" <<'PY'
from pathlib import Path
import sys
source = Path(sys.argv[1]).read_text()
rule = '''rule [shift-to-div]: X >>Int N => X /Int (2 ^Int N)
      requires 0 <=Int X andBool 0 <=Int N [simplification(60), concrete(N)]'''
assert rule in source, 'pinned shift-to-div rule changed'
PY

(cd "$repo" && "$kdist" build -j2 kontrol.aux) > "$logs/kontrol-aux-build.log" 2>&1
aux="$("$kdist" which kontrol.aux)"
kevm="$repo/.venv/lib/python3.10/site-packages/kevm_pyk/kproj"
includes=(-I "$repo/src/kontrol/kdist" -I "$kevm/evm-semantics" -I "$kevm/plugin")

kprove --definition "$aux" --spec-module KONTROL-SHIFT-TO-DIV-SPEC \
  "${includes[@]}" "$proofs/shift-to-div-spec.k" > "$logs/kontrol-shift-to-div-aux.log" 2>&1
rg -q '^#Top$' "$logs/kontrol-shift-to-div-aux.log"
printf 'Kontrol auxiliary shift-to-division proof: #Top.\n'
