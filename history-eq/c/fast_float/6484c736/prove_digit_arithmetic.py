#!/usr/bin/env python3
"""Prove the removed eight-ASCII-digit SWAR value equals scalar parsing."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

from z3 import BitVec, BitVecVal, BV2Int, Concat, Extract, LShR, Solver, UGE, ULE, ZeroExt, get_version_string, unsat

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/fast_float"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
old = subprocess.check_output(["git", "-C", str(repo), "show", "6484c736^:include/fast_float/ascii_number.h"], env=env, text=True)
new = subprocess.check_output(["git", "-C", str(repo), "show", "6484c736:include/fast_float/ascii_number.h"], env=env, text=True)
helper = old[old.index("parse_eight_digits_unrolled(uint64_t val)"):old.index("parse_eight_digits_unrolled(const char *chars)")]
assert helper in new
for expression in ("val -= 0x3030303030303030", "val = (val * 10) + (val >> 8)",
                   "0x000000FF000000FF", "0x000F424000000064", "0x0000271000000001"):
    assert expression in helper
integer_part = "while ((std::distance(p, pend) >= 8) && is_made_of_eight_digits_fast(p))"
assert integer_part in old[:old.index("end_of_integer_part")]
assert integer_part not in new[:new.index("end_of_integer_part")]
assert "i = 10 * i +" in new[:new.index("end_of_integer_part")]
assert "uint64_t(*p - '0')" in new[:new.index("end_of_integer_part")]

checks = []


def prove(name, claim, assumptions=()):
    solver = Solver()
    solver.set(timeout=10000)
    solver.add(*assumptions, claim)
    outcome = solver.check()
    (here / "digit_arithmetic" / f"{name}.smt2").write_text(solver.to_smt2())
    assert outcome == unsat, (name, outcome, solver.model() if str(outcome) == "sat" else solver.reason_unknown())
    checks.append({"name": name, "result": "unsat"})


(here / "digit_arithmetic").mkdir(exist_ok=True)
b = [BitVec(f"ascii_{i}", 8) for i in range(8)]
digits = [x - 48 for x in b]
valid = [condition for x in b for condition in (UGE(x, 48), ULE(x, 57))]
packed = Concat(*reversed(b))  # read_u64 is little-endian on this target.
shifted = packed - BitVecVal(0x3030303030303030, 64)
prove("subtract_ascii", shifted != Concat(*reversed(digits)), valid)

paired = shifted * 10 + LShR(shifted, 8)
pairs = [Extract(7, 0, ZeroExt(8, digits[2*j]) * 10 + ZeroExt(8, digits[2*j+1])) for j in range(4)]
for j, pair in enumerate(pairs):
    prove(f"pair_{j}", Extract(8*j*2+7, 8*j*2, paired) != pair, valid)
    prove(f"pair_range_{j}", UGE(pair, 100), valid)
    prove(f"pair_integer_{j}", BV2Int(pair) != 10 * BV2Int(digits[2*j]) + BV2Int(digits[2*j+1]), valid)

mask = BitVecVal(0x000000FF000000FF, 64)
prove("even_mask", (paired & mask) != ZeroExt(56, pairs[0]) + (ZeroExt(56, pairs[2]) << 32), valid)
prove("odd_mask", (LShR(paired, 16) & mask) != ZeroExt(56, pairs[1]) + (ZeroExt(56, pairs[3]) << 32), valid)

q = [BitVec(f"pair_{j}_value", 8) for j in range(4)]
range_q = [ULE(x, 99) for x in q]
r = [ZeroExt(56, x) for x in q]
weighted = (r[0] + (r[2] << 32)) * BitVecVal(0x000F424000000064, 64) + (r[1] + (r[3] << 32)) * BitVecVal(0x0000271000000001, 64)
value = r[0]*1000000 + r[1]*10000 + r[2]*100 + r[3]
low = r[0]*100 + r[1]
s = [BitVec(f"unrestricted_pair_{j}", 64) for j in range(4)]
expanded_left = (s[0] + (s[2] << 32)) * BitVecVal(0x000F424000000064, 64) + (s[1] + (s[3] << 32)) * BitVecVal(0x0000271000000001, 64)
expanded_right = s[0]*100 + s[1] + ((s[0]*1000000 + s[1]*10000 + s[2]*100 + s[3]) << 32)
prove("weighted_expansion", expanded_left != expanded_right)
prove("low_no_carry", UGE(low, 2**32), range_q)
prove("weighted_swar", Extract(31, 0, LShR(low + (value << 32), 32)) != Extract(31, 0, value), range_q)
prove("weighted_range", UGE(value, 100000000), range_q)

scalar = 0
for digit in digits:
    scalar = scalar * 10 + BV2Int(digit)
decimal_pairs = sum((10 * BV2Int(digits[2*j]) + BV2Int(digits[2*j+1])) * 10**(6-2*j) for j in range(4))
prove("decimal_place_values", decimal_pairs != scalar, valid)
prove("scalar_range", scalar >= 100000000, valid)

result = {"scope": "eight valid ASCII decimal bytes; little-endian x86-64; digit value only",
          "relation": "old parse_eight_digits_unrolled value equals new scalar eight-digit value",
          "whole_parser": "unknown", "checker": f"Z3 {get_version_string()} direct SMT, not Kuiper",
          "old_header_sha256": hashlib.sha256(old.encode()).hexdigest(),
          "new_header_sha256": hashlib.sha256(new.encode()).hexdigest(), "checks": checks}
(here / "digit_arithmetic" / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print(f"{len(checks)} digit-arithmetic queries: unsat")
