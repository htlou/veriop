#!/usr/bin/env python3
"""Generate raw-level plan lines: changed free functions per commit (both sides), plus whole
modules for hashtable/sink/fastcpy when touched.  line: short|tag|charon-args|cargo-args||side"""
import re, subprocess, sys
from pathlib import Path
H = Path('/srv/home/hantaolou/code/veriop/history-eq')
R = H/'rust/lz4_flex'
commits = sys.argv[1:] or (R/'perf_commits.txt').read_text().split()
def fns(c):
    out = subprocess.run([str(R/'scripts/fns.sh'), c], capture_output=True, text=True).stdout.splitlines()
    res = {}; cur = None
    for l in out[1:]:
        if not l.startswith('   '):
            cur = l.split()[0]; res.setdefault(cur, set()); continue
        m = re.search(r'\bfn ([a-z_0-9]+)', l)
        if m and cur: res[cur].add(m.group(1))
    return res
def feats(wt):
    t = (wt/'Cargo.toml').read_text()
    m = re.search(r'\[features\](.*?)(\n\[|\Z)', t, re.S)
    return set(re.findall(r'^\s*([a-z-]+)\s*=', m.group(1), re.M)) if m else set()
for c in commits:
    ch = fns(c)
    for side in ['old', 'new']:
        wt = H/f'wt/lz4-{c}-{side}'
        fe = feats(wt)
        base = [f for f in ['std', 'safe-encode', 'safe-decode', 'checked-decode'] if f in fe]
        kargs = '--no-default-features' + (' --features ' + ','.join(base) if base else '')
        starts = {'hlpc': [], 'hlpd': []}
        mods = []
        for f, names in ch.items():
            p = wt/f
            if not p.exists() or re.search(r'tests|/bin/|test_bins|main.rs|frame', f): continue
            txt = p.read_text()
            mod = 'lz4_flex::' + re.sub(r'::mod$', '', f[4:-3].replace('/', '::'))
            if re.search(r'hashtable|sink|fastcpy', f):
                mods.append(mod); continue
            tag = 'hlpd' if 'decompress' in f else 'hlpc'
            for n in sorted(names):
                if re.match(r'(compress|compress_internal|compress_into.*|compress_prepend_size|compress_with_dict|decompress|decompress_into.*|decompress_internal|decompress_size_prepended|decompress_with_dict)$', n): continue
                # free function at column 0 (possibly preceded by attributes on earlier lines)
                if re.search(r'^(pub(\([a-z]+\))? )?(const )?(unsafe )?fn ' + n + r'\b', txt, re.M):
                    starts[tag].append(f'{mod}::{n}')
        for tag, st in starts.items():
            if st:
                print(f'{c}|{tag}|' + ' '.join('--start-from ' + x for x in sorted(set(st))) + f'|{kargs}||{side}')
        for m in sorted(set(mods)):
            t = 'mod' + m.split('::')[-1][:4]
            print(f'{c}|{t}|--start-from {m}|{kargs}||{side}')
