#!/usr/bin/env python3
"""Audit the saved local proof against exact source fragments and tool logs."""

from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
subprocess.run(["python3", str(here / "prepare.py")], check=True)
subprocess.run(["python3", str(here / "make_numeric_lemmas.py")], check=True)
subprocess.run(["python3", str(here / "make_accumulate_smt.py")], check=True)
old = (here / "old.cpp").read_text()
new = (here / "new.cpp").read_text()
assert "i = i * 10 + digit;" in old
for constant in ("0x3030303030303030", "0x000000FF000000FF", "0x000F424000000064", "0x0000271000000001", "0xFF00000000000000", "0x00000000000000FF"):
    assert constant in new
assert "val = byteswap(val);" in new
assert "::memcpy(chars, &val, sizeof(uint64_t));" in new
for side in ("old", "new"):
    ir = (here / f"{side}.ll").read_text()
    assert 'target datalayout = "E-' in ir
    assert 'target triple = "powerpc64-unknown-linux-gnu"' in ir
    assert "define dso_local i64 @target_is_digits" in ir
    assert "define dso_local i64 @target_parse" in ir
    assert "define dso_local i64 @target_digits_buffer" in ir
for direction in ("forward", "reverse"):
    for target in ("target_is_digits", "buffer"):
        name = f"{target}-{direction}-final.log" if target == "target_is_digits" else f"buffer-{direction}.log"
        log = (here / name).read_text()
        assert "1 correct transformations" in log
        assert "0 incorrect transformations" in log
        assert "0 failed-to-prove transformations" in log
        assert "0 Alive2 errors" in log
assert (here / "numeric-bytes-z3.log").read_text().splitlines() == ["unsat"] * 7
assert (here / "numeric-byteswap-z3.log").read_text().splitlines() == ["unsat"]
assert (here / "numeric-algebra-z3.log").read_text().splitlines() == ["unsat"]
assert (here / "numeric-decimal-z3.log").read_text().splitlines() == ["unsat"]
assert (here / "numeric-accumulate-z3.log").read_text().splitlines() == ["unsat"]
for direction in ("forward", "reverse"):
    assert "ERROR: Timeout" in (here / f"target_parse-{direction}-final.log").read_text()
print("Exact-source local big-endian predicate and numeric proofs audited; full parser remains unproved")
