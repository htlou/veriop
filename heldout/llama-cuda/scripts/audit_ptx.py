"""Check that the PTX given to Volta equals the PTX embedded in the benchmarked libggml-cuda.so (and its .o).

The build uses code=[compute_80,sm_80]; on H100 (sm_90) the sm_80 SASS cannot run, so the driver JITs the
embedded compute_80 PTX. Compares every conv2d_dw entry body after stripping comments/blank lines.
"""
import hashlib, json, re, subprocess, sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]


def entries(text):
    out = {}
    for m in re.finditer(r'\.visible \.entry (\w*conv2d_dw\w*)\((.*?)\n}\n', text, re.S):
        body = '\n'.join(' '.join(l.split('//')[0].split()) for l in m.group(0).splitlines())
        out[m.group(1)] = '\n'.join(l for l in body.splitlines() if l)
    return out


def embedded(binary):
    txt = subprocess.run(['cuobjdump', '-ptx', str(binary)], capture_output=True, text=True, check=True).stdout
    return entries(txt)


result = {}
for side in ('baseline', 'candidate'):
    proof = entries((ROOT / f'ptx/conv2d-dw-{side}.ptx').read_text())
    so = ROOT / side / 'build-cuda/bin/libggml-cuda.so.0.26.0'
    obj = ROOT / side / 'build-cuda/ggml/src/ggml-cuda/CMakeFiles/ggml-cuda.dir/conv2d-dw.cu.o'
    r = dict(proof_kernels=sorted(proof), so_sha256=hashlib.sha256(so.read_bytes()).hexdigest())
    for label, b in (('object', obj), ('shared_library', so)):
        emb = embedded(b)
        r[f'{label}_kernels_found'] = len(emb)
        r[f'{label}_all_match'] = bool(emb) and set(emb) == set(proof) and all(emb[k] == proof[k] for k in proof)
    result[side] = r
    print(side, {k: v for k, v in r.items() if k != 'proof_kernels'})
(ROOT / 'ptx/embedded-ptx-audit.json').write_text(json.dumps(result, indent=2) + '\n')
sys.exit(0 if all(r['object_all_match'] and r['shared_library_all_match'] for r in result.values()) else 1)
