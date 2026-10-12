#!/usr/bin/env python3
"""Build C3 with recorded upstream commands; compare upstream scores verbatim."""
import hashlib
import json
import os
from pathlib import Path
import subprocess
import sys

root = Path(__file__).resolve().parents[1]
official = root / 'results/official-embench'
out = root / 'results/c3-official-embench'
upstream = root / 'benchmarks/embench'
sha = lambda p: hashlib.sha256(p.read_bytes()).hexdigest()


def run(cmd, log):
    log.parent.mkdir(parents=True, exist_ok=True)
    with log.with_suffix('.command.json').open('x') as f:
        json.dump(cmd, f, indent=2)
    with log.open('x') as f:
        subprocess.run(cmd, cwd=upstream, stdout=f, stderr=subprocess.STDOUT, check=True)


def main(stage):
    os.sched_setaffinity(0, {40})
    os.environ.update(SOURCE_DATE_EPOCH='0', LC_ALL='C',
        PYTHONPATH=str(root / 'env/embench-python'),
        VERIOP_LAYOUT_PROFILE=str(root / 'results/c3-profiling/embench.profile'))
    names = sorted(p.name for p in (upstream / 'src').iterdir() if p.is_dir())
    assert len(names) == 19
    for name, digest in json.loads((root / 'results/frozen/c3-pgo.json').read_text()).items():
        assert sha(root / name) == digest, name
    previous = json.loads((official / 'freeze.json').read_text())
    for name, digest in previous['tracked_source_sha256'].items():
        assert sha(upstream / name) == digest
    compiler = root / 'repos/c3-pgo/ccomp'
    for name in ('LayoutSearch.ml', 'PgoLayout.ml'):
        source = root / ('c1' if name == 'LayoutSearch.ml' else 'c3') / name
        assert sha(compiler.parent / 'backend' / name) == sha(source)
    if stage == 'build':
        out.mkdir()
        binaries = {}
        for mode in ('speed', 'size'):
            os.environ['VERIOP_LAYOUT_LOG'] = str(out / f'profile-use-{mode}.txt')
            cmd = json.loads((official / f'build-baseline-{mode}.command.json').read_text())
            cmd = [a.replace(str(root / 'repos/baseline'), str(compiler.parent))
                    .replace(str(official / 'baseline'), str(out)) for a in cmd]
            run(cmd, out / f'build-{mode}.log')
            for name in names:
                p = out / mode / 'src' / name / name
                binaries[str(p.relative_to(out))] = sha(p)
            print('C3 built', mode, flush=True)
        record = {'compiler_sha256': sha(compiler), 'binary_sha256': binaries,
                  'profile_sha256': sha(Path(os.environ['VERIOP_LAYOUT_PROFILE'])),
                  'driver_sha256': sha(Path(__file__)),
                  'run_order': ['baseline', 'c3-pgo', 'c3-pgo', 'baseline'],
                  'reference_sha256': sha(official / 'reference/speed.json')}
        (out / 'freeze.json').write_text(json.dumps(record, indent=2) + '\n')
    elif stage == 'run':
        record = json.loads((out / 'freeze.json').read_text())
        assert sha(compiler) == record['compiler_sha256']
        assert sha(Path(__file__)) == record['driver_sha256']
        assert sha(official / 'reference/speed.json') == record['reference_sha256']
        for name, digest in record['binary_sha256'].items():
            assert sha(out / name) == digest
        for name in names:
            run([str(out / 'speed/src' / name / name)], out / 'functional' / (name + '.log'))
        print('C3 official workload: 19/19 functional PASS', flush=True)
        for mode in ('speed', 'size'):
            order = record['run_order'] if mode == 'speed' else ['baseline', 'c3-pgo']
            for i, variant in enumerate(order):
                build = out / mode if variant == 'c3-pgo' else official / 'baseline' / mode
                extra = ['--target-module=run_native', '--timeout=120'] if mode == 'speed' else []
                cmd = [sys.executable, str(upstream / f'benchmark_{mode}.py'),
                       '--builddir=' + str(build), '--relative', *extra,
                       '--baselinedir=' + str(official / 'reference'),
                       '--logdir=' + str(out / 'logs' / f'{mode}-{i}-{variant}')]
                log = out / f'{mode}-{i}-{variant}.log'
                run(cmd, log)
                assert 'All benchmarks' in log.read_text()
                print(log.name, log.read_text().split('Geometric mean')[-1][:95], flush=True)
        (out / 'complete.json').write_text(json.dumps({'functional_checks': 19,
            'speed_runs': 4, 'scoring': 'Unmodified upstream scripts and run_native'}, indent=2) + '\n')
    else:
        raise SystemExit('Usage: evaluate-official.py build|run')


if __name__ == '__main__':
    main(sys.argv[1] if len(sys.argv) == 2 else '')
