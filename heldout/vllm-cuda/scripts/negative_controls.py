"""Mutation controls: Volta must reject deliberately broken candidate PTX.

The compiler emits separate inverse / non-inverse code paths, so a mutation is
only observable under the launch configuration that executes it; the
first-site sub->add mutation is checked under both inverse=0 (dead path,
expected EQUIVALENT) and inverse=1 (live path, expected rejection).
"""
import json, re
from pathlib import Path
from record import run
import verify_rope as vr

import os
OUT = vr.ROOT / os.environ.get('VOLTA_NEG_OUT', 'volta/rope-negative')
OUT.mkdir(parents=True, exist_ok=True)
src = vr.NEW.read_text()
K = vr.SYM['bf16'][1]
start = src.index('.entry ' + K); end = src.index('\n}\n', start)
body = src[start:end]


def mutate(name, old, new, count=1):
    assert old in body, old
    p = OUT / f'{name}.ptx'
    p.write_text(src[:start] + body.replace(old, new, count) + src[end:])
    return p


first_sub = re.search(r'sub\.f32\s+%f\d+, %f\d+, %f\d+;', body).group(0)
last_store = body[body.rindex('st.global.v4.u16'):].split('\n')[0]
mutants = {
    'sub-to-add-all-sites': mutate('sub-to-add-all-sites', 'sub.f32', 'add.f32', -1),
    'sub-to-add-first-site': mutate('sub-to-add-first-site', first_sub, first_sub.replace('sub.f32', 'add.f32')),
    'drop-last-store': mutate('drop-last-store', last_store, '// dropped store'),
}
base = [i for i in vr.INSTANCES if i['name'] == 'bench-bf16-h48'][0]
inv = vr.instance('bench-bf16-h48-inverse', 'bf16', 48, 48, 128, 32, inverse=1)
plan = [('sub-to-add-all-sites', base, True), ('sub-to-add-first-site', base, None),
        ('sub-to-add-first-site', inv, True), ('drop-last-store', base, True)]
res = {}
for name, inst, expect_reject in plan:
    key = f"{name}@{inst['name']}"
    cmd = [vr.VOLTA, '--no-log-file', 'compare', vr.OLD, mutants[name], '--kernel1', inst['baseline_kernel'],
           '--kernel2', inst['candidate_kernel'], '-b', str(inst['baseline_block']),
           '--block2', str(inst['candidate_block']), *vr.config_args(inst), '--sample', '0',
           '--no-profile', '--check-array', 'q', '--check-array', 'k']
    rc = run(OUT / key, cmd)
    log = (OUT / f'{key}.log').read_text()
    rejected = rc != 0 and not vr.accepted(log, inst['expected_elements'])
    verdict = [l for l in log.splitlines() if 'EQUIVALENT' in l or 'error' in l.lower()][-1:]
    res[key] = dict(returncode=rc, rejected=rejected, expected_reject=expect_reject, verdict=verdict)
    print(key, res[key])
(OUT / 'summary.json').write_text(json.dumps(res, indent=2) + '\n')
assert all(r['rejected'] for r in res.values() if r['expected_reject'])
