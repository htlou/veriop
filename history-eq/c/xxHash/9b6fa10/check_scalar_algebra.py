#!/usr/bin/env python3
"""Check the source loop's eight-lane update algebra for both XXH3 widths."""

import hashlib
from pathlib import Path
import subprocess


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/xxHash"
z3 = root / "benchmarks/tools/kuiper-package/inst/lib/fstar/z3-4.13.3/bin/z3"
oids = {"old": "a66489ba6401632bf03bbf773740f7f56da8f7b7",
        "new": "9b662ae7ebdb112aa3627dc8ee5e7bb90ad4c256"}


def add(x: str, y: str) -> str:
    return f"(bvadd {x} {y})"


for side, oid in oids.items():
    data = (here / side / "xxh3.h").read_bytes()
    assert hashlib.sha1(f"blob {len(data)}\0".encode() + data).hexdigest() == oid
    rev = "9b6fa10^:xxh3.h" if side == "old" else "9b6fa10:xxh3.h"
    actual = subprocess.check_output(["git", "-C", str(repo), "rev-parse", rev],
                                     env={"GIT_NO_LAZY_FETCH": "1"}).decode().strip()
    assert actual == oid

old_src = (here / "old/xxh3.h").read_text()
new_src = (here / "new/xxh3.h").read_text()
assert "for (i=0; i < ACC_NB; i+=2)" in old_src
assert "for (i=0; i < ACC_NB; i++)" in new_src
assert "xacc[i ^ 1] += data_val" in new_src
assert "xacc[i+1] += in1" in old_src
assert "#define ACC_NB (STRIPE_LEN / sizeof(U64))" in old_src
assert "#define STRIPE_LEN 64" in old_src

for width in (64, 128, "negative"):
    old = [f"a{i}" for i in range(8)]
    new = old.copy()
    for i in range(0, 8, 2):
        old[i] = add(add(old[i], f"p{i}"), f"d{i if width == 64 else i + 1}")
        old[i + 1] = add(add(old[i + 1], f"p{i + 1}"), f"d{i + 1 if width == 64 else i}")
    for i in range(8):
        target = i if width in (64, "negative") else i ^ 1
        new[target] = add(new[target], f"d{i}")
        new[i] = add(new[i], f"p{i}")
    lines = ["(set-logic QF_BV)"]
    lines += [f"(declare-fun {kind}{i} () (_ BitVec 64))"
              for kind in "adp" for i in range(8)]
    lines += ["(assert (or " + " ".join(f"(not (= {x} {y}))" for x, y in zip(old, new)) + "))",
              "(check-sat)"]
    query = here / f"scalar-{width}.smt2"
    query.write_text("\n".join(lines) + "\n")
    result = subprocess.check_output([str(z3), str(query)], text=True).strip()
    expected = "sat" if width == "negative" else "unsat"
    assert result == expected, (width, result)
    (here / f"scalar-{width}.log").write_text(result + "\n")
    print(width, result)
