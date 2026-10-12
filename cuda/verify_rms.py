"""Verify the changed launch selection, including in-place output, after repository tests."""
import hashlib
import json
from pathlib import Path
import re
import struct

from record import run

ROOT = Path(__file__).resolve().parent
OUT = ROOT / 'verified_optimization'


def accepted(log, count):
    return (log.splitlines()[-1:] == ['EQUIVALENT']
            and re.search(rf'^VC check: .* elements: {count}$', log, re.M) is not None)


def main():
    tests = OUT / 'results/launch256-tests.json'
    assert json.loads(tests.read_text())['returncode'] == 0
    assert '101/101 tests passed' in tests.with_suffix('.log').read_text()
    audit = json.loads((OUT / 'candidate/compile-audit.json').read_text())
    assert audit['matched_nvcc_options']
    for name, digest in audit['ptx_sha256'].items():
        assert hashlib.sha256((OUT / 'ptx' / name).read_bytes()).hexdigest() == digest
    binary = ROOT / 'repos/volta/target/release/volta'
    old = OUT / 'ptx/llama-norm-baseline.ptx'
    new = OUT / 'ptx/llama-norm-launch256.ptx'
    eps = struct.unpack('f', struct.pack('f', 1e-5))[0]
    checks = []
    for n in [256, 1024, 2048, 3072, 4096, 6144, 8192, 16384]:
        b1 = 256 if n < 1024 else 1024
        b2 = 256 if n <= 8192 else 1024
        def symbol(block):
            return (f'_Z12rms_norm_f32ILi{block}ELb0ELb0ELb0EEvPKfPfilllf'
                    'S1_lll5uint3S3_S3_S3_S1_lllS3_S3_S3_S3_f')
        for inplace in [False, True]:
            name = f'launch256-{n}-' + ('inplace' if inplace else 'separate')
            arrays = [f'x:0x100000:4:{n}:inout'] if inplace else [
                f'x:0x100000:4:{n}:in', f'out:0x200000:4:{n}:out']
            output = 'x' if inplace else 'out'
            params = ['ptr:x', f'ptr:{output}', f'int:{n}', f'int:{n}',
                      f'int:{n}', f'int:{n}', f'float:{eps!r}'] + ['int:0'] * 16 + ['float:1']
            config = ['-g', '1,1,1', '--dyn-shared', '128']
            for a in arrays:
                config += ['--array', a]
            for param in params:
                config += ['--param', param]
            instance = dict(ncols=n, inplace=inplace, arrays=arrays, params=params,
                            original_block=b1, candidate_block=b2, grid=[1, 1, 1],
                            dynamic_shared_bytes=128, complete_output=output,
                            epsilon_float32=eps, original_kernel=symbol(b1),
                            candidate_kernel=symbol(b2))
            (OUT / f'volta/{name}-instance.json').write_text(json.dumps(instance, indent=2) + '\n')
            cmd = [binary, '--no-log-file', 'compare', old, new,
                   '--kernel1', symbol(b1), '--kernel2', symbol(b2),
                   '-b', str(b1), '--block2', str(b2), *config,
                   '--check-array', output, '--sample', '0']
            assert run(OUT / f'volta/{name}', cmd) == 0
            assert accepted((OUT / f'volta/{name}.log').read_text(), n)
            for label, ptx, block in [('reference', old, b1), ('candidate', new, b2)]:
                prefix = OUT / f'volta/{name}-{label}-safety'
                assert run(prefix, [binary, '--no-log-file', 'analyze', ptx,
                                    '-k', symbol(block), '-b', str(block), *config,
                                    '--print-outputs', '0', '--no-profile']) == 0
                log = prefix.with_suffix('.log').read_text()
                assert 'no data races or deadlocks detected' in log
                assert f"output '{output}': {n} element(s) written" in log
            checks.append(instance)
    summary = dict(accepted=True, model='Volta supported PTX / real-valued semantics',
                   checker_sha256=hashlib.sha256(binary.read_bytes()).hexdigest(),
                   ptx_sha256=audit['ptx_sha256'], checks=checks,
                   limitation='One-row concrete instances; not all possible shapes or IEEE-754 equivalence')
    (OUT / 'volta/launch256-summary.json').write_text(json.dumps(summary, indent=2) + '\n')


if __name__ == '__main__':
    good = 'VC check: 0.1s elements: 256\nEQUIVALENT\n'
    assert accepted(good, 256)
    assert not accepted(good.replace('EQUIVALENT', 'NOT EQUIVALENT'), 256)
    assert not accepted(good, 4096)
    main()
