#!/usr/bin/env python3
"""Check the historical tile scheduler's changed integer-division formulas."""

import hashlib
import json
from pathlib import Path

import z3

here = Path(__file__).resolve().parent
screening = here.parent / "source-screening"
commit = "8d454a3a9336954dae75013958dc3903ce781b66"
source = (screening / "8d454a3a.source.diff").read_bytes()
assert hashlib.sha256(source).hexdigest() == "55329a097ce9a67471ff391d199c12c505cb857b0163f8251c5f653d91943edb"
for fragment in (
    b"-        hn_idx = self._tile_idx // self.num_blocks",
    b"+        hn_idx, block_idx = self.num_block_divmod.divmod(self._tile_idx)",
    b"+        batch_idx, head_idx = self.num_head_divmod.divmod(hn_idx)",
    b"+        p = Uint32(31 + find_log2(divisor))",
    b"+        multiplier = Uint32(((cutlass.Uint64(1) << p) + divisor_u32 - 1) // divisor_u32)",
    b"+            Int32(umulhi(dividend, self.multiplier) >> self.shift_right)",
):
    assert fragment in source, fragment

# Representative positive block/head counts, including non-powers of two.
divisors = (1, 2, 3, 5, 7, 8, 12, 16, 31, 32, 64, 127, 128, 256, 1000, 65535, 2**31 - 1)
results = []
for divisor in divisors:
    dividend = z3.Int("dividend")
    if divisor == 1:
        fast = dividend  # FastDivmod.div has an explicit divisor==1 branch.
        multiplier = shift = None
    else:
        p = 31 + (divisor - 1).bit_length()  # find_log2 on positive Int32.
        multiplier = ((1 << p) + divisor - 1) // divisor
        shift = p - 32
        assert 0 <= shift <= 30 and 0 <= multiplier < 2**32
        assert (2**31 - 1) * multiplier < 2**63  # unsigned 64-bit product does not wrap.
        fast = dividend * multiplier / (1 << p)  # mul.hi.u32 then shift.
    old = dividend / divisor
    solver = z3.Solver()
    solver.set(timeout=10000)
    solver.add(dividend >= 0, dividend < 2**31, fast != old)
    verdict = solver.check()
    assert verdict == z3.unsat, (divisor, verdict, solver.reason_unknown())
    results.append({"divisor": divisor, "multiplier": multiplier, "shift": shift, "counterexample": "unsat"})

result = {
    "commit": commit,
    "source_diff_sha256": hashlib.sha256(source).hexdigest(),
    "checker": f"Z3 {z3.get_version_string()}, integer arithmetic",
    "domain": "0 <= dividend < 2^31; listed positive Int32 divisors",
    "property": "FastDivmod.div(dividend) == dividend // divisor; remainder follows as dividend - quotient*divisor",
    "scope": "local tile-index arithmetic only; not a generated CUDA kernel or whole-commit equivalence proof",
    "results": results,
}
(here / "scheduler-result.json").write_text(json.dumps(result, indent=2) + "\n")
print(f"proved {len(results)} historical scheduler divisor cases; no whole-kernel verdict")
