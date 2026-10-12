#!/usr/bin/env python3
"""Check the eight source-matched x86 absolute-value rewrites."""

import os
import re
import subprocess
from pathlib import Path

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/s2n-bignum"
z3 = root / "benchmarks/tools/kuiper-package/inst/lib/fstar/z3-4.13.3/bin/z3"
parent = "2c8e273f92df7beffadfa29303c06d358fc7f9ad"
child = "d830e3c5b91923fd1950bb30820bc4ae8dca3aa5"
path = "x86/curve25519/bignum_inv_p25519.S"


def source(rev):
    raw = subprocess.check_output(
        ["git", "-C", str(repo), "show", f"{rev}:{path}"],
        env={**os.environ, "GIT_NO_LAZY_FETCH": "1"}, text=True,
    )
    return [re.sub(r"\s+", " ", line.strip()) for line in raw.splitlines()]


def occurrences(lines, pattern):
    return sum(lines[i:i + len(pattern)] == pattern
               for i in range(len(lines) - len(pattern) + 1))


old, new = source(parent), source(child)
for value, sign in (("r8", "r9"), ("r10", "r11"),
                    ("r12", "r13"), ("r14", "r15")):
    before = [f"mov {sign}, {value}", f"neg {value}",
              f"cmovs {value}, {sign}", f"sar {sign}, 63"]
    after = [f"mov {sign}, {value}", f"sar {sign}, 63",
             f"xor {value}, {sign}", f"sub {value}, {sign}"]
    assert occurrences(old, before) == 2, (parent, before)
    assert occurrences(new, after) == 2, (child, after)
    print(f"source matched: {value}/{sign}, twice in each historical version")

result = subprocess.run([str(z3), str(here / "abs.smt2")],
                        capture_output=True, text=True, check=True)
assert result.stdout.strip() == "unsat", result.stdout + result.stderr
print("Z3: register outputs equal for all 64-bit inputs, including INT64_MIN")
