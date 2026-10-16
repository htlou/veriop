"""No-regression check for volta-cta: replay every recorded command in ../volta/ (44 compares, 88 analyses,
3 negative controls) with the volta-cta binary at the default CTA (no new flags), and compare to the original
binary's recorded output. Timing figures ("0.010s") are the only nondeterministic content and are masked;
everything else (verdicts, element counts, expressions, instruction counts, error messages) must be
byte-identical. Also runs each compare once more with an explicit `--cta 0,0,0`."""
import json, re, subprocess, sys
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
ORIG = '/srv/home/hantaolou/code/veriop/cuda/repos/volta/target/release/volta'
NEW = str(ROOT / 'volta-cta/target/release/volta')
mask = lambda t: re.sub(r'\d+\.\d+s', '#s', t)
rows = []
for meta in sorted((ROOT / 'volta').glob('*.json')):
    if meta.name == 'summary.json' or meta.name == 'expr-identity.json':
        continue
    rec = json.loads(meta.read_text())
    cmd = rec['command']
    assert cmd[0] == ORIG, cmd[0]
    old_log = meta.with_suffix('.log').read_text()
    variants = [('default', [NEW] + cmd[1:])]
    if 'compare' in cmd:
        variants.append(('cta000', [NEW] + cmd[1:] + ['--cta', '0,0,0']))
    for vname, c in variants:
        p = subprocess.run(c, capture_output=True, text=True, cwd=rec['cwd'])
        out = p.stdout + p.stderr  # record.py captured stdout+stderr merged; order can differ, so compare both ways
        same = mask(out) == mask(old_log) or sorted(mask(out).splitlines()) == sorted(mask(old_log).splitlines())
        exact_order = mask(out) == mask(old_log)
        rows.append(dict(run=meta.stem, variant=vname, returncode_old=rec['returncode'], returncode_new=p.returncode,
                         identical_masked=same, identical_masked_same_order=exact_order))
        if not (same and p.returncode == rec['returncode']):
            print('DIFF', meta.stem, vname, rec['returncode'], p.returncode, flush=True)
ok = all(r['identical_masked'] and r['returncode_old'] == r['returncode_new'] for r in rows)
res = dict(all_identical=ok, n_runs=len(rows), original_binary=ORIG, new_binary=NEW,
           masking='regex \\d+\\.\\d+s -> #s (wall-clock timings only)', rows=rows)
(ROOT / 'volta-cta-evidence/regression-default-cta.json').write_text(json.dumps(res, indent=2) + '\n')
print('runs', len(rows), 'all identical (timings masked) & same exit codes:', ok,
      '| same line order:', sum(r['identical_masked_same_order'] for r in rows))
sys.exit(0 if ok else 1)
