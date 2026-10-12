#!/usr/bin/env python3
"""Add observation only around the frozen MiBench compiler adapter."""
import hashlib,json,os,subprocess,sys
from pathlib import Path

out=Path(os.environ['LAYOUT_OBSERVATION']);out.mkdir(parents=True,exist_ok=True)
record=out/str(os.getpid())
args=sys.argv[1:]
link=not any(a in args for a in ['-c','-S','-E','-M','-MM','--version','-version'])
observed=args+(['-Wl,-Map='+str(record.with_suffix('.map'))] if link else [])
env=os.environ|{'COMPCERT_LAYOUT_METRICS':str(record.with_suffix('.linear.json'))}
p=subprocess.run([sys.executable,str(Path(__file__).resolve().with_name('cc-mibench.py')),*observed],env=env)
sources={str(Path(a).resolve()):hashlib.sha256(Path(a).read_bytes()).hexdigest() for a in args if a.endswith('.c') and Path(a).is_file()}
record.with_suffix('.json').write_text(json.dumps(dict(cwd=str(Path.cwd()),args=args,link=link,returncode=p.returncode,sources_sha256=sources),indent=2)+'\n')
sys.exit(p.returncode)
