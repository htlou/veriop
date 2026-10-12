"""Audit whether this historical performance commit has a same-entrypoint relation."""

import hashlib
import os
import subprocess
from pathlib import Path


ROOT = Path(__file__).resolve().parents[4]
REPO = ROOT / "benchmarks/repos/RoaringBitmap"
COMMIT = "6125ee9910d7f5f4f12d7d2e625eb499ddab4520"
PARENT = "4aa93807b9d563daca9a2e3ef954f8bd1fe89090"
BASE = "roaringbitmap/src/main/java/org/roaringbitmap/"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(REPO), *args], env=env)


def source(revision, name, expected):
    oid = git("rev-parse", f"{revision}:{BASE}{name}").decode().strip()
    assert oid == expected
    data = git("cat-file", "blob", oid)
    assert hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest() == oid
    return data.decode()


def method(text, signature):
    start = text.index(signature)
    opening = text.index("{", start)
    depth = 1
    end = opening + 1
    while depth:
        depth += (text[end] == "{") - (text[end] == "}")
        end += 1
    return text[start:end]


assert git("rev-parse", COMMIT + "^").decode().strip() == PARENT
paths = set(git("diff-tree", "--no-commit-id", "--name-only", "-r", COMMIT).decode().splitlines())
assert {p for p in paths if p.startswith(BASE)} == {BASE + n for n in ("RoaringBitmap.java", "Util.java", "OrderedWriter.java")}
old_bitmap = source(PARENT, "RoaringBitmap.java", "cd4f970e053e473cce0b8bb83dd3d230c9ed6ae6")
new_bitmap = source(COMMIT, "RoaringBitmap.java", "2d46a1f52118a803915cdfefa6e92f18b523c70c")
old_util = source(PARENT, "Util.java", "bfe64f1f378c44eebbdc5d9e9375972260ca4f95")
new_util = source(COMMIT, "Util.java", "fb4016f48faf7c84b09996a728027600c206dc86")
source(COMMIT, "OrderedWriter.java", "9bcfaf7e3b8227e850e713dcecc303ea7c89e28e")
assert subprocess.run(["git", "-C", str(REPO), "cat-file", "-e", f"{PARENT}:{BASE}OrderedWriter.java"], env=env, capture_output=True).returncode != 0
bitmap_of = "public static RoaringBitmap bitmapOf(final int... dat)"
assert method(old_bitmap, bitmap_of) == method(new_bitmap, bitmap_of)
assert "ans.add(dat);" in method(old_bitmap, bitmap_of)
old_add = method(old_bitmap, "public void add(final int... dat)")
assert "int val = dat[j];" in old_add and "dat[j] =" not in old_add
assert "bitmapOfUnordered(final int... data)" not in old_bitmap
assert "partialRadixSort(int[] data)" not in old_util
assert "partialRadixSort(data);" in method(new_bitmap, "bitmapOfUnordered(final int... data)")
assert "new OrderedWriter(bitmap)" in method(new_bitmap, "bitmapOfUnordered(final int... data)")
assert "System.arraycopy(copy, 0, data, 0, data.length);" in method(new_util, "partialRadixSort(int[] data)")
print("Exact production diff: additive APIs; original bitmapOf unchanged")
