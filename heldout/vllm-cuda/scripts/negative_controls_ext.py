"""Negative controls for the Volta extension (Pack16/Unpack16): the extended
checker must still reject wrong kernels and unsupported uses."""
import json, re
from pathlib import Path
from record import run
import verify_relu16 as vr

OUT = vr.ROOT / 'volta/relu16-ext-negative'
OUT.mkdir(parents=True, exist_ok=True)
src = vr.NEW.read_text()
K1, K2 = vr.SYM['bf16']
start = src.index('.entry ' + K2); end = src.index('\n}\n', start)
body = src[start:end]


def mutant(name, fn):
    nb = fn(body)
    assert nb != body, name
    p = OUT / f'{name}.ptx'
    p.write_text(src[:start] + nb + src[end:])
    return p


muts = {
    'swap-unpack-halves': mutant('swap-unpack-halves', lambda b: re.sub(
        r'mov\.b32\s+\{(%rs\d+), (%rs\d+)\}, (%r\d+);', r'mov.b32 {\2, \1}, \3;', b)),
    'swap-pack-halves': mutant('swap-pack-halves', lambda b: re.sub(
        r'mov\.b32\s+(%r\d+), \{(%rs\d+), (%rs\d+)\};', r'mov.b32 \1, {\3, \2};', b)),
    'mul-to-add': mutant('mul-to-add', lambda b: b.replace('mul.f32', 'add.f32')),
}
d = 9728
cfg, outname, _, _ = vr.cfg_for(d, False)
res = {}
for name, ptx in muts.items():
    rc = run(OUT / name, [vr.VOLTA, '--no-log-file', 'compare', vr.OLD, ptx, '--kernel1', K1, '--kernel2', K2,
                          '-b', '1024', '--block2', '128', *cfg, '--check-array', outname, '--sample', '0', '--no-profile'])
    log = (OUT / f'{name}.log').read_text()
    res[name] = dict(returncode=rc, rejected=rc != 0 and not vr.accepted(log, d), last=log.strip().splitlines()[-1][:200])
# Unpack of a word that is not a packed pair: declare the input with 4-byte
# elements, so the 32-bit loads return scalars, not (lo, hi) pairs.
bad_cfg = ['-g', '1', '--dyn-shared', '16', '--array', f'in:0x100000:4:{d // 2}:in', '--array', f'out:0x200000:2:{d}:out',
           '--param', 'ptr:out', '--param', 'ptr:in', '--param', f'int:{d}']
rc = run(OUT / 'unpack-non-pair', [vr.VOLTA, '--no-log-file', 'analyze', vr.OLD, '-k', K1, '-b', '1024', *bad_cfg,
                                   '--print-outputs', '0', '--no-profile'])
log = (OUT / 'unpack-non-pair.log').read_text()
res['unpack-non-pair'] = dict(returncode=rc, rejected=rc != 0, last=log.strip().splitlines()[-1][:200])
for k, v in res.items():
    print(k, v)
(OUT / 'summary.json').write_text(json.dumps(res, indent=2) + '\n')
assert all(v['rejected'] for v in res.values())
