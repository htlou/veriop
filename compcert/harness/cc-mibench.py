#!/usr/bin/env python3
"""Fixed MiBench build adapter; never chooses flags by benchmark identity."""
import hashlib,json,os,re,subprocess,sys,time
from pathlib import Path
compiler=Path(os.environ['LAYOUT_CCOMP'])
args=[];removed=[]
# Freeze one CompCert optimization level and dynamic linking for every program.
# GCC -ansi is replaced by the fixed CompCert C dialect; -ffast-math is
# replaced by CompCert strict floating-point semantics. Other removed switches
# are diagnostics/debug/driver/optimization only. No source text is changed.
for arg in sys.argv[1:]:
    if (re.fullmatch(r'-O.*|-g[0-9]?',arg) or arg in ['-static','-pipe','-fomit-frame-pointer','-fexpensive-optimizations','-fstrength-reduce','-fno-strength-reduce','-funroll-loops','-finline-functions','-pedantic','-ansi','-ffast-math'] or (arg.startswith('-W') and not arg.startswith(('-Wl,','-Wp,')))):
        removed.append(arg)
    else:args.append(arg)
if args==['--version']:args=['-version']
env=os.environ.copy();env['PATH']=env['LAYOUT_REAL_PATH']
cmd=[str(compiler),'-stdlib',str(compiler.parent/'runtime'),'-O','-fall',*args]
start=time.monotonic();p=subprocess.run(cmd,env=env)
record={'cwd':str(Path.cwd()),'original_args':sys.argv[1:],'removed_flags':removed,'command':cmd,'returncode':p.returncode,'seconds':time.monotonic()-start,'sources_sha256':{str(Path(a).resolve()):hashlib.sha256(Path(a).read_bytes()).hexdigest() for a in args if a.endswith('.c') and Path(a).is_file()}}
out=Path(env['LAYOUT_CC_LOG']);out.mkdir(parents=True,exist_ok=True)
(out/f'{os.getpid()}.json').write_text(json.dumps(record,indent=2)+'\n')
sys.exit(p.returncode)
