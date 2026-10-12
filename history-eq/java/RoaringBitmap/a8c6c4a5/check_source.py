"""Lock the ordinary ArrayContainer XOR step to the historical source."""

import hashlib
import os
import subprocess
from pathlib import Path


ROOT = Path(__file__).resolve().parents[4]
REPO = ROOT / "benchmarks/repos/RoaringBitmap"
COMMIT = "a8c6c4a52cc9dbc266f9acb9c32071d287d7ad4e"
BASE = "RoaringBitmap/src/main/java/org/roaringbitmap/"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def read(revision, name, expected):
    oid = subprocess.check_output(["git", "-C", str(REPO), "rev-parse", f"{revision}:{BASE}{name}"], env=env, text=True).strip()
    assert oid == expected
    data = subprocess.check_output(["git", "-C", str(REPO), "cat-file", "blob", oid], env=env)
    assert hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest() == oid
    return data.decode()


old = read(COMMIT + "^", "ArrayContainer.java", "c3cea2c2600ddaee9b62c4c9bd1f10a3b7b0f75a")
new = read(COMMIT, "ArrayContainer.java", "9bc050034d1e891b507b23ab159ac8b63fabf095")
bitmap = read(COMMIT, "BitmapContainer.java", "02a2feeaf8445504c659bd960008c94ae7e3c973")
start = old.index("public Container xor(final ArrayContainer value2)")
end = old.index("return bc;", start)
old_xor = old[start:end]
assert old_xor.count("bc.bitmap[i] ^= (1L << v);") == 2
assert "bc.cardinality += Long.bitCount(k);" in old_xor
start = new.index("public Container xor(final ArrayContainer value2)")
end = new.index("return toBitmapContainer().ixor(value2);", start)
assert "totalCardinality > DEFAULT_MAX_SIZE" in new[start:end]
assert "BitmapContainer bc = new BitmapContainer();\n    bc.loadData(this);\n    return bc;" in new
assert "this.bitmap = new long[MAX_CAPACITY / 64];" in bitmap
assert "bitmap[(x) / 64] |= (1L << x);" in bitmap
assert "this.bitmap[index] = ba ^ mask;" in bitmap
assert "return this.toArrayContainer();" in bitmap
print("Exact XOR and conversion source blobs: OK")
