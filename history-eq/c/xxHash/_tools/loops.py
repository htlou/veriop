#!/usr/bin/env python3
"""Report which target_* functions contain natural loops (per-function, unlike the
module-wide flag in alive_check.py)."""
import re, subprocess, sys, os
ROOT='/srv/home/hantaolou/code/veriop/alive2'
env=dict(os.environ); env['PATH']=f"{ROOT}/toolchain/usr/lib/llvm-20/bin:{ROOT}/toolchain/usr/bin:"+env['PATH']
env['LD_LIBRARY_PATH']=f"{ROOT}/toolchain/usr/lib/x86_64-linux-gnu:"+env.get('LD_LIBRARY_PATH','')
for path in sys.argv[1:]:
    p=subprocess.run(['opt','-disable-output','-passes=print<loops>',path],capture_output=True,text=True,env=env)
    cur=None; res={}
    for l in (p.stdout+p.stderr).splitlines():
        m=re.search(r"for function '([\w.$]+)'",l)
        if m: cur=m.group(1); continue
        if 'Loop at depth' in l and cur: res[cur]=res.get(cur,0)+1
    print(path, 'target loops:', {k:v for k,v in res.items() if k.startswith('target_')} or 'none')
