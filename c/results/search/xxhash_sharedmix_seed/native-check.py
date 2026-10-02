"""Native check of the proved load rewrite, including inaccessible boundaries."""
import ctypes as C
import hashlib
import json
import mmap
from pathlib import Path
import random
import subprocess

out = Path(__file__).resolve().parent
root = out.parents[2]
assert json.loads((out / 'length-proof/summary.json').read_text())['accepted']
objects = [root / 'build/ir/xxhash_old.o', out / 'length-proof/new.o']
funcs = []
for variant, obj in zip(('old', 'new'), objects):
    so = out / f'native-{variant}.so'
    subprocess.run(['clang', '-shared', str(obj), '-o', str(so)], check=True)
    f = C.CDLL(str(so)).target_0to16
    f.argtypes = [C.c_void_p, C.c_size_t, C.c_void_p, C.c_uint64]
    f.restype = C.c_uint64
    funcs.append(f)
rng = random.Random(20261002)
for i in range(17000):
    buf = C.create_string_buffer(rng.randbytes(256))
    args = (C.addressof(buf) + rng.randrange(32), i % 17,
            C.addressof(buf) + rng.randrange(32), rng.getrandbits(64))
    assert funcs[0](*args) == funcs[1](*args), (i, args)
page = mmap.PAGESIZE
memory = mmap.mmap(-1, 3 * page, prot=mmap.PROT_READ | mmap.PROT_WRITE)
view = (C.c_char * (3 * page)).from_buffer(memory)
base = C.addressof(view)
libc = C.CDLL(None, use_errno=True)
libc.mprotect.argtypes = [C.c_void_p, C.c_size_t, C.c_int]
assert libc.mprotect(base, page, 0) == 0
assert libc.mprotect(base + 2 * page, page, 0) == 0
for length in range(17):
    for ptr in (base + page, base + 2 * page - length):
        args = (ptr if length else None, length, base + 2 * page - 72, 42)
        assert funcs[0](*args) == funcs[1](*args)
assert libc.mprotect(base, 3 * page, mmap.PROT_READ | mmap.PROT_WRITE) == 0
del view
memory.close()
result = dict(native_cases=17000, boundary_cases=34, lengths=list(range(17)),
              object_sha256={str(p): hashlib.sha256(p.read_bytes()).hexdigest() for p in objects})
(out / 'native-check.json').write_text(json.dumps(result, indent=2) + '\n')
print(json.dumps(result, indent=2))
