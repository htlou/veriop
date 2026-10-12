#!/usr/bin/env python3
"""Tie the bit-vector proof to the exact historical ARM macro bodies."""

import os
import re
import subprocess
from pathlib import Path

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/s2n-bignum"
z3 = root / "benchmarks/tools/kuiper-package/inst/lib/fstar/z3-4.13.3/bin/z3"
parent = "96086bb38a2041a431f696572124dd75bfc3a022"
child = "f218286ceffe931fb295d8730eb105e871de4d6c"
paths = ["arm/p256/bignum_montmul_p256_alt.S", "arm/p256/bignum_montsqr_p256_alt.S"]
expected = {
    (0, 0): ["lsl t1, d0, #32", "subs t0, d0, t1", "lsr t2, d0, #32",
             "sbc d0, d0, t2", "adds d1, d1, t1", "adcs d2, d2, t2",
             "adcs d3, d3, t0", "adc d4, d0, xzr"],
    (0, 1): ["adds d1, d1, d0, lsl #32", "lsr tmp, d0, #32",
             "adcs d2, d2, tmp", "mul tmp, d0, mc", "umulh d4, d0, mc",
             "adcs d3, d3, tmp", "adc d4, d4, xzr"],
    (1, 0): ["adds d1, d1, d0, lsl #32", "lsr t1, d0, #32",
             "adcs d2, d2, t1", "mul t0, d0, mc", "umulh d4, d0, mc",
             "adcs d3, d3, t0", "adc d4, d4, xzr"],
    (1, 1): ["adds d1, d1, d0, lsl #32", "lsr tmp, d0, #32",
             "adcs d2, d2, tmp", "mul tmp, d0, mc", "umulh d4, d0, mc",
             "adcs d3, d3, tmp", "adc d4, d4, xzr"],
}

env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
for i, path in enumerate(paths):
    for j, rev in enumerate((parent, child)):
        source = subprocess.check_output(
            ["git", "-C", str(repo), "show", f"{rev}:{path}"], env=env, text=True
        )
        macro = source.split("#define montreds(", 1)[1].split("\n\n", 1)[0]
        lines = [re.sub(r"\s+", " ", line.strip(" \\;")).strip()
                 for line in macro.splitlines()[1:]]
        instructions = [line for line in lines if line and not line.startswith("/*")]
        assert instructions == expected[i, j], (path, rev, instructions)
        if "mul" in " ".join(instructions):
            assert "mov     mc, #0xFFFFFFFF00000001" in source or \
                   "mov mc, 0xFFFFFFFF00000001" in source
        print(f"source matched: {rev[:8]} {path}")

result = subprocess.run([str(z3), str(here / "montreds.smt2")],
                        capture_output=True, text=True, check=True)
assert result.stdout.splitlines() == ["unsat", "unsat"], result.stdout + result.stderr
print("Z3: product-split and complete four-word macro output are equal for all 64-bit inputs")
