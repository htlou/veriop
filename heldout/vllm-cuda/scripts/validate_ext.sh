#!/usr/bin/env bash
# Re-run every extension check with the current volta-ext binary.
set -euo pipefail
H=$(cd "$(dirname "$0")/.." && pwd); cd "$H/scripts"
export VOLTA=$H/volta-ext/target/release/volta
../venv/bin/python verify_relu16.py | tail -1
rm -rf ../volta/relu16-ext-negative && ../venv/bin/python negative_controls_ext.py | grep -v ': exit'
VOLTA_OUT=volta/ext-validation/rope-under-ext ../venv/bin/python verify_rope.py | tail -1
rm -rf ../volta/ext-validation/rope-negative-under-ext
VOLTA_NEG_OUT=volta/ext-validation/rope-negative-under-ext ../venv/bin/python negative_controls.py | grep -v ': exit'
../venv/bin/python - <<'PY'
import json
a=json.load(open('../volta/rope/summary.json')); b=json.load(open('../volta/ext-validation/rope-under-ext/summary.json'))
k=lambda d:[(i['name'],i['equivalent'],i['safety_ok']) for i in d['instances']]
print('rope verdicts identical under ext:', k(a)==k(b))
PY
VOLTA=$VOLTA ../venv/bin/python probe_lowering.py ../volta/ext-validation/lowering-baseline-under-ext.json ../ptx/baseline/{activation,cache,layernorm,pos_encoding,vocab_parallel_embedding}_kernels.ptx ../ptx/baseline/scaled_quant.ptx > ../volta/ext-validation/lowering-under-ext.txt
../venv/bin/python - <<'PY'
import json
a=json.load(open('../volta/probe/lowering-baseline.json')); b=json.load(open('../volta/ext-validation/lowering-baseline-under-ext.json'))
lost=[k for k in a if a[k]['lowered'] and not b[k]['lowered']]; gained=[k for k in a if not a[k]['lowered'] and b[k]['lowered']]
print('lowering: accepted-upstream-but-rejected-by-ext', len(lost), '| newly accepted', len(gained))
json.dump(dict(lost=lost, gained=[b[k]['demangled'][:160] for k in gained]), open('../volta/ext-validation/lowering-diff.json','w'), indent=1)
PY
cd "$H/volta/ext-validation" && rm -rf corpus-ext && mkdir corpus-ext && cd corpus-ext && nice "$H/volta-ext/target/release/volta-bench" --kernels-dir /srv/home/hantaolou/code/veriop/cuda/repos/volta/crates/volta_bench/kernels --iterations 1 --sample 1 --out-dir . all > all.out 2>&1
cd .. && python3 - <<'PY'
import re
def v(p):
    out={}
    for l in open(p):
        m=re.match(r'^(\S.*?)\s{2,}(OK|RACE|\w+)\s+[\d.]+',l)
        if m: out[m.group(1).strip()]=m.group(2)
    return out
a=v('corpus-orig/all.out'); b=v('corpus-ext/all.out')
s=f'paper corpus: orig {len(a)} ext {len(b)} identical verdicts={a==b}'
print(s); open('corpus-verdict-diff.txt','w').write(s+'\n'+'\n'.join(f'{k}: {a[k]} | {b.get(k)}' for k in a)+'\n')
PY
sha256sum "$VOLTA" "$H/volta-ext.patch" > "$H/volta/ext-validation/binary-and-patch.sha256"
