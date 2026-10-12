#!/usr/bin/env python3
"""Source-lock four identical historical x86 loop rewrites and run Z3."""

import hashlib
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/s2n-bignum"
z3 = root / "benchmarks/tools/kuiper-package/inst/lib/fstar/z3-4.13.3/bin/z3"
parent = "4803c2b474bf653fdf6207fafdcd908a8461538e"
child = "d1ef8cfa08845e4150f5b0a707a3b49f03f13055"
hashes = {
    "old": "13901ee5c59f357a945b3ca1f66f6864e8ea011a8deef3174ad1e3b00dd880ad",
    "new": "1839f598ae58d7de277d87e8160fad5daacd8c7cbd590d568a2b93577fd6520f",
}
paths = [f"x86/curve25519/curve25519_x25519{suffix}.S"
         for suffix in ("", "_alt", "base", "base_alt")]
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
assert subprocess.check_output(["git", "-C", str(repo), "rev-parse", child + "^"],
                               env=env).decode().strip() == parent

for path in paths:
    for side, rev in (("old", parent), ("new", child)):
        source = subprocess.check_output(["git", "-C", str(repo), "show", f"{rev}:{path}"],
                                         env=env)
        start = source.index(b"innerloop:")
        end = source.index(b"        jne     innerloop", start) + len(b"        jne     innerloop")
        assert hashlib.sha256(source[start:end]).hexdigest() == hashes[side], (path, side)
    print("source matched:", path)

result = subprocess.run([str(z3), str(here / "live-registers.smt2")],
                        capture_output=True, text=True, check=True)
assert result.stdout.strip() == "unsat", result.stdout + result.stderr
print("Z3: live registers and loop decision equal for every 64-bit input")
