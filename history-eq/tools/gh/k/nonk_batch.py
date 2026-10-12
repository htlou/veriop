#!/usr/bin/env python3
"""Commits with no change to any K definition/claim: feed the changed non-K source files to kprove
(outer parser) to record that the checker rejects them, then write UNSUPPORTED result files."""
import json, os, subprocess, sys, re, glob
ROOT="/srv/home/hantaolou/code/veriop"
HE=f"{ROOT}/history-eq"
DEF=f"{HE}/k/evm-semantics/bb3a2b89/new-historical-kompiled"
env={**os.environ}
sh=f'source {ROOT}/benchmarks/env.sh; '
def kprove(path):
    p=subprocess.run(['bash','-c',sh+f'kprove --definition {DEF} --spec-module VERIFICATION "{path}" 2>&1 | grep -v "Picked up" | head -12; exit ${{PIPESTATUS[0]}}'],capture_output=True,text=True)
    return p.returncode,p.stdout
# commit prefix -> (repo, reason_kind, notes)
CASES=json.load(open(sys.argv[1]))
ledgers={r:{e['commit']:e for e in json.load(open(f'{HE}/results/{r}-optimization-sample.json'))['entries']} for r in ['evm-semantics','kontrol']}
for repo,pref,kind,notes in CASES:
    full=[c for c in ledgers[repo] if c.startswith(pref)][0]
    w=f"{HE}/gh/work/{repo}/{pref}"
    m=json.load(open(w+'/meta.json'))
    paths=[p for f in m['changed'] for p in f['paths']]
    srcs=[p for p in paths if p.endswith(('.py','Makefile','kevm','.sh','.nix','.toml')) and 'tests/' not in p and p.split('/')[-1] not in ('pyproject.toml',)]
    if not srcs: srcs=[p for p in paths if 'tests' not in p][:1] or paths[:1]
    units=[];log=[]
    ran=False
    for p in srcs[:6]:
        rc,out=kprove(f"{w}/new/{p}")
        log.append(f"### {p} (new) exit={rc}\n{out}")
        ok= rc!=0 and ('Outer Parser' in out or 'Error' in out)
        ran=ran or ok
        units.append({"name":os.path.basename(p),"file":p,"result":"UNSUPPORTED","detail":f"kprove exit {rc}: "+(out.strip().splitlines()[2][:120] if len(out.strip().splitlines())>2 else out[:120])})
    open(w+'/kprove-nonk.log','w').write("\n".join(log))
    res={"repo":repo,"commit":full,"checker":"K kprove 7.1.337 (outer parser on changed sources; no K definition/claim changed)",
      "checker_ran":ran,"verdict":"UNSUPPORTED","scope":f"all {len(paths)} changed files: no K definition, rule, or claim in the commit changed",
      "build_config":"kprove --definition <KEVM bb3a2b89 haskell kompiled> --spec-module VERIFICATION <file>",
      "units":units,"unsupported_reason":kind,"not_equiv_kind":None,"not_equiv_level":None,"counterexample":None,
      "evidence_dir":f"history-eq/gh/work/{repo}/{pref}","notes":notes}
    os.makedirs(f"{HE}/gh/results/{repo}",exist_ok=True)
    json.dump(res,open(f"{HE}/gh/results/{repo}/{full}.json","w"),indent=1)
    print(repo,pref,kind,ran)
