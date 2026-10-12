#!/usr/bin/env python3
"""Materialize both historical core/buffer Java source trees from Git objects."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/RoaringBitmap"
commit = "b5b4af69b5b136c2f65955d0101bcce9b4798b1d"
base = "RoaringBitmap/src/main/java/"
paths = [base + "org/roaringbitmap/RunContainer.java",
         base + "org/roaringbitmap/buffer/MappeableRunContainer.java"]
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


names = git("diff", "--name-only", commit + "^", commit).decode().splitlines()
assert names == paths + ["jmh/src/jmh/java/org/roaringbitmap/runcontainer/GetCardinalityMappeableContainerBenchmark.java"]
diff = git("diff", commit + "^", commit, "--", *paths)
saved = here / "source.diff"
if saved.exists():
    assert saved.read_bytes() == diff
else:
    saved.write_bytes(diff)

manifest = {"commit": commit, "scope": "RoaringBitmap core and buffer production Java files", "sides": {}}
for revision, side in ((commit + "^", "old"), (commit, "new")):
    all_files = git("ls-tree", "-r", "--name-only", revision, "--", base).decode().splitlines()
    files = [f for f in all_files if f.endswith(".java") and "/art/" not in f
             and not f.endswith("/Roaring64Bitmap.java")
             and not f.endswith("/HighLowContainer.java")]
    dest = Path("/tmp") / f"rb-b5-{side}"
    rows = []
    for name in files:
        data = git("show", f"{revision}:{name}")
        target = dest / "src" / name[len(base):]
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_bytes(data)
        rows.append({"path": name, "sha256": hashlib.sha256(data).hexdigest()})
    shim_path = "shims/src/main/java/org/roaringbitmap/ArraysShim.java"
    shim = git("show", f"{revision}:{shim_path}")
    shim_target = dest / "src/org/roaringbitmap/ArraysShim.java"
    shim_target.write_bytes(shim)
    rows.append({"path": shim_path, "sha256": hashlib.sha256(shim).hexdigest()})
    (dest / "sources.txt").write_text("".join(str(dest / "src" / name[len(base):]) + "\n" for name in files)
                                          + str(shim_target) + "\n")
    for path in paths:
        data = git("show", f"{revision}:{path}")
        snapshot = here / (Path(path).stem + f".{side}.txt")
        if snapshot.exists():
            assert snapshot.read_bytes() == data
        else:
            snapshot.write_bytes(data)
    manifest["sides"][side] = {"revision": revision, "file_count": len(rows), "files": rows}

old_run = (here / "RunContainer.old.txt").read_text()
new_run = (here / "RunContainer.new.txt").read_text()
old_map = (here / "MappeableRunContainer.old.txt").read_text()
new_map = (here / "MappeableRunContainer.new.txt").read_text()
assert "return valueslength[2 * index + 1];" in old_run
assert "return valueslength.get(2 * index + 1);" in old_map
assert "for (int k = 0; k < nbrruns; ++k)" in old_run
assert "for (int k = 1; k < nbrruns * 2; k += 2)" in new_run
assert "for (int k = 1; k < limit; k += 2)" in new_map

(here / "source_manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
print("Exact historical core/buffer production trees materialized:",
      manifest["sides"]["old"]["file_count"], "old and",
      manifest["sides"]["new"]["file_count"], "new Java files")
