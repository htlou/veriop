"""Replay every recorded CTA-0 Volta run of the earlier rounds with the combined volta-final binary.

Recorded runs: volta/{rope,rope-negative,relu} (upstream Volta) and volta/{relu16-ext,relu16-ext-negative}
(volta-ext). Each recorded command is re-run twice with the binary replaced by volta-final: (a) unchanged
flags, (b) with an explicit `--cta 0,0,0`. Pass iff the exit code is identical and the output is
byte-identical to the recorded log after masking wall-clock timings (`<digits>.<digits>s`).
Output: final-verification/replay-cta0/summary.json (+ per-run logs only for mismatches).
"""
import hashlib, json, re, subprocess
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path

H = Path(__file__).resolve().parents[2]
VOLTA = H / 'volta-final/target/release/volta'
OUT = H / 'final-verification/replay-cta0'
DIRS = ['volta/rope', 'volta/rope-negative', 'volta/relu', 'volta/relu16-ext', 'volta/relu16-ext-negative']
MASK = re.compile(r'\d+\.\d+s')


def norm(s):
    return MASK.sub('<t>s', s)


def job(meta):
    rec = json.loads(meta.read_text())
    cmd = list(rec['command'])
    assert cmd[0].endswith('/volta'), cmd[0]
    old_log = meta.with_suffix('.log').read_text()
    res = dict(run=str(meta.relative_to(H)), recorded_binary=cmd[0], recorded_rc=rec['returncode'])
    for variant in ('default', 'cta0'):
        c = [str(VOLTA)] + cmd[1:]
        if variant == 'cta0':
            c += ['--cta', '0,0,0']
        p = subprocess.run(c, cwd=rec['cwd'], capture_output=True, text=True)
        out = p.stdout + p.stderr
        same = p.returncode == rec['returncode'] and norm(out) == norm(old_log)
        res[variant] = dict(rc=p.returncode, identical=same)
        if not same:
            OUT.mkdir(parents=True, exist_ok=True)
            (OUT / (meta.stem.replace('/', '_') + f'.{variant}.log')).write_text(out)
    return res


def main():
    OUT.mkdir(parents=True, exist_ok=True)
    metas = sorted(m for d in DIRS for m in (H / d).glob('*.json') if m.name != 'summary.json')
    with ThreadPoolExecutor(32) as ex:
        results = list(ex.map(job, metas))
    ok = all(r['default']['identical'] and r['cta0']['identical'] for r in results)
    summary = dict(all_identical=ok, runs=len(results),
                   volta_final_sha256=hashlib.sha256(VOLTA.read_bytes()).hexdigest(),
                   masking=MASK.pattern, results=results)
    (OUT / 'summary.json').write_text(json.dumps(summary, indent=1) + '\n')
    print(f'{len(results)} recorded runs replayed x2; all identical: {ok}')
    for r in results:
        if not (r['default']['identical'] and r['cta0']['identical']):
            print('MISMATCH', r)


if __name__ == '__main__':
    main()
