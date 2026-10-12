"""Run the same public ior witness against both historical classes."""

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
parent = "963ae091ea91e57272ac1c5be20c1e690b3ea056"
child = "56f9b9543d2cfb8568b3348880f6fe25e304e7fa"
prefix = "roaringbitmap/src/main/java/"
target = "org/roaringbitmap/buffer/MappeableArrayContainer.java"
fallbacks = {
    "org/roaringbitmap/BitmapContainer.java": "2884f89b",
    "org/roaringbitmap/buffer/BufferUtil.java": "7a4df65d",
    "org/roaringbitmap/buffer/MappeableBitmapContainer.java": "2884f89b",
    "org/roaringbitmap/buffer/MutableRoaringArray.java": "2884f89b",
}
skipped = {
    "org/roaringbitmap/ParallelAggregation.java",
    "org/roaringbitmap/buffer/BufferFastAggregation.java",
    "org/roaringbitmap/buffer/BufferParallelAggregation.java",
    "org/roaringbitmap/buffer/PointableRoaringArray.java",
    "org/roaringbitmap/longlong/Roaring64NavigableMap.java",
}
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(("git", "-C", str(repo), *args), env=env)


paths = [prefix + "org/roaringbitmap/ArrayContainer.java", prefix + target]
diff = git("diff", parent, child, "--", *paths)
assert diff == (here.parent / "source-screening/56f9b954.source.diff").read_bytes()
result = {"parent": parent, "child": child,
          "source_diff_sha256": hashlib.sha256(diff).hexdigest(), "target_blobs": {},
          "fallback_blobs": {}, "runs": {}}
with tempfile.TemporaryDirectory(prefix="veriop-roaring-56f9-") as temporary:
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
        subprocess.run((str(javac), "-cp", str(classes), "-d", str(classes),
                        str(here / "IorWitness.java")), check=True, capture_output=True)
        run = subprocess.run((str(java), "-XX:-UsePerfData", "-cp", str(classes),
                              "IorWitness"), check=True, capture_output=True, text=True)
        result["runs"][label] = run.stdout.strip()

assert result["runs"]["old"] == (
    "supplied.position=2 cardinality=3 has1=true has2=true has3=true")
assert result["runs"]["new"] == (
    "supplied.position=1 cardinality=3 has1=true has2=true has3=true")
(here / "runtime-check.json").write_text(json.dumps(result, indent=2) + "\n")
print(result["runs"])
