#!/usr/bin/env python3
"""Pin the exact changed Roaring64Bitmap source on both sides of the commit."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/RoaringBitmap"
commit = "600b7c47fbe0d1d235217e00ce454f10300fafdb"
path = "roaringbitmap/src/main/java/org/roaringbitmap/longlong/Roaring64Bitmap.java"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


changed = git("diff", "--name-only", commit + "^", commit).decode().splitlines()
assert changed == [path], changed
diff = git("diff", commit + "^", commit, "--", path)
old = git("show", f"{commit}^:{path}")
new = git("show", f"{commit}:{path}")
assert b"return getLongCardinality() == 0L;" in old
assert b"return highLowContainer.isEmpty();" in new
for label, source in (("old", old), ("new", new)):
    assert b"Container xorResult = container1.xor(container2);\n        result.highLowContainer.put(highKey1, xorResult);" in source
    output = here / f"Roaring64Bitmap.{label}.txt"
    if output.exists():
        assert output.read_bytes() == source
    else:
        output.write_bytes(source)
diff_file = here / "source.diff"
if diff_file.exists():
    assert diff_file.read_bytes() == diff
else:
    diff_file.write_bytes(diff)
manifest = {
    "commit": commit,
    "parent": git("rev-parse", commit + "^").decode().strip(),
    "path": path,
    "sha256": {"old": hashlib.sha256(old).hexdigest(), "new": hashlib.sha256(new).hexdigest()},
    "changed_paths": changed,
}
dependencies = [
    "roaringbitmap/src/main/java/org/roaringbitmap/Container.java",
    "roaringbitmap/src/main/java/org/roaringbitmap/RunContainer.java",
    "roaringbitmap/src/main/java/org/roaringbitmap/longlong/HighLowContainer.java",
]
manifest["unchanged_source_dependencies"] = {}
for dependency in dependencies:
    before = git("show", f"{commit}^:{dependency}")
    after = git("show", f"{commit}:{dependency}")
    assert before == after
    saved = here / (Path(dependency).stem + ".historical.txt")
    if saved.exists():
        assert saved.read_bytes() == after
    else:
        saved.write_bytes(after)
    manifest["unchanged_source_dependencies"][dependency] = hashlib.sha256(after).hexdigest()
art_base = "roaringbitmap/src/main/java/org/roaringbitmap/art/"
art_paths = git("ls-tree", "-r", "--name-only", commit, "--", art_base).decode().splitlines()
manifest["historical_art_sources"] = {}
for art_path in art_paths:
    if not art_path.endswith(".java"):
        continue
    before = git("show", f"{commit}^:{art_path}")
    after = git("show", f"{commit}:{art_path}")
    assert before == after
    saved = here / "historical-art" / Path(art_path).name
    saved.parent.mkdir(parents=True, exist_ok=True)
    if saved.exists():
        assert saved.read_bytes() == after
    else:
        saved.write_bytes(after)
    manifest["historical_art_sources"][art_path] = hashlib.sha256(after).hexdigest()
(here / "source_manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
print("Historical Roaring64Bitmap sources and only changed path verified")
