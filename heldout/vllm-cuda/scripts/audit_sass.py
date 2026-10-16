"""Check that the proof PTX corresponds to the benchmarked binaries: assemble
the proof PTX with ptxas (sm_90) and compare per-kernel SASS with the SASS in
the built extension .so used by the benchmark runs."""
import hashlib, json, re, subprocess, sys
from pathlib import Path
ROOT = Path(__file__).resolve().parent.parent

def sass(path, kernel):
    out = subprocess.run(['cuobjdump', '-sass', '-fun', kernel, str(path)], capture_output=True, text=True).stdout
    lines = [re.sub(r'/\*[0-9a-f]{4}\*/', '', l).strip() for l in out.splitlines() if re.search(r'/\*[0-9a-f]{4}\*/', l)]
    return lines

res = {}
for label, ptx, so, kernels in [
    ('baseline', 'ptx/baseline/pos_encoding_kernels.ptx', 'build/baseline/_C_stable_libtorch.abi3.so',
     ['_ZN4vllm23rotary_embedding_kernelIN3c108BFloat16ES2_Lb1EEEvPKlPT_S6_PKT0_illliiilb',
      '_ZN4vllm23rotary_embedding_kernelIN3c104HalfES2_Lb1EEEvPKlPT_S6_PKT0_illliiilb']),
    ('candidate', 'ptx/candidate/pos_encoding_kernels.ptx', sys.argv[1],
     ['_ZN4vllm33rotary_embedding_neox_vec4_kernelIN3c108BFloat16EEEvPKlPT_S6_PKS5_illliiilb',
      '_ZN4vllm33rotary_embedding_neox_vec4_kernelIN3c104HalfEEEvPKlPT_S6_PKS5_illliiilb'])]:
    cubin = ROOT / f'results/ptx-audit/{label}-pos_encoding.cubin'
    subprocess.run(['ptxas', '-arch=sm_90', '-O3', str(ROOT / ptx), '-o', str(cubin)], check=True)
    for k in kernels:
        a, b = sass(cubin, k), sass(ROOT / so, k)
        res[f'{label}:{k}'] = dict(ptx=ptx, ptx_sha256=hashlib.sha256((ROOT / ptx).read_bytes()).hexdigest(),
                                   so=so, so_sha256=hashlib.sha256((ROOT / so).read_bytes()).hexdigest(),
                                   sass_instructions=len(b), identical_sass=(a == b and len(a) > 0))
        print(label, k[:60], len(a), len(b), a == b)
(ROOT / 'results/ptx-audit/sass-correspondence.json').write_text(json.dumps(res, indent=2) + '\n')
assert all(r['identical_sass'] for r in res.values())
