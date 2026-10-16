"""Correctness: test-backend-ops `test -o CONV_2D_DW` (official eval cases, CUDA vs CPU reference) and the extra
case file, for baseline and candidate. GPU state recorded before/after each run."""
import json, os, sys
from pathlib import Path
from record import run
from gpu import pick, state

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / 'tests'
res = {}
for side in ('baseline', 'candidate'):
    exe = ROOT / side / 'build-cuda/bin/test-backend-ops'
    for name, extra in (('official', ['-o', 'CONV_2D_DW']),
                        ('extra', ['--test-file', str(ROOT / 'tests/conv2d-dw-extra-cases.txt')])):
        gpu, before = pick()
        os.environ['CUDA_VISIBLE_DEVICES'] = str(gpu)
        prefix = OUT / f'{side}-{name}'
        rc = run(prefix, [exe, 'test', '-b', 'CUDA0', *extra])
        after = state(gpu)
        log = prefix.with_suffix('.log').read_text()
        n_ok = log.count('\x1b[1;32mOK\x1b[0m') - log.count('backends passed')  # per-case OK lines
        res[f'{side}-{name}'] = dict(returncode=rc, gpu=gpu, gpu_before=before, gpu_after=after,
                                     summary=[l.strip() for l in log.splitlines() if 'tests passed' in l or 'backends passed' in l],
                                     fail_lines=[l for l in log.splitlines() if 'FAIL' in l])
        print(side, name, rc, res[f'{side}-{name}']['summary'], flush=True)
(OUT / 'summary.json').write_text(json.dumps(res, indent=2) + '\n')
sys.exit(0 if all(r['returncode'] == 0 and not r['fail_lines'] for r in res.values()) else 1)
