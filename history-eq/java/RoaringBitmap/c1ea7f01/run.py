#!/usr/bin/env python3
"""Execute exact historical Container.iorNot classes on one valid counterexample."""
import hashlib
import json
import os
from pathlib import Path
import subprocess
import tempfile

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
jar = repo / "roaringbitmap/build/libs/roaringbitmap-1.6.24.jar"
jdk = root / "benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin"
commit = "c1ea7f01ad0a443082e3db8c0e65b9005940c76a"
manifest = json.loads((here.parent / "source-screening/source_manifest.json").read_text())
parent = manifest["commits"][commit]["parent"]
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}

def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)

diff = git("diff", "--no-ext-diff", parent, commit, "--",
           "RoaringBitmap/src/main/java/", "roaringbitmap/src/main/java/")
assert hashlib.sha256(diff).hexdigest() == manifest["commits"][commit]["diff_sha256"]
assert diff == (here.parent / "source-screening/c1ea7f01.source.diff").read_bytes()

result = {"parent": parent, "child": commit,
          "fallback_jar_sha256": hashlib.sha256(jar.read_bytes()).hexdigest(),
          "source_blobs": {}, "observed": {}}
with tempfile.TemporaryDirectory(prefix="roaring-c1ea-") as temp:
    for label, rev in (("parent", parent), ("child", commit)):
        base = Path(temp) / label
        source = base / "src/org/roaringbitmap"
        classes = base / "classes"
        source.mkdir(parents=True)
        classes.mkdir()
        files = []
        result["source_blobs"][label] = {}
        for name in ("Container", "ArrayContainer", "RunContainer", "BitmapContainer"):
            path = f"RoaringBitmap/src/main/java/org/roaringbitmap/{name}.java"
            body = git("show", f"{rev}:{path}")
            target = source / f"{name}.java"
            target.write_bytes(body)
            files.append(str(target))
            result["source_blobs"][label][name] = git("rev-parse", f"{rev}:{path}").decode().strip()
        subprocess.run([str(jdk / "javac"), "-cp", str(jar), "-d", str(classes),
                        *files, str(here / "Witness.java")], check=True, capture_output=True)
        result["observed"][label] = subprocess.check_output(
            [str(jdk / "java"), "-cp", f"{classes}:{jar}", "Witness"], text=True).strip()

assert result["observed"] == {
    "parent": "contains10=false cardinality=5",
    "child": "contains10=true cardinality=6",
}, result["observed"]
(here / "witness.json").write_text(json.dumps(result, indent=2) + "\n")
print(result["observed"])
