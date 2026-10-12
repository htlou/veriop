#!/usr/bin/env python3
"""Compile exact historical LeafNodeIterator classes against an empty-ART witness."""
import hashlib
import json
import os
from pathlib import Path
import subprocess
import tempfile

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
commit = "efdf655c557c81496be5559a12792242d32fb752"
manifest = json.loads((here.parent / "source-screening/source_manifest.json").read_text())
parent = manifest["commits"][commit]["parent"]
rel = "RoaringBitmap/src/main/java/org/roaringbitmap/art/LeafNodeIterator.java"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
jdk = root / "benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin"
outputs = {}
blob_ids = {}

diff = subprocess.check_output(["git", "-C", str(repo), "diff", "--no-ext-diff", parent, commit, "--",
                                "RoaringBitmap/src/main/java/", "roaringbitmap/src/main/java/"], env=env)
assert hashlib.sha256(diff).hexdigest() == manifest["commits"][commit]["diff_sha256"]
assert diff == (here.parent / "source-screening/efdf655c.source.diff").read_bytes()

for label, rev in (("parent", parent), ("child", commit)):
    art = subprocess.check_output(["git", "-C", str(repo), "show", f"{rev}:RoaringBitmap/src/main/java/org/roaringbitmap/art/Art.java"], env=env)
    assert b"public Art() {\n    root = null;\n  }" in art
    assert b"public boolean isEmpty() {\n    return root == null;\n  }" in art
    source = subprocess.check_output(["git", "-C", str(repo), "show", f"{rev}:{rel}"], env=env)
    blob_ids[label] = subprocess.check_output(["git", "-C", str(repo), "rev-parse", f"{rev}:{rel}"], env=env, text=True).strip()
    source_path = here / label / "LeafNodeIterator.java"
    source_path.parent.mkdir(exist_ok=True)
    if source_path.exists():
        assert source_path.read_bytes() == source
    else:
        source_path.write_bytes(source)
    with tempfile.TemporaryDirectory(prefix=f"roaring-efdf-{label}-") as build:
        subprocess.run([str(jdk / "javac"), "-d", build, str(source_path),
                        str(here / "Support.java"), str(here / "Witness.java")], check=True)
        outputs[label] = subprocess.check_output([str(jdk / "java"), "-cp", build,
                                                   "org.roaringbitmap.art.Witness"], text=True).strip()

assert outputs == {"parent": "next: null", "child": "next: NoSuchElementException"}, outputs
result = {"source_blob_ids": blob_ids, "observed": outputs}
(here / "witness.json").write_text(json.dumps(result, indent=2) + "\n")
print(result)
