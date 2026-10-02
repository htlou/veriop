"""Reject architecture mismatches before building or running benchmark binaries."""
from pathlib import Path
import hashlib,json,subprocess,sys
out=Path(__file__).resolve().parent
root=out.parents[2]
records=[]
for trial,args in [(out,[]),(out.parent/'xxhash_vecrotate',['--march','x86-64-v4'])]:
    for script,bench,extra in [('bench-candidate.py','bench-inline',['--inline']),('bench-xxhsum.py','bench-cli',[])]:
        binaries=[trial/bench/v for v in ['old','new']]
        before={str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in binaries}
        cmd=[sys.executable,str(root/script),str(trial),'--build-only',*extra,*args]
        proc=subprocess.run(cmd,capture_output=True,text=True)
        assert proc.returncode!=0 and 'Match the proved candidate architecture.' in proc.stderr
        assert before=={str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in binaries}
        records.append(dict(command=cmd,rejected=True,binaries_unchanged=True))
(out/'architecture-gate-check.json').write_text(json.dumps(records,indent=2)+'\n')
print('PASS all four architecture mismatches rejected; binaries unchanged')
