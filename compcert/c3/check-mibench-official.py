#!/usr/bin/env python3
"""Run unchanged upstream MiBench scripts; check held-out outputs, no suite score."""
import hashlib
import json
import os
from pathlib import Path
import re
import subprocess

root = Path(__file__).resolve().parents[1]
out = root / 'results/c3-mibench-official'
out.mkdir()
projects = ['automotive/basicmath','automotive/bitcount','automotive/qsort',
            'consumer/jpeg','consumer/lame','consumer/typeset','security/sha',
            'telecomm/FFT','telecomm/gsm']
records = []
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()
for project in projects:
    dataset = 'small' if project in ('automotive/basicmath','automotive/qsort') else 'large'
    expected = None
    for variant in ('baseline','c3-pgo'):
        work = root / 'build' / f'mibench-{variant}-evaluation-fixed-clock' / project
        script = work / ('runme_' + dataset + '.sh')
        assert sha(script) == sha(root / 'benchmarks/mibench' / project / script.name)
        d = out / project.replace('/', '-') / variant
        d.mkdir(parents=True)
        cmd = ['sh', script.name]
        env = os.environ | {'PATH':str(work) + os.pathsep + os.environ['PATH'],
                            'LC_ALL':'C', 'TZ':'UTC'}
        with (d / 'stdout').open('wb') as stdout, (d / 'stderr').open('wb') as stderr:
            subprocess.run(cmd, cwd=work, env=env, stdout=stdout, stderr=stderr,
                           check=True, timeout=120)
        outputs = {}
        for p in sorted(work.glob('output_' + dataset + '*')):
            data = p.read_bytes()
            (d / p.name).write_bytes(data)
            if project == 'automotive/bitcount':
                # Upstream timing/ranking fields remain in the raw output.
                bits = re.findall(rb'^(.+)> Time:.*?Bits: (\d+)$', data, re.M)
                assert len(bits) == 7
                data = json.dumps([(x.decode().strip(), int(y)) for x,y in bits]).encode()
            if project == 'consumer/typeset':
                data = re.sub(rb'^%%CreationDate:.*$', b'%%CreationDate: <wall clock>', data, flags=re.M)
            outputs[p.name] = hashlib.sha256(data).hexdigest()
        assert outputs, project
        if expected is None:
            expected = outputs
        assert outputs == expected, project
        if project == 'telecomm/gsm':
            assert sha(d / 'output_large.encode.gsm') == sha(work / 'data/correct_large.au.gsm')
            assert sha(d / 'output_large.decode.run') == sha(work / 'data/correct_large.au.run')
        records.append({'project':project,'variant':variant,'dataset':dataset,
            'command':cmd,'cwd':str(work),'script_sha256':sha(script),'output_sha256':outputs,
            'matches_baseline':True, 'held_out_input':dataset == 'large'})
    print(project, dataset, 'upstream script/output PASS', flush=True)
(out / 'summary.json').write_text(json.dumps({'runs':records,
    'score':'No official MiBench aggregate exists in this distribution; none calculated.',
    'coverage':'Seven large-input project scripts (eight executables); basicmath/qsort small scripts because only the small executables were in frozen support. bf invalid driver excluded; bftest remains a separate required KAT.'}, indent=2) + '\n')
