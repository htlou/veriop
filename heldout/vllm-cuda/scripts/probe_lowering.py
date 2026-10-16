"""Classify every PTX entry by whether Volta's lowering accepts it.

Runs `volta analyze` with an empty launch config: a lowering failure is
reported before the configuration is validated, so any other error means the
kernel lowered successfully (and was then rejected only for the dummy config).
"""
import collections, json, re, subprocess, sys
from pathlib import Path
V = __import__('os').environ.get('VOLTA', '/srv/home/hantaolou/code/veriop/cuda/repos/volta/target/release/volta')
out = {}
for ptx in sys.argv[2:]:
    src = Path(ptx).read_text()
    for name in re.findall(r'\.entry\s+(\S+)\(', src):
        dem = subprocess.run(['c++filt', name], capture_output=True, text=True).stdout.strip()
        p = subprocess.run([V, '--no-log-file', 'analyze', ptx, '-k', name, '--no-profile'],
                           capture_output=True, text=True, timeout=120)
        msg = (p.stdout + p.stderr).strip().splitlines()
        first = msg[0] if msg else ''
        lowered = 'lowering failed' not in first
        reason = ' '.join(msg[:2])[:300]
        out[name] = dict(module=Path(ptx).name, demangled=dem, lowered=lowered, first_error=reason)
json.dump(out, open(sys.argv[1], 'w'), indent=1)
summ = collections.Counter((v['module'], v['lowered']) for v in out.values())
for k, c in sorted(summ.items()):
    print(k, c)
reasons = collections.Counter(re.sub(r"AsciiString \{ data: \[.*?\] \}", 'REG', v['first_error'])[:160] for v in out.values() if not v['lowered'])
for r, c in reasons.most_common(15):
    print(c, r)
