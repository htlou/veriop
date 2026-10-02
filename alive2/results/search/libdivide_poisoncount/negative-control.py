"""Ensure simply masking invalid metadata is rejected by bidirectional checking."""
import hashlib,json,re,subprocess,sys
from pathlib import Path
p=Path(__file__).resolve().parent
root=p.parents[2]
sys.path.insert(0,str(root))
from check import verify_artifacts,verify_trial,accepted
verify_artifacts();verify_trial(p)
s=(p/'new.ll').read_text()
s,n=re.subn(r'select i1 %pc(\d+)\.valid, i(32|64) %pc\1\.shift, i\2 poison',lambda m:f'or i{m[2]} %pc{m[1]}.shift, 0',s)
assert n==4
bad=p/'wrong-domain.ll'
bad.write_text(s)
checker=root/'build/alive2/alive-tv'
cmd=[str(checker),'--bidirectional','--always-verify','--fail-src-ub','--smt-to=10000',str(p/'old.ll'),str(bad)]
proc=subprocess.run(cmd,capture_output=True,text=True)
log=proc.stdout+proc.stderr
(p/'wrong-domain.log').write_text(log)
equivalences=log.count('These functions seem to be equivalent!')
assert equivalences==0 and 'more poisonous' in log
report=dict(rejected=True,explicit_equivalences=equivalences,counter_summary_alone_is_insufficient=accepted(log,2),command=cmd,returncode=proc.returncode,scope='Masking alone changes the original poison domain; this negative control is never benchmarked.',checker_sha256=hashlib.sha256(checker.read_bytes()).hexdigest(),sha256={f.name:hashlib.sha256(f.read_bytes()).hexdigest() for f in [bad,p/'wrong-domain.log']})
(p/'negative-control.json').write_text(json.dumps(report,indent=2)+'\n')
print('PASS domain-broadening mutant rejected')
