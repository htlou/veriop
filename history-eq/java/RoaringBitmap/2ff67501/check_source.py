#!/usr/bin/env python3
"""Check the exact historical source change used by the KeY relation."""

from pathlib import Path
import os
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/RoaringBitmap"
commit = "2ff67501ff9ddf7a556f4aac229828154d889348"
base = "roaringbitmap/src/main/java/org/roaringbitmap/"
paths = [base + "RoaringArray.java", base + "buffer/MutableRoaringArray.java"]
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


changed = git("diff", "--name-only", commit + "^", commit).decode().splitlines()
assert changed == paths + [
    "roaringbitmap/src/test/java/org/roaringbitmap/RoaringArrayTest.java",
    "roaringbitmap/src/test/java/org/roaringbitmap/buffer/MutableRoaringArrayTest.java",
]

diff = git("diff", commit + "^", commit, "--", *paths)
saved_diff = here / "source.diff"
if saved_diff.exists():
    assert saved_diff.read_bytes() == diff
else:
    saved_diff.write_bytes(diff)

for revision, side in ((commit + "^", "old"), (commit, "new")):
    for path in paths:
        source = git("show", f"{revision}:{path}")
        snapshot = here / (Path(path).stem + f".{side}.txt")
        if snapshot.exists():
            assert snapshot.read_bytes() == source
        else:
            snapshot.write_bytes(source)
        text = source.decode()
        expected = "if (this.size + k >= this.keys.length)" if side == "old" else "if (this.size + k > this.keys.length)"
        assert expected in text
        assert text.count(expected) == 1

assert diff.count(b"-    if (this.size + k >= this.keys.length)") == 2
assert diff.count(b"+    if (this.size + k > this.keys.length)") == 2
print("Checked exact source of both historical extendArray methods")
