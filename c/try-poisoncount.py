#!/usr/bin/env python3
"""Expose shift validity separately while preserving the original poison domain."""
import hashlib,json,re,subprocess,time
from pathlib import Path
from check import ROOT,FLAGS,accepted,verify_artifacts,verify_trial
verify_artifacts()
parent=ROOT/'results/search/libdivide_hybrid'
assert verify_trial(parent)['accepted']
out=ROOT/'results/search/libdivide_poisoncount'
out.mkdir(exist_ok=True)
assert not (out/'trial.json').exists(), 'Preserve prior evidence.'
(out/'old.ll').write_bytes((ROOT/'build/ir/libdivide_old.ll').read_bytes())
(out/'before.ll').write_bytes((parent/'new.ll').read_bytes())
(out/Path(__file__).name).write_bytes(Path(__file__).read_bytes())
text=(out/'before.ll').read_text()
pattern=r'^  %(\d+) = lshr i(32|64) (%\d+), (%\d+)$'
def replace(m):
    result,bits,value,amount=m.groups()
    prefix=f'%pc{result}'
    return '\n'.join([
        f'  {prefix}.valid = icmp ult i{bits} {amount}, {bits}',
        f'  {prefix}.low = and i8 %2, {int(bits)-1}',
        f'  {prefix}.count = zext i8 {prefix}.low to i{bits}',
        f'  {prefix}.shift = lshr i{bits} {value}, {prefix}.count',
        f'  %{result} = select i1 {prefix}.valid, i{bits} {prefix}.shift, i{bits} poison'])
text,count=re.subn(pattern,replace,text,flags=re.M)
assert count==4
(out/'new.ll').write_text(text)
subprocess.run(['opt','-passes=verify','-disable-output',str(out/'new.ll')],check=True)
checker=ROOT/'build/alive2/alive-tv'
cmd=[str(checker),'--bidirectional','--always-verify','--fail-src-ub','--smt-to=30000','--time-verify',str(out/'old.ll'),str(out/'new.ll')]
start=time.monotonic()
with (out/'proof.log').open('w') as log:
    proc=subprocess.run(cmd,stdout=log,stderr=subprocess.STDOUT)
log=(out/'proof.log').read_text()
ok=proc.returncode==0 and accepted(log,2) and log.count('These functions seem to be equivalent!')==2
report=dict(name='libdivide_poisoncount',accepted=ok,functions=['target_u32','target_u64'],source_trial=str(parent),ir_transform=['python',str(Path(__file__).resolve())],proof=cmd,seconds=time.monotonic()-start,checker_sha256=hashlib.sha256(checker.read_bytes()).hexdigest())
if ok:
    native=['clang',*FLAGS,'-c',str(out/'new.ll'),'-o',str(out/'new.o')]
    subprocess.run(native,check=True)
    report['native']=native
report['sha256']={p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in out.iterdir() if p.is_file()}
(out/'trial.json').write_text(json.dumps(report,indent=2)+'\n')
print('PASS' if ok else 'REJECTED',report['name'],round(report['seconds'],3),flush=True)
