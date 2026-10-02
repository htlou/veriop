"""Native check of the proved balanced lookup dispatcher, including inaccessible boundaries."""
import ctypes as C
import hashlib
import json
import mmap
from pathlib import Path
import random
import subprocess

out = Path(__file__).resolve().parent
root = out.parents[2]
import sys
sys.path.insert(0, str(root))
from check import verify_trial
record = verify_trial(out)
objects = [root / 'build/ir/xxhash_old.o', out / ('new.o' if record['accepted'] else 'length-proof/new.o')]
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
for byte in range(256):
    buf = C.create_string_buffer(rng.randbytes(256))
    buf[0] = bytes([byte])
    offset = 0 if byte % 2 else 32
    secret_bytes = bytes(buf)[offset:offset + 8]
    bitflip = int.from_bytes(secret_bytes[:4], 'little') ^ int.from_bytes(secret_bytes[4:], 'little')
    seed = (0x87275a9b - bitflip) & ((1 << 64) - 1)
    for delta in (0, 1):
        args = (C.addressof(buf), 1, C.addressof(buf) + offset, (seed + delta) & ((1 << 64) - 1))
        assert funcs[0](*args) == funcs[1](*args), (byte, delta)
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
result = dict(native_cases=17000, exhaustive_table_and_fallback_cases=512, boundary_cases=34, lengths=list(range(17)),
              object_sha256={str(p): hashlib.sha256(p.read_bytes()).hexdigest() for p in objects})
(out / 'native-check.json').write_text(json.dumps(result, indent=2) + '\n')
print(json.dumps(result, indent=2))
