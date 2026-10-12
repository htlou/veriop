#!/usr/bin/env python3
"""Match the Node16 one-line rewrite and old byte helper to historical Git."""

import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/RoaringBitmap"
commit = "1de68254774c3d1932ee025cb331f60dd4e904d0"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


paths = {
    "Node16": "RoaringBitmap/src/main/java/org/roaringbitmap/art/Node16.java",
    "LongUtils": "RoaringBitmap/src/main/java/org/roaringbitmap/longlong/LongUtils.java",
}
source = {}
for rev, side in ((commit + "^", "old"), (commit, "new")):
    for name, path in paths.items():
        data = git("show", f"{rev}:{path}")
        saved = here / f"{name}.{side}.txt"
        if saved.exists():
            assert saved.read_bytes() == data
        else:
            saved.write_bytes(data)
        source[(name, side)] = data.decode()

changed_paths = git("diff", "--name-only", commit + "^", commit).decode().splitlines()
assert changed_paths == [paths["Node16"], "jmh/src/jmh/java/org/roaringbitmap/IntermediateByteArrayBenchmark.java"]
diff = git("diff", commit + "^", commit, "--", paths["Node16"])
saved = here / "source.diff"
if saved.exists():
    assert saved.read_bytes() == diff
else:
    saved.write_bytes(diff)
assert source[("LongUtils", "old")] == source[("LongUtils", "new")]
old = source[("Node16", "old")]
new = source[("Node16", "new")]
assert "byte[] firtBytes = LongUtils.toBDBytes(currentNode16.firstV);" in old
assert "byte v = firtBytes[i];\n        int unsignedIdx = Byte.toUnsignedInt(v);" in old
assert "int unsignedIdx = Byte.toUnsignedInt((byte) (currentNode16.firstV >>> ((7 - i) << 3)));" in new
helper = source[("LongUtils", "old")]
model = (here / "Node16FirstByteRelation.java").read_text()
for i in range(8):
    shift = (7 - i) * 8
    expr = f"work[{i}] = (byte) " + ("v;" if shift == 0 else f"(v >> {shift});")
    assert expr in helper, expr
    model_expr = f"oldBytes[{i}] = (byte) " + ("firstV;" if shift == 0 else f"(firstV >> {shift});")
    assert model_expr in model, model_expr
assert "(byte) (firstV >>> ((7 - i) << 3))" in model
print("Exact old/new Node16, shared LongUtils, and production diff match Git; byte model matches source")
