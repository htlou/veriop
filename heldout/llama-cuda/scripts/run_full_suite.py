"""Full `test-backend-ops test -b CUDA0` (all ops, CUDA vs CPU) for candidate then baseline, with GPU state."""
import json, os
from pathlib import Path
from record import run
from gpu import pick, state

ROOT = Path(__file__).resolve().parents[1]
res = {}
for side in ('candidate', 'baseline'):
    gpu, before = pick()
    os.environ['CUDA_VISIBLE_DEVICES'] = str(gpu)
    prefix = ROOT / f'tests/{side}-full-suite'
    rc = run(prefix, [ROOT / side / 'build-cuda/bin/test-backend-ops', 'test', '-b', 'CUDA0'])
    log = prefix.with_suffix('.log').read_text().splitlines()
    res[side] = dict(returncode=rc, gpu=gpu, gpu_before=before, gpu_after=state(gpu),
                     summary=[l.strip() for l in log if 'tests passed' in l or 'backends passed' in l],
                     fail_lines=[l for l in log if 'FAIL' in l])
(ROOT / 'tests/full-suite-summary.json').write_text(json.dumps(res, indent=2) + '\n')
print(json.dumps({k: (v['returncode'], v['summary'], len(v['fail_lines'])) for k, v in res.items()}))
