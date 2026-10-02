from pathlib import Path
import hashlib,importlib.util,json,subprocess
out=Path(__file__).resolve().parent;root=out.parents[2]
spec=importlib.util.spec_from_file_location('proof_gate',root/'check.py');gate=importlib.util.module_from_spec(spec);spec.loader.exec_module(gate)
source=root/'results/search/libdivide_countmask';prior=gate.verify_trial(source)
for src,dst in [('old.ll','old.ll'),('new.ll','vector.ll'),('new.ll','new.ll')]: (out/dst).write_bytes((source/src).read_bytes())
cmd=[str(root/'build/alive2/alive-tv'),'--bidirectional','--always-verify','--fail-src-ub','--smt-to=5000',str(out/'vector.ll'),str(out/'new.ll')]
p=subprocess.run(cmd,capture_output=True,text=True);log=p.stdout+p.stderr;(out/'proof.log').write_text(log)
assert p.returncode==0 and gate.accepted(log,2) and log.count('These functions seem to be equivalent!')==2
sha=lambda f:hashlib.sha256(f.read_bytes()).hexdigest()
r=dict(name='libdivide_composition_control',accepted=True,functions=prior['functions'],proof_kind='composition',source_trial=str(source),proof=cmd,sha256={n:sha(out/n) for n in ['old.ll','vector.ll','new.ll','proof.log']})
def save(): (out/'trial.json').write_text(json.dumps(r,indent=2)+'\n')
save();gate.verify_trial(out)
original=(out/'vector.ll').read_bytes();(out/'vector.ll').write_bytes(original+b'\n');r['sha256']['vector.ll']=sha(out/'vector.ll');save()
try: gate.verify_trial(out)
except AssertionError: pass
else: raise AssertionError('Unbound intermediate accepted')
(out/'vector.ll').write_bytes(original);r['sha256']['vector.ll']=sha(out/'vector.ll');r['proof'][-2]=str(out/'old.ll');save()
try: gate.verify_trial(out)
except AssertionError: pass
else: raise AssertionError('Wrong proof input accepted')
r['proof'][-2]=str(out/'vector.ll');save();gate.verify_trial(out)
(out/'controls.json').write_text(json.dumps(dict(valid_chain=True,changed_intermediate_rejected=True,wrong_proof_input_rejected=True,benchmark_run=False),indent=2)+'\n')
print('PASS: verified chain; rejected changed intermediate and wrong proof input')
