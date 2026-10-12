#!/usr/bin/env python3
"""Recover the exact missing parent builders.rs using its Git blob ID."""

import hashlib
import os
from pathlib import Path
import subprocess


here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/regex"
commit = "930770bb8b4811b80a9cfbd0237d1f225e7c7c20"
path = "src/builders.rs"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def oid(data: bytes) -> str:
    return hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()


child = subprocess.check_output(["git", "-C", str(repo), "show", f"{commit}:{path}"], env=env)
assert child.count(b".which_captures(WhichCaptures::None)") == 2
parent = child.replace(b".which_captures(WhichCaptures::None)", b".which_captures(WhichCaptures::Implicit)")
for side, revision, data in (("old", commit + "^", parent), ("new", commit, child)):
    expected = subprocess.check_output(
        ["git", "-C", str(repo), "rev-parse", f"{revision}:{path}"],
        env=env, text=True,
    ).strip()
    assert oid(data) == expected, (side, expected, oid(data))
    target = here / f"builders.{side}.rs"
    if target.exists():
        assert target.read_bytes() == data
    else:
        target.write_bytes(data)
    print(side, expected)
