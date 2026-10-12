#!/usr/bin/env python3
"""Generate api-level plan lines for all perf commits.
line: short|tag|charon-args|cargo-args|aeneas-args|side"""
import re, subprocess, sys
from pathlib import Path
H = Path('/srv/home/hantaolou/code/veriop/history-eq')
R = H/'rust/lz4_flex'
commits = (R/'perf_commits.txt').read_text().split()
def files(c):
    out = subprocess.run(['git','-C',str(H/'repos/lz4_flex'),'show','--format=','--name-only',c,'--','src/'],capture_output=True,text=True).stdout.split()
    return [f for f in out if not re.search(r'tests|/bin/|test_bins|main.rs',f)]
def feats(wt):
    t=(wt/'Cargo.toml').read_text()
    m=re.search(r'\[features\](.*?)(\n\[|\Z)',t,re.S)
    names=set(re.findall(r'^\s*([a-z-]+)\s*=',m.group(1),re.M)) if m else set()
    return names
def findfn(wt,name,prefer):
    hits=[]
    for p in (wt/'src').rglob('*.rs'):
        rel=p.relative_to(wt/'src').as_posix()
        if re.search(r'tests|bin/|test_bins|main.rs|frame',rel): continue
        if re.search(r'^\s*pub(\(crate\))? fn '+name+r'\b',p.read_text(),re.M):
            mod=rel[:-3].replace('/','::')
            mod=re.sub(r'::mod$','',mod)
            hits.append(mod)
    for pr in prefer:
        for h in hits:
            if h.endswith(pr): return 'lz4_flex::'+h+'::'+name
    return ('lz4_flex::'+hits[0]+'::'+name) if hits else None
for c in commits:
    fs=files(c)
    comp=any(re.search(r'compress\.rs|hashtable|block/mod\.rs|sink|fastcpy|compress_slice|compress_write',f) and 'decompress' not in f for f in fs)
    decomp=any(re.search(r'decompress|block/mod\.rs|sink|fastcpy|lib\.rs',f) for f in fs)
    frame=any('frame' in f for f in fs)
    for side in ['old','new']:
        wt=H/f'wt/lz4-{c}-{side}'
        fe=feats(wt)
        base=[f for f in ['std','safe-encode','safe-decode','checked-decode'] if f in fe]
        kargs='--no-default-features'+(' --features '+','.join(base) if base else '')
        if comp:
            fn=findfn(wt,'compress_into',['block::compress','compress'])
            if fn: print(f'{c}|apic|--start-from {fn}|{kargs}||{side}')
        if decomp:
            pref=['block::decompress_safe','block::decompress','decompress'] if 'safe-decode' in fe else ['block::decompress','decompress']
            fn=findfn(wt,'decompress_into',pref)
            if fn: print(f'{c}|apid|--start-from {fn}|{kargs}||{side}')
        if frame and 'frame' in fe:
            print(f'{c}|apif|--start-from lz4_flex::frame|--no-default-features --features '+','.join(base+['frame'])+f'||{side}')
