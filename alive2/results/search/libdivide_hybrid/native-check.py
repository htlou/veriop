"""Native differential check of the proved hybrid, reusing test_pipeline's cases."""
import ctypes as C
import hashlib,json,random,subprocess,sys
from pathlib import Path
out=Path(__file__).resolve().parent
root=out.parents[2]
sys.path.insert(0,str(root))
from check import verify_artifacts,verify_trial
verify_artifacts()
assert verify_trial(out)['accepted']
objects={'libdivide_old':root/'build/ir/libdivide_old.o','libdivide_hybrid':out/'new.o'}
libs={}
for name,obj in objects.items():
    so=out/(name+'.so')
    subprocess.run(['clang','-shared',str(obj),'-o',str(so)],check=True)
    libs[name]=C.CDLL(str(so))
rng=random.Random(20261001)
report={}
for bits, typ in ((32, C.c_uint32), (64, C.c_uint64)):
    funcs = [getattr(libs[name], f"target_u{bits}") for name in ("libdivide_old", "libdivide_hybrid")]
    for f in funcs:
        f.argtypes = [typ, typ, C.c_uint8]
        f.restype = typ
    count = 0
    for i in range(25000):
        n = rng.getrandbits(bits) if i % 3 else [0, 1, 2**bits-1][i % 9 // 3]
        magic = rng.getrandbits(bits) if i % 4 else 0
        more = rng.randrange(256)
        if (magic == 0 or not more & 64) and more >= bits:
            continue  # Reference C shift is undefined for this triple.
        assert funcs[0](n, magic, more) == funcs[1](n, magic, more), (bits, n, magic, more)
        count += 1
    report[f"libdivide_u{bits}_native_cases"] = count

report['object_sha256']={name:hashlib.sha256(p.read_bytes()).hexdigest() for name,p in objects.items()}
(out/'native-check.json').write_text(json.dumps(report,indent=2)+'\n')
print(json.dumps(report,indent=2))
