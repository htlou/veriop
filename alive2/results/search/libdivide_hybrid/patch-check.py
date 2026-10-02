"""Create an upstream-applicable patch and prove its compiled wrappers."""
import difflib,hashlib,json,re,subprocess,sys
from pathlib import Path
out=Path(__file__).resolve().parent
root=out.parents[2]
sys.path.insert(0,str(root))
from check import FLAGS,accepted,verify_artifacts,verify_trial
verify_artifacts()
assert verify_trial(out)['accepted']
original=(root/'repos/libdivide/libdivide.h').read_text()
header=original
candidate=(out/'libdivide_hybrid.c').read_text()
for bits in (32,64):
    body=re.search(r'uint'+str(bits)+r'_t target_u'+str(bits)+r'\([^\n]+\) \{\n(.*?)^}',candidate,re.M|re.S).group(1)
    body=re.sub(r'\bn\b','numer',body)
    pattern=r'(static LIBDIVIDE_INLINE uint'+str(bits)+r'_t libdivide_u'+str(bits)+r'_do_raw\(uint'+str(bits)+r'_t numer, uint'+str(bits)+r'_t magic, uint8_t more\) \{\n).*?^}'
    header,count=re.subn(pattern,lambda m:m.group(1)+body+'}',header,flags=re.M|re.S)
    assert count==1
patch=''.join(difflib.unified_diff(original.splitlines(True),header.splitlines(True),fromfile='a/libdivide.h',tofile='b/libdivide.h'))
patchfile=root/'patches/libdivide-hybrid.patch'
patchfile.write_text(patch)
subprocess.run(['git','-C',str(root/'repos/libdivide'),'apply','--check',str(patchfile)],check=True)
(out/'libdivide.h').write_text(header)
wrapper=out/'patched-wrappers.c'
wrapper.write_bytes((root/'experiments/libdivide_old.c').read_bytes())
ll=out/'patched-wrappers.ll'
compile=['clang',*FLAGS,'-I',str(out),'-S','-emit-llvm',str(wrapper),'-o',str(ll)]
subprocess.run(compile,check=True)
proof=[str(root/'build/alive2/alive-tv'),'--bidirectional','--always-verify','--fail-src-ub','--smt-to=30000',str(out/'old.ll'),str(ll)]
proc=subprocess.run(proof,capture_output=True,text=True)
log=proc.stdout+proc.stderr
(out/'patch-proof.log').write_text(log)
ok=proc.returncode==0 and accepted(log,2) and log.count('These functions seem to be equivalent!')==2
report=dict(accepted=ok,compile=compile,proof=proof,patch_applies_cleanly=True,sha256={str(p):hashlib.sha256(p.read_bytes()).hexdigest() for p in [patchfile,out/'libdivide.h',wrapper,ll,out/'patch-proof.log']})
(out/'patch-proof.json').write_text(json.dumps(report,indent=2)+'\n')
assert ok
print('PASS upstream patch applies cleanly and both compiled wrappers are equivalent')
