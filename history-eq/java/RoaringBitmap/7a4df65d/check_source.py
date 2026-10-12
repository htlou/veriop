#!/usr/bin/env python3
"""Tie the one-value model to the exact parent/child ArrayContainer diff."""
import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
commit = "7a4df65d930d15d89d385af81a11c80b4133c5e6"
manifest = json.loads((here.parent / "source-screening/source_manifest.json").read_text())
parent = manifest["commits"][commit]["parent"]
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}

def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)

diff = git("diff", "--no-ext-diff", parent, commit, "--", "RoaringBitmap/src/main/java/", "roaringbitmap/src/main/java/")
assert hashlib.sha256(diff).hexdigest() == manifest["commits"][commit]["diff_sha256"]
assert diff == (here.parent / "source-screening/7a4df65d.source.diff").read_bytes()
path = "roaringbitmap/src/main/java/org/roaringbitmap/ArrayContainer.java"
old = git("show", f"{parent}:{path}")
new = git("show", f"{commit}:{path}")
assert b"public Container andNot(RunContainer x)" in old
assert b"runStart = runEnd = (1 << 16) + 1" in old
assert b"if (valInt < runStart)" in old and b"else if (valInt <= runEnd)" in old
assert b"public ArrayContainer andNot(RunContainer x)" in new
assert b"if (x.numberOfRuns() == 0)" in new and b"else if (x.isFull())" in new
assert b"int firstInRun = Util.iterateUntil(content, read, cardinality, runStart)" in new
assert b"read = Util.iterateUntil(content, firstInRun, cardinality, runEnd + 1)" in new
util = git("show", f"{commit}:roaringbitmap/src/main/java/org/roaringbitmap/Util.java").replace(b"\r\n", b"\n")
assert b"while (pos < length && toIntUnsigned(array[pos]) < min) {\n      pos++;\n    }\n    return pos;" in util
run = git("show", f"{commit}:roaringbitmap/src/main/java/org/roaringbitmap/RunContainer.java").replace(b"\r\n", b"\n")
assert b"return (this.nbrruns == 1) && (this.getValue(0) == 0) && (this.getLength(0) == -1);" in run
print("exact historical ArrayContainer branches match one-value model")
