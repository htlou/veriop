"""Exercise the historical ArrayContainer.andNot implementations on bounded inputs."""

import hashlib
import json
import os
from pathlib import Path
import subprocess
import tempfile

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
java = root / "benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java"
javac = java.with_name("javac")
parent = "6830ffe34ad6befdbb61a43fb2766479a3b2e829"
child = "7a4df65d930d15d89d385af81a11c80b4133c5e6"
prefix = "roaringbitmap/src/main/java/"
target = "org/roaringbitmap/ArrayContainer.java"
fallbacks = {
    "org/roaringbitmap/BitmapContainer.java": "8514347d",
    "org/roaringbitmap/buffer/MappeableBitmapContainer.java": "8514347d",
}
skipped = {
    "org/roaringbitmap/RoaringArray.java",
    "org/roaringbitmap/buffer/BufferBitSetUtil.java",
    "org/roaringbitmap/buffer/BufferFastAggregation.java",
    "org/roaringbitmap/buffer/PointableRoaringArray.java",
    "org/roaringbitmap/longlong/Roaring64NavigableMap.java",
}
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(("git", "-C", str(repo), *args), env=env)


paths = [prefix + rel for rel in (
    "org/roaringbitmap/ArrayContainer.java", "org/roaringbitmap/Util.java",
    "org/roaringbitmap/buffer/BufferUtil.java",
    "org/roaringbitmap/buffer/MappeableArrayContainer.java")]
diff = git("diff", parent, child, "--", *paths)
assert diff == (here.parent / "source-screening/7a4df65d.source.diff").read_bytes()
result = {"parent": parent, "child": child,
          "source_diff_sha256": hashlib.sha256(diff).hexdigest(), "target_blobs": {},
          "fallback_blobs": {}, "runs": {}}
with tempfile.TemporaryDirectory(prefix="veriop-roaring-7a4-") as temporary:
    temp = Path(temporary)
    for label, revision in (("old", parent), ("new", child)):
        source = temp / label
        classes = temp / (label + "-classes")
        classes.mkdir()
        rows = git("ls-tree", "-r", revision, "--", prefix).decode().splitlines()
        missing = set()
        for row in rows:
            oid = row.split()[2]
            rel = row.split("\t", 1)[1].removeprefix(prefix)
            blob = subprocess.run(("git", "-C", str(repo), "cat-file", "blob", oid),
                                  env=env, capture_output=True)
            if blob.returncode:
                missing.add(rel)
                continue
            path = source / rel
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_bytes(blob.stdout)
            if rel == target:
                result["target_blobs"][label] = oid
        assert missing == set(fallbacks) | skipped, (label, missing)
        for rel, fallback_revision in fallbacks.items():
            fallback_path = prefix + rel
            blob = git("show", f"{fallback_revision}:{fallback_path}")
            path = source / rel
            path.parent.mkdir(parents=True, exist_ok=True)
            path.write_bytes(blob)
            result["fallback_blobs"][rel] = git(
                "rev-parse", f"{fallback_revision}:{fallback_path}").decode().strip()
        subprocess.run((str(javac), "-sourcepath", str(source), "-d", str(classes),
                        str(source / target)), check=True, capture_output=True)
        result["runs"][label] = {}
        for test in ("DiffSearch", "RandomSearch"):
            subprocess.run((str(javac), "-cp", str(classes), "-d", str(classes),
                            str(here / (test + ".java"))), check=True, capture_output=True)
            run = subprocess.run((str(java), "-XX:-UsePerfData", "-Xmx512m",
                                  "-cp", str(classes), test), check=True,
                                 capture_output=True, text=True)
            result["runs"][label][test] = run.stdout.strip()

for label in ("old", "new"):
    assert result["runs"][label] == {"DiffSearch": "PASS 65536",
                                      "RandomSearch": "PASS 20000"}
(here / "diagnostic.json").write_text(json.dumps(result, indent=2) + "\n")
print(result["runs"])
