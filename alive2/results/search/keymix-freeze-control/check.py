"""Unrestricted scalar controls for the frozen-value key-mixing fallback."""
import hashlib,json,subprocess
from pathlib import Path
p=Path(__file__).resolve().parent
checker=p.parents[2]/'build/alive2/alive-tv'
report={}
for name in ['good','wrong-rotate']:
    cmd=[str(checker),'--bidirectional','--always-verify','--fail-src-ub','--smt-to=10000',str(p/(name+'.ll'))]
    proc=subprocess.run(cmd,capture_output=True,text=True)
    log=proc.stdout+proc.stderr
    (p/(name+'.log')).write_text(log)
    ok=proc.returncode==0 and log.count('These functions seem to be equivalent!')==1 and 'ERROR:' not in log
    if name=='wrong-rotate': assert not ok and 'Value mismatch' in log
    report[name]=dict(command=cmd,accepted=ok,returncode=proc.returncode,timed_out='ERROR: Timeout' in log)
report['scope']='Only the linear stage; these controls do not establish full hash equivalence. No noundef assumptions or disabled undef/poison flags.'
report['checker_sha256']=hashlib.sha256(checker.read_bytes()).hexdigest()
report['sha256']={f.name:hashlib.sha256(f.read_bytes()).hexdigest() for f in p.iterdir() if f.suffix in ['.ll','.log']}
(p/'summary.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2))
