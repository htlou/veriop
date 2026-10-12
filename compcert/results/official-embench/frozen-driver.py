#!/usr/bin/env python3
"""Run the pinned upstream harness; no timing or scoring implementation here."""
import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import sys

ROOT = Path(__file__).resolve().parents[1]
UPSTREAM = ROOT / 'benchmarks/embench'
OUT = ROOT / 'results/official-embench'
VARIANTS = ('baseline', 'c1-global')
CPU_MHZ = 10000
CPU = 40


def sha(path):
    return hashlib.sha256(path.read_bytes()).hexdigest()


def run(cmd, destination):
    destination.parent.mkdir(parents=True, exist_ok=True)
    with destination.with_suffix('.command.json').open('x') as f:
        json.dump(cmd, f, indent=2)
    with destination.open('x') as f:
        subprocess.run(cmd, cwd=UPSTREAM, stdout=f, stderr=subprocess.STDOUT,
                       check=True)


def main(stage):
    os.sched_setaffinity(0, {CPU})
    os.environ['SOURCE_DATE_EPOCH'] = '0'
    os.environ['PYTHONPATH'] = str(ROOT / 'env/embench-python')
    os.environ['LC_ALL'] = 'C'
    pin = json.loads((ROOT / 'pins.json').read_text())['embench']['commit']
    assert subprocess.check_output(['git', 'rev-parse', 'HEAD'], cwd=UPSTREAM,
                                   text=True).strip() == pin
    subprocess.run(['git', 'diff', '--exit-code', 'HEAD', '--'],
                   cwd=UPSTREAM, check=True, stdout=subprocess.DEVNULL)
    names = sorted(p.name for p in (UPSTREAM / 'src').iterdir() if p.is_dir())
    assert len(names) == 19
    if stage == 'build':
        OUT.mkdir()
        # Upstream's documented chip configuration interface; GCC-only flags
        # are not meaningful to CompCert. No benchmark/harness source edits.
        for mode in ('speed', 'size'):
            chip = UPSTREAM / ('config/native/chips/veriop-compcert-' + mode)
            chip.mkdir(exist_ok=True)
            (chip / 'chip.cfg').write_text('# Flags supplied through build_all.py CLI.\n')
            for name in ('chipsupport.c', 'chipsupport.h'):
                shutil.copy2(UPSTREAM / 'config/native/chips/speed-test-gcc' / name, chip / name)
            if mode == 'size':
                (chip / 'dummy-fabs.c').write_text(
                    '/* Size-only dummy symbols; CompCert emits calls unlike GCC. */\n'
                    'double fabs(double x) { return 0.0; }\n'
                    'float fabsf(float x) { return 0.0f; }\n')
        manifest = {'upstream_commit': pin, 'cpu_affinity': [CPU],
                    'CPU_MHZ_workload_scale': CPU_MHZ,
                    'reference': 'same-host baseline compiler, upstream --baseline-output',
                    'run_order': ['baseline', 'c1-global', 'c1-global', 'baseline'],
                    'compiler_sha256': {}, 'binary_sha256': {},
                    'tracked_source_sha256': {}, 'driver_sha256': sha(Path(__file__)),
                    'protocol_sha256': sha(ROOT / 'performance/OFFICIAL.md')}
        tracked = subprocess.check_output(['git', 'ls-files'], cwd=UPSTREAM, text=True)
        for name in tracked.splitlines():
            p = UPSTREAM / name
            if p.is_file():
                manifest['tracked_source_sha256'][name] = sha(p)
        freeze = json.loads((ROOT / 'results/frozen/c1-candidates.json').read_text())
        for variant in VARIANTS:
            compiler = ROOT / 'repos' / variant / 'ccomp'
            compiler_hash = sha(compiler)
            if variant == 'c1-global':
                expected = next(x for x in freeze['variants'] if x['variant'] == variant)
                assert compiler_hash == expected['compiler_sha256']
            else:
                expected = json.loads((ROOT / 'results/baseline/embench/summary.json').read_text())
                assert compiler_hash == expected['compiler_sha256']
            manifest['compiler_sha256'][variant] = compiler_hash
            for mode in ('speed', 'size'):
                build = OUT / variant / mode
                opt = '-O' if mode == 'speed' else '-Os'
                runtime = str(compiler.parent / 'runtime')
                cmd = [sys.executable, str(UPSTREAM / 'build_all.py'),
                       '--arch=native', '--chip=veriop-compcert-' + mode, '--board=default',
                       '--cc=' + str(compiler), '--ld=' + str(compiler),
                       '--cflags=-c ' + opt + ' -fall -stdlib ' + runtime,
                       '--ldflags=' + opt + ' -stdlib ' + runtime +
                       ('' if mode == 'speed' else ' -nostartfiles -nostdlib -no-pie'),
                       '--cpu-mhz=' + str(CPU_MHZ if mode == 'speed' else 1),
                       '--warmup-heat=1', '--timeout=120', '--verbose',
                       '--builddir=' + str(build), '--logdir=' + str(build / 'logs')]
                cmd += (['--user-libs=-lm'] if mode == 'speed' else
                        ['--dummy-libs=crt0 libc libgcc libm'])
                run(cmd, OUT / f'build-{variant}-{mode}.log')
                for name in names:
                    binary = build / 'src' / name / name
                    manifest['binary_sha256'][str(binary.relative_to(OUT))] = sha(binary)
                print('Built', variant, mode, flush=True)
        (OUT / 'freeze.json').write_text(json.dumps(manifest, indent=2) + '\n')
    elif stage == 'run':
        manifest = json.loads((OUT / 'freeze.json').read_text())
        assert sha(Path(__file__)) == manifest['driver_sha256']
        assert sha(ROOT / 'performance/OFFICIAL.md') == manifest['protocol_sha256']
        for name, value in manifest['binary_sha256'].items():
            assert sha(OUT / name) == value
        for name, value in manifest['tracked_source_sha256'].items():
            assert sha(UPSTREAM / name) == value
        # Upstream run_native checks for RET= but does not reject its nonzero
        # value. Independently require the unchanged benchmark verifier to pass.
        for variant in VARIANTS:
            for name in names:
                run([str(OUT / variant / 'speed/src' / name / name)],
                    OUT / 'functional' / variant / (name + '.log'))
            print('Functional checks PASS:', variant, flush=True)
        reference = OUT / 'reference'
        reference.mkdir()
        for mode in ('speed', 'size'):
            extra = ['--target-module=run_native', '--timeout=120'] if mode == 'speed' else []
            script = str(UPSTREAM / f'benchmark_{mode}.py')
            common = [sys.executable, script, *extra]
            run([*common, '--builddir=' + str(OUT / 'baseline' / mode),
                 '--logdir=' + str(reference / 'logs' / mode), '--baseline-output'],
                reference / f'{mode}.json')
            data = json.loads((reference / f'{mode}.json').read_text())
            assert sorted(data) == names and all(x > 0 for x in data.values())
            order = manifest['run_order'] if mode == 'speed' else list(VARIANTS)
            for i, variant in enumerate(order):
                dest = OUT / f'{mode}-{i}-{variant}.log'
                run([*common, '--builddir=' + str(OUT / variant / mode),
                     '--logdir=' + str(OUT / 'logs' / f'{mode}-{i}-{variant}'),
                     '--baselinedir=' + str(reference), '--relative'], dest)
                assert 'All benchmarks' in dest.read_text()
                print(dest.name, dest.read_text().split('Geometric mean')[-1][:95], flush=True)
            # Size has no workload normalization; also retain the published
            # Cortex-M4 reference score, calculated by the same upstream script.
            if mode == 'size':
                for variant in VARIANTS:
                    run([*common, '--builddir=' + str(OUT / variant / mode),
                         '--logdir=' + str(OUT / 'logs' / f'size-published-{variant}'),
                         '--relative'], OUT / f'size-published-{variant}.log')
        (OUT / 'complete.json').write_text(json.dumps({'functional_checks': 38,
            'speed_runs': 4, 'speed_reference_runs': 1,
            'scoring': 'Unmodified upstream scripts and run_native module'}, indent=2) + '\n')
    else:
        raise SystemExit('Usage: official-embench.py build|run')


if __name__ == '__main__':
    main(sys.argv[1] if len(sys.argv) == 2 else '')
