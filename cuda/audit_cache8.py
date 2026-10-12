"""Read-only audit of the retained candidate's archived proof and timing evidence."""
import hashlib
import json
from pathlib import Path
import re
import subprocess

from bench_cache8 import distribution, errors
from verify_cache8 import accepted
import numpy as np

ROOT = Path(__file__).resolve().parent
OUT = ROOT / 'verified_optimization'


def read(path):
    return json.loads(path.read_text())


def sha(path):
    with path.open('rb') as stream:
        digest = hashlib.sha256()
        for block in iter(lambda: stream.read(1024 * 1024), b''):
            digest.update(block)
    return digest.hexdigest()


def command(prefix):
    record = read(prefix.with_suffix('.json'))
    assert record['returncode'] == 0, str(prefix)
    assert sha(prefix.with_suffix('.log')) == record['log_sha256'], str(prefix)
    return record


def git(repo, *args):
    return subprocess.check_output(['git', '-C', str(repo), *args], text=True).strip()


def kernel(text, symbol):
    text = re.sub(r'/\*.*?\*/|//[^\n]*', '', text, flags=re.S)
    start = text.index('.entry ' + symbol)
    opening = text.index('{', start)
    depth = 1
    end = opening + 1
    while depth:
        depth += (text[end] == '{') - (text[end] == '}')
        end += 1
    return re.sub(r'\s+', '', text[start:end])


def main():
    provenance = read(OUT / 'candidate/cache8-provenance.json')
    baseline = ROOT / 'repos/llama.cpp'
    candidate = OUT / 'candidate/cache8'
    checker = ROOT / 'repos/volta'
    for repo, commit in [(baseline, provenance['baseline_commit']),
                         (candidate, provenance['candidate_commit']),
                         (checker, provenance['volta_commit'])]:
        assert git(repo, 'rev-parse', 'HEAD') == commit
        assert not git(repo, 'status', '--porcelain', '--untracked-files=no')
    assert git(candidate, 'rev-parse', 'HEAD^') == provenance['baseline_commit']
    source = 'ggml/src/ggml-cuda/norm.cu'
    assert (baseline / source).read_bytes() == (OUT / 'baseline/norm.cu').read_bytes()
    assert sha(candidate / source) == provenance['source_sha256']
    assert git(candidate, 'diff', '--name-only', 'HEAD^', 'HEAD') == source
    subprocess.run(['git', '-C', str(candidate), 'diff', '--check', 'HEAD^', 'HEAD'], check=True)
    for name, digest in read(OUT / 'results/cache8-proof-hashes.json').items():
        assert sha(ROOT / name) == digest, name
    commands = [command(OUT / p)['command'] for p in
                ['baseline/llama-ptx-build', 'candidate/cache8-ptx-build']]
    def normalize(cmd, repo):
        return [arg.replace(str(repo), 'REPO') for arg in cmd[:-1]]
    assert normalize(commands[0], baseline) == normalize(commands[1], candidate)
    proof = read(OUT / 'volta/cache8-summary.json')
    assert proof['accepted'] and len(proof['checks']) == 22
    assert sha(checker / 'target/release/volta') == proof['checker_sha256']
    for name, digest in proof['ptx_sha256'].items():
        assert sha(OUT / 'ptx' / name) == digest
    complete = read(OUT / 'volta/cache8-complete-instances.json')
    assert len(complete) == 22
    ends = []
    for case, full in zip(proof['checks'], complete):
        assert all(full[k] == v for k, v in case.items())
        n = case['ncols']
        name = f"cache8-{n}-" + ('inplace' if case['inplace'] else 'separate')
        prefix = OUT / 'volta' / name
        record = command(prefix)
        assert record['command'] == full['compare_command']
        assert accepted(prefix.with_suffix('.log').read_text(), n)
        assert full['verdict'] == 'EQUIVALENT'
        assert full['nvcc_commands']['baseline'] == commands[0]
        assert full['nvcc_commands']['candidate'] == commands[1]
        cmd = record['command']
        assert cmd[cmd.index('--sample') + 1] == '0'
        assert cmd[cmd.index('--check-array') + 1] == case['complete_output']
        for side in ['reference', 'candidate']:
            safety = OUT / 'volta' / f'{name}-{side}-safety'
            sr = command(safety)
            log = safety.with_suffix('.log').read_text()
            assert 'no data races or deadlocks detected' in log
            assert f"output '{case['complete_output']}': {n} element(s) written" in log
            ends.append(sr['started_unix'] + sr['elapsed_seconds'])
    for n in [256, 4096, 8192]:
        p = OUT / 'volta' / f'llama-self-{n}'
        command(p)
        assert accepted(p.with_suffix('.log').read_text(), n)
    for name, count in [('llama-baseline-tests', 101), ('cache8-tests', 101),
                        ('baseline-fallback-tests', 56), ('cache8-fallback-tests', 56)]:
        p = OUT / 'results' / name
        command(p)
        assert f'{count}/{count} tests passed' in p.with_suffix('.log').read_text()
    hashes = {}
    for variant in ['baseline', 'cache8']:
        hashes[variant] = sha(OUT / 'bench' / variant)
        audit = read(OUT / f'bench/{variant}-ptx-audit.json')
        assert hashes[variant] == audit['binary_sha256']
        embedded = (OUT / f'bench/{variant}-embedded-ptx.log').read_text()
        ptx = (OUT / f'ptx/llama-norm-{variant}.ptx').read_text()
        key = 'original_kernel' if variant == 'baseline' else 'candidate_kernel'
        for symbol in {c[key] for c in proof['checks']}:
            assert kernel(ptx, symbol) == kernel(embedded, symbol), symbol
    processes = 0
    shapes = set()
    for suite, count in [('cache8-pairs', 16), ('cache8-heldout-pairs', 12)]:
        directory = OUT / 'bench' / suite
        summary = read(directory / 'summary.json')
        assert len(summary['results']) == count
        assert summary['binary_sha256'] == hashes
        assert summary['cuda_visible_devices'] == '6'
        for case in summary['results']:
            n, rows = case['ncols'], case['nrows']
            shapes.add((n, rows))
            for variant in hashes:
                times = []
                for pair in range(10):
                    p = directory / f'{n}-{rows}-{pair}-{variant}'
                    record = command(p)
                    assert record['started_unix'] > max(ends)
                    assert record['command'][1:5] == [str(n), str(rows), '1000', '1']
                    data = [json.loads(s) for s in p.with_suffix('.log').read_text().splitlines()
                            if s.startswith('{')][-1]
                    assert data['warmup'] == 200 and data['launches_per_repeat'] == 1000
                    assert data['ncols'] == n and data['nrows'] == rows
                    times += data['us']
                    processes += 1
                assert times == case['us'][variant]
                key = 'baseline_us' if variant == 'baseline' else 'candidate_us'
                assert distribution(times) == case[key]
            assert distribution([a / b for a, b in zip(case['us']['baseline'], case['us']['cache8'])]) == case['paired_speedup']
            assert len(case['numerical_differences']) == 10
            assert all(all(v == 0 for v in d.values()) for d in case['numerical_differences'])
            arrays = [np.fromfile(directory / f'{n}-{rows}-{v}.bin', dtype=np.float32) for v in hashes]
            assert all(a.size == n * rows for a in arrays)
            assert all(v == 0 for v in errors(*arrays).values())
    assert processes == 560 and len(shapes) == 27
    report = (OUT / 'README.md').read_text()
    assert len(re.findall(r'^## [1-8]\. ', report, re.M)) == 8
    for link in re.findall(r'\]\(([^)]+)\)', report):
        assert (OUT / link).exists(), link
    print(json.dumps(dict(artifact_audit='PASS', candidate_commit=provenance['candidate_commit'],
                          equivalence_instances=22, safety_analyses=44,
                          targeted_tests_per_version=157, timing_processes=processes,
                          unique_shapes=len(shapes), goal_complete=False,
                          remaining='Hardware counters and bottleneck attribution; shared-GPU measurement limitation'), indent=2))


if __name__ == '__main__':
    main()
