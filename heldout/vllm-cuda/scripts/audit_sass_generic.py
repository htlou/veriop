"""Generic SASS correspondence audit: ptxas(proof PTX) vs the benchmarked .so.
usage: audit_sass_generic.py OUT.json label:ptx:so:kernel[,kernel...] ..."""
import hashlib, json, re, subprocess, sys
from pathlib import Path
ROOT = Path(__file__).resolve().parent.parent
def sass(path, k):
    out = subprocess.run(['cuobjdump', '-sass', '-fun', k, str(path)], capture_output=True, text=True).stdout
    return [re.sub(r'/\*[0-9a-f]{4}\*/', '', l).strip() for l in out.splitlines() if re.search(r'/\*[0-9a-f]{4}\*/', l)]
res = {}
for spec in sys.argv[2:]:
    label, ptx, so, ks = spec.split(':')
    cubin = ROOT / f'results/ptx-audit/{label}.cubin'
    subprocess.run(['ptxas', '-arch=sm_90', '-O3', str(ROOT / ptx), '-o', str(cubin)], check=True)
    for k in ks.split(','):
        a, b = sass(cubin, k), sass(ROOT / so, k)
        res[f'{label}:{k}'] = dict(ptx=ptx, ptx_sha256=hashlib.sha256((ROOT/ptx).read_bytes()).hexdigest(), so=so,
                                   so_sha256=hashlib.sha256((ROOT/so).read_bytes()).hexdigest(), sass_instructions=len(b),
                                   identical_sass=(a == b and len(a) > 0))
        print(label, k[:70], len(a), len(b), a == b)
Path(sys.argv[1]).write_text(json.dumps(res, indent=2) + '\n')
assert all(r['identical_sass'] for r in res.values())
