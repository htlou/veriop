"""For every verified instance, re-run both `volta analyze` commands printing all output expressions and check
they are textually identical (same fma nesting/accumulation order, same operands). This is a stronger, purely
syntactic observation than Volta's real-valued EQUIVALENT verdict; it is NOT a proof of IEEE bit-identity
(Volta's printed terms abstract rounding/ftz details)."""
import hashlib, json, re, subprocess
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
summary = json.loads((ROOT / 'volta/summary.json').read_text())
rows = []
for c in summary['checks']:
    exprs = {}
    for side in ('reference', 'candidate'):
        cmd = json.loads((ROOT / f"volta/{c['name']}-{side}-safety.json").read_text())['command']
        cmd[cmd.index('--print-outputs') + 1] = '100000'
        out = subprocess.run(cmd, capture_output=True, text=True, check=True).stdout
        exprs[side] = [l.strip() for l in out.splitlines() if re.match(r'\s+out\[\d+\] = ', l)]
    same = exprs['reference'] == exprs['candidate'] and len(exprs['reference']) == c['checked']
    rows.append(dict(name=c['name'], n_exprs=len(exprs['reference']), textually_identical=same,
                     sha256=hashlib.sha256('\n'.join(exprs['candidate']).encode()).hexdigest()))
    print(c['name'], len(exprs['reference']), same, flush=True)
res = dict(all_identical=all(r['textually_identical'] for r in rows), rows=rows)
(ROOT / 'volta/expr-identity.json').write_text(json.dumps(res, indent=2) + '\n')
print('all_identical', res['all_identical'])
