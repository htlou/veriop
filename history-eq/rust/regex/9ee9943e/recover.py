#!/usr/bin/env python3
"""Recover the exact missing parent dfa.rs from the available child blob."""

import hashlib
import os
from pathlib import Path
import subprocess


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/regex"
commit = "9ee9943ec81c560978a51159d08ef670bb6d5d37"
path = "src/dfa.rs"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def oid(data: bytes) -> str:
    return hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()


child = subprocess.check_output(["git", "-C", str(repo), "show", f"{commit}:{path}"], env=env)
parent = child.replace(b"insts.dfa_size_limit == 0 || ", b"")
assert child.count(b"insts.dfa_size_limit == 0 || ") == 1
for side, revision, data in (("old", commit + "^", parent), ("new", commit, child)):
    expected = subprocess.check_output(
        ["git", "-C", str(repo), "rev-parse", f"{revision}:{path}"],
        env=env, text=True,
    ).strip()
    assert oid(data) == expected, (side, expected, oid(data))
    target = here / f"dfa.{side}.rs"
    if target.exists():
        assert target.read_bytes() == data
    else:
        target.write_bytes(data)
    print(side, expected)
