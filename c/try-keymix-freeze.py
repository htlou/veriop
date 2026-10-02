#!/usr/bin/env python3
"""Try separated key mixing with a frozen-value guard and original fallback."""
import argparse,hashlib,json,re,subprocess,time
from pathlib import Path
from check import ROOT,FLAGS,accepted,verify_artifacts
p=argparse.ArgumentParser()
p.add_argument('--timeout',type=int,default=30)
p.add_argument('--identity',action='store_true',help='First prove the guarded original mixing expression.')
a=p.parse_args()
verify_artifacts()
label='xxhash_keymix_freeze_identity' if a.identity else 'xxhash_keymix_freeze'
out=ROOT/'results/search'/label
out.mkdir(exist_ok=True)
assert not (out/'trial.json').exists(), 'Preserve prior evidence.'
(out/'old.ll').write_bytes((ROOT/'build/ir/xxhash_old.ll').read_bytes())
source=out/'old.ll'
(out/Path(__file__).name).write_bytes(Path(__file__).read_bytes())
text=(out/'old.ll').read_text()
text,count=re.subn(r'^define [^\n]*@target_(?:1to3|9to16)\([^\n]*\{\n.*?^}', '',text,flags=re.M|re.S)
assert count==2
for data,key,mix,result in [(27,23,32,33),(66,62,71,72)]:
    before=f'  %{result} = mul i64 %{mix}, -6939452855193903323'
    assert text.count(before)==1
    lines=[f'  %km.data = freeze i64 %{data}',f'  %km.key = freeze i64 %{key}']
    for term in ['data','key']:
        for rotate in [49,24]:
            lines.append(f'  %km.{term}{rotate} = call i64 @llvm.fshl.i64(i64 %km.{term}, i64 %km.{term}, i64 {rotate})')
        lines.extend([f'  %km.{term}.rot = xor i64 %km.{term}49, %km.{term}24',f'  %km.{term}.mix = xor i64 %km.{term}.rot, %km.{term}'])
    lines.extend(['  %km.fast = xor i64 %km.data.mix, %km.key.mix',
                  f'  %km.same.data = icmp eq i64 %{data}, %km.data',
                  f'  %km.same.key = icmp eq i64 %{key}, %km.key',
                  '  %km.guard = and i1 %km.same.data, %km.same.key',
                  f'  %km.value = select i1 %km.guard, i64 %km.fast, i64 %{mix}',
                  f'  %{result} = mul i64 %km.value, -6939452855193903323'])
    if a.identity:
        start=next(i for i,s in enumerate(lines) if s.startswith('  %km.fast ='))
        lines[2:start+1]=[
            '  %km.h = xor i64 %km.key, %km.data',
            '  %km.r49 = call i64 @llvm.fshl.i64(i64 %km.h, i64 %km.h, i64 49)',
            '  %km.r24 = call i64 @llvm.fshl.i64(i64 %km.h, i64 %km.h, i64 24)',
            '  %km.rot = xor i64 %km.r49, %km.r24',
            '  %km.fast = xor i64 %km.rot, %km.h']
    text=text.replace(before,'\n'.join(lines))
(out/'new.ll').write_text(text)
subprocess.run(['opt','-passes=verify','-disable-output',str(out/'new.ll')],check=True)
checker=ROOT/'build/alive2/alive-tv'
cmd=[str(checker),'--bidirectional','--always-verify','--fail-src-ub',f'--smt-to={a.timeout*1000}','--time-verify',str(source),str(out/'new.ll')]
start=time.monotonic()
with (out/'proof.log').open('w') as log:
    proc=subprocess.run(cmd,stdout=log,stderr=subprocess.STDOUT)
log=(out/'proof.log').read_text()
ok=proc.returncode==0 and accepted(log,2) and log.count('These functions seem to be equivalent!')==2
record=dict(name=label,accepted=ok,functions=['target_4to8','target_0to16'],proof=cmd,seconds=time.monotonic()-start,checker_sha256=hashlib.sha256(checker.read_bytes()).hexdigest(),ir_transform=['python',str(Path(__file__).resolve()),'--timeout',str(a.timeout)])
if a.identity:
    record['ir_transform'].append('--identity')
if ok:
    native=['clang',*FLAGS,'-c',str(out/'new.ll'),'-o',str(out/'new.o')]
    subprocess.run(native,check=True)
    record['native']=native
record['sha256']={p.name:hashlib.sha256(p.read_bytes()).hexdigest() for p in out.iterdir() if p.is_file()}
(out/'trial.json').write_text(json.dumps(record,indent=2)+'\n')
print('PASS' if ok else 'REJECTED',label,round(record['seconds'],3),flush=True)
