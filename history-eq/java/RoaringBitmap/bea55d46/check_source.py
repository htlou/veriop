"""Lock the ArrayContainer copy relation to the exact historical Git blobs."""

import hashlib
import os
import subprocess
from pathlib import Path


ROOT = Path(__file__).resolve().parents[4]
REPO = ROOT / "benchmarks/repos/RoaringBitmap"
COMMIT = "bea55d46dfe97c3e76d67f26a335c31014f04d77"
BASE = "RoaringBitmap/src/main/java/org/roaringbitmap/"
OIDS = {
    "ArrayContainer.java": ("0fe53625e0a966da91017587f655c99240e795eb", "095fb159c96b982e4b66adf6742c98cdd3d11d7c"),
    "BitSetUtil.java": ("a56489a3375e66e042012c5aaf77ec0f746c9e51", "58e613834376dd8f29e5d9d83db72394666d3235"),
    "BitmapContainer.java": ("c28c55eecfe03cbe0033ec4b465f264c2636d6f5", "85e9621ff2c98c3728a3ca71a4ef9ce35fd1e645"),
}
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def source(stage, name, expected):
    path = BASE + name
    oid = subprocess.check_output(["git", "-C", str(REPO), "rev-parse", f"{stage}:{path}"], env=env, text=True).strip()
    assert oid == expected, (stage, path, oid)
    data = subprocess.check_output(["git", "-C", str(REPO), "cat-file", "blob", oid], env=env)
    assert hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest() == oid
    return data.decode()


old = {name: source(COMMIT + "^", name, ids[0]) for name, ids in OIDS.items()}
new = {name: source(COMMIT, name, ids[1]) for name, ids in OIDS.items()}
assert "long[] words = new long[wordsInUse];" in old["BitSetUtil.java"]
assert "container.copyBitmapTo(words, position, length);" in old["BitSetUtil.java"]
assert "BitmapContainer container = pointer.getContainer().toBitmapContainer();" in old["BitSetUtil.java"]
assert "BitmapContainer bc = new BitmapContainer();\n    bc.loadData(this);\n    return bc;" in old["ArrayContainer.java"]
assert "this.bitmap = new long[MAX_CAPACITY / 64];" in old["BitmapContainer.java"]
assert "for (int k = 0; k < arrayContainer.cardinality; ++k)" in old["BitmapContainer.java"]
assert "bitmap[(x) / 64] |= (1L << x);" in old["BitmapContainer.java"]
assert "System.arraycopy(bitmap, 0, words, position, length);" in old["BitmapContainer.java"]
assert "for (int k = 0; k < cardinality; ++k)" in new["ArrayContainer.java"]
assert "dest[position + x/64] |= 1L << x;" in new["ArrayContainer.java"]
assert "if (container instanceof BitmapContainer)" in new["BitSetUtil.java"]
assert "container.copyBitmapTo(words, position);" in new["BitSetUtil.java"]
print("Exact parent/child Git blobs and ArrayContainer copy expressions: OK")
