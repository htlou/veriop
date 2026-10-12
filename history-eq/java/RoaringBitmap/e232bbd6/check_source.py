#!/usr/bin/env python3
"""Audit the exact production class and source diff for e232bbd6."""

import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/RoaringBitmap"
commit = "e232bbd642878a590367248f48ccd1a1907e5656"
path = "RoaringBitmap/src/main/java/org/roaringbitmap/longlong/IntegerUtil.java"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


for rev, side in ((commit + "^", "old"), (commit, "new")):
    data = git("show", f"{rev}:{path}")
    saved = here / f"IntegerUtil.{side}.txt"
    if saved.exists():
        assert saved.read_bytes() == data
    else:
        saved.write_bytes(data)

names = git("diff", "--name-only", commit + "^", commit).decode().splitlines()
assert names == [path, "RoaringBitmap/src/test/java/org/roaringbitmap/longlong/IntegerUtilTest.java"]
diff = git("diff", commit + "^", commit, "--", path)
saved = here / "source.diff"
if saved.exists():
    assert saved.read_bytes() == diff
else:
    saved.write_bytes(diff)

old = (here / "IntegerUtil.old.txt").read_text()
new = (here / "IntegerUtil.new.txt").read_text()
assert "bytes[pos] = bv;" in old
assert "int i = ((3 - pos) << 3);" in new
assert "v &= ~(0xFF << i);" in new
assert "v |= (bv & 0xFF) << i;" in new
print("Exact historical IntegerUtil classes and production diff match Git")
