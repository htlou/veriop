"""Bind the select-rank lemma to both historical bitmap-container edits."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
child = "7270c92cd19f7144f2d4ef170c7b43bd88faf003"
parent = "87a0309ac879596ca8b3a6358bb2f116d0c56e07"
pairs = {
    "RoaringBitmap/src/main/java/org/roaringbitmap/BitmapContainer.java": (
        "52cd96a4afbdfcfc63fa60a50403aaa258103324",
        "face0de9c334a3396a30a7c09952c05ba599253d"),
    "RoaringBitmap/src/main/java/org/roaringbitmap/buffer/MappeableBitmapContainer.java": (
        "d9fd3669340441541d5b4333f320dc2427a7a215",
        "18de4116b74a020015e8d604116ead2878ae9de0"),
}
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(("git", "-C", str(repo), *args), env=env)


def method(source, name):
    start = source.index(f"public char {name}(int j) {{")
    depth = 0
    for end in range(source.index("{", start), len(source)):
        depth += (source[end] == "{") - (source[end] == "}")
        if depth == 0:
            return source[start:end + 1]
    raise AssertionError(name)


assert git("rev-parse", child + "^").decode().strip() == parent
changed = git("diff-tree", "--no-commit-id", "--no-renames", "-r", "--raw", parent, child,
              "--", "RoaringBitmap/src/main/java/org/roaringbitmap")
report = {"parent": parent, "child": child, "files": {}}
for path, (old_oid, new_oid) in pairs.items():
    assert old_oid.encode() in changed and new_oid.encode() in changed and path.encode() in changed
    old = git("cat-file", "blob", old_oid).decode()
    new = git("cat-file", "blob", new_oid).decode()
    original = method(old, "select")
    assert original.replace("public char select(int j)", "public char selectOneSide(int j)") == method(new, "selectOneSide")
    optimized = method(new, "select")
    assert "cardinality >>> 1 < j && j < cardinality" in optimized
    assert "int leftover = cardinality - j;" in optimized
    assert "bits >= leftover" in optimized and "bits - leftover" in optimized
    report["files"][path] = {"old_oid": old_oid, "new_oid": new_oid,
                              "old_sha256": hashlib.sha256(old.encode()).hexdigest(),
                              "new_sha256": hashlib.sha256(new.encode()).hexdigest()}
manifest = json.loads((here.parent / "source-screening/source_manifest.json").read_text())
diff = (here.parent / "source-screening/7270c92c.source.diff").read_bytes()
assert hashlib.sha256(diff).hexdigest() == manifest["commits"][child]["diff_sha256"]
report["diff_sha256"] = hashlib.sha256(diff).hexdigest()
(here / "source-audit.json").write_text(json.dumps(report, indent=2) + "\n")
print("both original select bodies and the reverse-rank rewrite match historical blobs")
