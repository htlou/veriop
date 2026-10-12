"""Interleave verified production launches and retain every timing and GPU error check."""
import hashlib
import json
import os
from pathlib import Path
import shutil
import statistics
import tempfile

import numpy as np
from record import run
from verify_rms import ROOT, OUT, accepted


def errors(a, b):
    assert a.shape == b.shape and np.isfinite(a).all() and np.isfinite(b).all()
    delta = a - b
    nmse = float(np.sum(delta * delta, dtype=np.float64) / np.sum(a * a, dtype=np.float64))
    def ordered(x):
        bits = np.where(x == 0, np.float32(0), x).view(np.uint32)
        return np.where(bits & 0x80000000, ~bits, bits | 0x80000000).astype(np.int64)
    result = dict(max_abs=float(np.max(np.abs(a.astype(np.float64) - b))),
                  max_rel=float(np.max(np.abs(a.astype(np.float64) - b) / np.maximum(np.abs(a), 1e-30))),
                  max_ulp=int(np.max(np.abs(ordered(a) - ordered(b)))), nmse=nmse)
    assert nmse <= 1e-7, result  # Existing test-backend-ops default tolerance.
    return result


def distribution(values):
    q = statistics.quantiles(values, n=20, method='inclusive')
    return dict(median=statistics.median(values), p5=q[0], p95=q[-1], stdev=statistics.stdev(values))


def main():
    proof = json.loads((OUT / 'volta/cache8-summary.json').read_text())
    assert proof['accepted'] and len(proof['checks']) == 22
    for case in proof['checks']:
        name = f"cache8-{case['ncols']}-" + ('inplace' if case['inplace'] else 'separate')
        assert accepted((OUT / f'volta/{name}.log').read_text(), case['ncols'])
    assert json.loads((OUT / 'results/cache8-tests.json').read_text())['returncode'] == 0
    binaries = {v: OUT / 'bench' / v for v in ['baseline', 'cache8']}
    hashes = {}
    for v, binary in binaries.items():
        audit = json.loads((OUT / f'bench/{v}-ptx-audit.json').read_text())
        hashes[v] = hashlib.sha256(binary.read_bytes()).hexdigest()
        assert audit['binary_sha256'] == hashes[v]
        assert all(audit['proof_and_benchmark_kernel_bodies_match'].values())
    output = OUT / 'bench/cache8-heldout-pairs'
    output.mkdir()  # Refuse to overwrite a completed or interrupted run.
    shapes = [(n, rows) for n in [5120, 6144, 7168, 8191] for rows in [1, 128, 2048]]
    report = dict(binary_sha256=hashes, cuda_visible_devices=os.environ.get('CUDA_VISIBLE_DEVICES'),
                  protocol='200 warmup, 1000 launches, 10 alternating-order pairs per shape',
                  numerical_tolerance='NMSE <= 1e-7 (repository test-backend-ops)', results=[])
    query = ['nvidia-smi', '--query-gpu=index,uuid,utilization.gpu,clocks.sm,clocks.mem,temperature.gpu,power.draw', '--format=csv']
    with tempfile.TemporaryDirectory(prefix='cuda-rms-') as temporary:
        for n, rows in shapes:
            run(output / f'{n}-{rows}-gpu-before', query)
            values = {v: [] for v in binaries}
            differences = []
            for pair in range(10):
                order = list(binaries) if pair % 2 == 0 else list(reversed(binaries))
                arrays = {}
                for v in order:
                    saved = Path(temporary) / f'{v}.bin'
                    prefix = output / f'{n}-{rows}-{pair}-{v}'
                    assert run(prefix, [binaries[v], str(n), str(rows), '1000', '1', saved]) == 0
                    records = [json.loads(line) for line in prefix.with_suffix('.log').read_text().splitlines() if line.startswith('{')]
                    assert records[-1]['ncols'] == n and records[-1]['nrows'] == rows
                    values[v].append(records[-1]['us'][0])
                    arrays[v] = np.fromfile(saved, dtype=np.float32)
                    assert arrays[v].size == n * rows
                    if pair == 0:
                        shutil.copyfile(saved, output / f'{n}-{rows}-{v}.bin')
                differences.append(errors(arrays['baseline'], arrays['cache8']))
            ratios = [a / b for a, b in zip(values['baseline'], values['cache8'])]
            case = dict(ncols=n, nrows=rows, unchanged_control=n in [256, 16384],
                        us=values, baseline_us=distribution(values['baseline']),
                        candidate_us=distribution(values['cache8']), paired_speedup=distribution(ratios),
                        numerical_differences=differences)
            report['results'].append(case)
            (output / 'summary.json').write_text(json.dumps(report, indent=2) + '\n')
            run(output / f'{n}-{rows}-gpu-after', query)
            print(f"shape {n} x {rows}: {case['paired_speedup']['median']:.4f}x", flush=True)


if __name__ == '__main__':
    x = np.array([-1, 0, 1], dtype=np.float32)
    assert errors(x, x)['max_ulp'] == 0
    assert errors(x, np.nextafter(x, np.float32(np.inf)))['max_ulp'] == 1
    main()
