"""Bind the capacity-constructor relation to exact RoaringBitmap history."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "benchmarks/repos/RoaringBitmap"
PARENT = "952f8ce7aef1510eff07a3f325a5f8093151d993"
CHILD = "423c1e8b7e96333218429ded9a3ab5df17a5bfab"
BASE = "roaringbitmap/src/main/java/org/roaringbitmap/"
ENV = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(("git", "-C", str(REPO), *args), env=ENV)


def blob(rev, path):
    return git("show", f"{rev}:{BASE}{path}")


def main():
    assert git("rev-parse", CHILD + "^").decode().strip() == PARENT
    diff = git("diff", "--no-ext-diff", PARENT, CHILD, "--", BASE)
    assert diff == (HERE.parent / "source-screening/423c1e8b.source.diff").read_bytes()

    ordinary = "RoaringBitmap.java"
    mutable = "buffer/MutableRoaringBitmap.java"
    old_o, new_o = blob(PARENT, ordinary), blob(CHILD, ordinary)
    old_m, new_m = blob(PARENT, mutable), blob(CHILD, mutable)
    assert b"RoaringArray array = new RoaringArray(hbLast - hbStart + 1);" in old_o
    assert b"RoaringBitmap bitmap = new RoaringBitmap(array);" in old_o
    assert b"RoaringBitmap bitmap = new RoaringBitmap(hbLast - hbStart + 1);" in new_o
    assert b"this.highLowContainer = new RoaringArray(initialCapacity);" in new_o
    assert b"MutableRoaringArray array = new MutableRoaringArray(hbLast - hbStart + 1);" in old_m
    assert b"MutableRoaringBitmap bitmap = new MutableRoaringBitmap(array);" in old_m
    assert b"MutableRoaringBitmap bitmap = new MutableRoaringBitmap(hbLast - hbStart + 1);" in new_m
    assert b"this(new MutableRoaringArray(initialCapacity));" in new_m

    dependencies = {}
    for path, array_type in (("RoaringArray.java", b"Container"),
                             ("buffer/MutableRoaringArray.java", b"MappeableContainer")):
        old, new = blob(PARENT, path), blob(CHILD, path)
        assert old == new
        assert b"new char[initialCapacity]" in new
        assert b"new " + array_type + b"[initialCapacity]" in new
        assert b"[initialCapacity], 0);" in new
        dependencies[path] = git("rev-parse", f"{CHILD}:{BASE}{path}").decode().strip()

    report = {"parent": PARENT, "child": CHILD,
              "diff_sha256": hashlib.sha256(diff).hexdigest(),
              "unchanged_array_constructor_oids": dependencies,
              "production_sha256": {
                  ordinary: {"old": hashlib.sha256(old_o).hexdigest(),
                             "new": hashlib.sha256(new_o).hexdigest()},
                  mutable: {"old": hashlib.sha256(old_m).hexdigest(),
                            "new": hashlib.sha256(new_m).hexdigest()}}}
    (HERE / "source-audit.json").write_text(json.dumps(report, indent=2) + "\n")
    print("historical diff and both forwarding constructors match the KeY relation")


if __name__ == "__main__":
    main()
