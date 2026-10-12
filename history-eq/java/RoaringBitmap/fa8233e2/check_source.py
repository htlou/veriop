#!/usr/bin/env python3
"""Lock the ordered-writer branch proof to exact historical Java objects."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

case = Path(__file__).resolve().parent
root = case.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
commit = "fa8233e235bd778fe576d086af7b6f08f066abdd"
base = "roaringbitmap/src/main/java/org/roaringbitmap/"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}

def git(*args):
    return subprocess.run(["git", "-C", str(repo), *args], capture_output=True,
                          check=True, env=env).stdout

blobs = {}
sources = {}
for side, rev in (("old", commit + "^"), ("new", commit)):
    for name in ("SparseOrderedWriter.java", "Util.java", "RoaringBitmap.java"):
        path = base + name
        oid = git("rev-parse", f"{rev}:{path}").decode().strip()
        data = git("cat-file", "blob", oid)
        assert hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest() == oid
        if name == "SparseOrderedWriter.java":
            saved = case / side / name
            saved.parent.mkdir(exist_ok=True)
            saved.write_bytes(data)
        blobs[f"{side}/{name}"] = oid
        sources[f"{side}/{name}"] = data.decode()

old = sources["old/SparseOrderedWriter.java"]
new = sources["new/SparseOrderedWriter.java"]
assert "if (Util.compareUnsigned(key, currentKey) < 0) {\n        throw new IllegalStateException(\"Must write in ascending key order\");" in old
assert "if (Util.compareUnsigned(key, currentKey) < 0) {\n        underlying.add(value);\n        return;" in new
assert "currentKey = key;" in old and "currentKey = key;" in new
assert blobs["old/Util.java"] == blobs["new/Util.java"]
assert blobs["old/RoaringBitmap.java"] == blobs["new/RoaringBitmap.java"]
util = sources["old/Util.java"]
assert "return (short) (x >>> 16);" in util
assert "return toIntUnsigned(a) - toIntUnsigned(b);" in util
assert "return value & 0xFFFF;" in util or "return x & 0xFFFF;" in util
assert "public void add(final int x)" in sources["old/RoaringBitmap.java"]
assert (1 >> 16) == 0 and (65536 >> 16) == 1

tree = git("ls-tree", "-r", commit, "roaringbitmap/src/main/java").decode()
missing = []
for line in tree.splitlines():
    left, path = line.split("\t", 1)
    if path.endswith(".java") and subprocess.run(
        ["git", "-C", str(repo), "cat-file", "-e", left.split()[2]],
        capture_output=True, env=env).returncode:
        missing.append(path)
assert len(missing) == 6

log = (case / "key.log").read_text()
assert "Number of goals remaining open: 0" in log and "Proved" in log
result = {
    "commit": commit, "blobs": blobs, "checker": "KeY 3.0.0",
    "key_model_sha256": hashlib.sha256((case / "SparseBranch.java").read_bytes()).hexdigest(),
    "local_branch": "old throws IllegalStateException; new calls underlying.add(value) and returns when key < currentKey",
    "proved_state": "currentKey=1, value=1, Util.highbits(value)=0, unsigned key comparison 0<1",
    "open_goals": 0, "whole_commit_verdict": "UNKNOWN",
    "missing_historical_java_blobs": missing,
    "limit": "KeY branch projection does not prove that the complete historical new add call returns or that the state is reached by a valid public call; six Java source blobs are unavailable locally",
}
(case / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print("exact historical branch mapped; KeY proved conditional branch difference")
