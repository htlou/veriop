#!/usr/bin/env python3
"""Negative proof controls and native differential checks, including page boundaries."""
import ctypes as C
import json
import mmap
import random
import subprocess
from check import ROOT, FLAGS, accepted

out = ROOT / "build/tests"
out.mkdir(parents=True, exist_ok=True)
results = ROOT / "results/tests"
results.mkdir(parents=True, exist_ok=True)
rng = random.Random(20261001)
report = {}

for project, func, expression in [
    ("libdivide", "target_u32", "libdivide_u32_do_raw(n, magic, more)"),
    ("xxhash", "target_1to3", "XXH3_len_##NAME##_64b(input, len, secret, seed)")]:
    src = (ROOT / f"experiments/{project}_old.c").read_text()
    assert expression in src
    mutant = out / f"{project}_wrong.c"
    mutant.write_text(src.replace(expression, f"({expression}) ^ 1"))
    ll = mutant.with_suffix(".ll")
    subprocess.run(["clang", *FLAGS, "-I", str(ROOT / f"repos/{'xxHash' if project == 'xxhash' else project}"),
                    "-S", "-emit-llvm", str(mutant), "-o", str(ll)], check=True)
    proc = subprocess.run([str(ROOT / "build/alive2/alive-tv"), f"--func={func}", "--smt-to=30000",
                           str(ROOT / f"build/ir/{project}_old.ll"), str(ll)],
                          capture_output=True, text=True, timeout=90)
    log = proc.stdout + proc.stderr
    (results / f"{project}_wrong.log").write_text(log)
    assert "1 incorrect transformations" in log and not accepted(log, 1), log
    report[f"{project}_wrong_rejected"] = True

libs = {}
for name in ("libdivide_old", "libdivide_select", "xxhash_old", "xxhash_dispatch"):
    so = out / f"{name}.so"
    subprocess.run(["clang", "-shared", str(ROOT / f"build/ir/{name}.o"), "-o", str(so)], check=True)
    libs[name] = C.CDLL(str(so))

for bits, typ in ((32, C.c_uint32), (64, C.c_uint64)):
    funcs = [getattr(libs[name], f"target_u{bits}") for name in ("libdivide_old", "libdivide_select")]
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

old = libs['xxhash_old']
new = libs['xxhash_dispatch']
functions = [getattr(old, 'target_' + suffix) for suffix in ('0to16', '1to3', '4to8', '9to16')]
functions.append(new.target_0to16)
for f in functions:
    f.argtypes = [C.c_void_p, C.c_size_t, C.c_void_p, C.c_uint64]
    f.restype = C.c_uint64
for i in range(10000):
    buf = C.create_string_buffer(rng.randbytes(256))
    length = i % 17
    ptr = C.addressof(buf) + rng.randrange(32)
    secret = C.addressof(buf) + rng.randrange(32)  # Includes aliasing and unaligned pointers.
    seed = rng.getrandbits(64)
    expect = old.target_0to16(ptr, length, secret, seed)
    assert new.target_0to16(ptr, length, secret, seed) == expect
    if length:
        f = functions[1 if length < 4 else 2 if length < 9 else 3]
        assert f(ptr, length, secret, seed) == expect
report['xxhash_native_cases'] = 10000

page = mmap.PAGESIZE
memory = mmap.mmap(-1, page * 2, prot=mmap.PROT_READ | mmap.PROT_WRITE)
view = (C.c_char * (page * 2)).from_buffer(memory)
base = C.addressof(view)
libc = C.CDLL(None, use_errno=True)
libc.mprotect.argtypes = [C.c_void_p, C.c_size_t, C.c_int]
assert libc.mprotect(base + page, page, 0) == 0
for length in range(17):
    # Exactly len accessible input bytes; the next page is inaccessible.
    ptr = base + page - length if length else None
    secret = base + page - 72
    assert old.target_0to16(ptr, length, secret, 42) == new.target_0to16(ptr, length, secret, 42)
assert libc.mprotect(base + page, page, mmap.PROT_READ | mmap.PROT_WRITE) == 0
del view
memory.close()
report['xxhash_page_boundary_lengths'] = list(range(17))
(results / 'summary.json').write_text(json.dumps(report, indent=2) + '\n')
print(json.dumps(report, indent=2))
