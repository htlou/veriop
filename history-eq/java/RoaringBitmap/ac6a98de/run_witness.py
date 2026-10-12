#!/usr/bin/env python3
"""Compile exact historical addOffset classes and run the empty-array witness."""

import hashlib
import json
import os
import subprocess
import tempfile
from pathlib import Path

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
jar = repo / "roaringbitmap/build/libs/roaringbitmap-1.6.24.jar"
jdk = root / "benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
revisions = {
    "old": "492061d1f118e66ee6acbc8825c3f5e1359eefb5",
    "new": "ac6a98de1126a3d523c9ed1f0ba74ac2d04e3ebe",
}
classes = {
    "": ["Container", "ArrayContainer", "BitmapContainer", "RunContainer", "Util"],
    "buffer/": ["MappeableContainer", "MappeableArrayContainer", "MappeableBitmapContainer",
                "MappeableRunContainer", "BufferUtil"],
}
expected = {
    "old": "array=return low=0 high=0\nbuffer=return low=0 high=0\n",
    "new": "array=throw NoSuchElementException\nbuffer=throw NoSuchElementException\n",
}
jar_hash = hashlib.sha256(jar.read_bytes()).hexdigest()
assert jar_hash == "940ab05878dc0b874fd375a34b625256ec9b339d6fd30a0100d37965dcfbc118"

result = {"revisions": revisions, "support_jar_sha256": jar_hash, "runs": {}}
with tempfile.TemporaryDirectory(prefix="veriop-roaring-ac6-") as temp:
    for label, rev in revisions.items():
        src = Path(temp) / label / "src/org/roaringbitmap"
        files, source_ids = [], {}
        for group, names in classes.items():
            dest = src / group
            dest.mkdir(parents=True, exist_ok=True)
            for name in names:
                path = f"RoaringBitmap/src/main/java/org/roaringbitmap/{group}{name}.java"
                oid = subprocess.check_output(
                    ["git", "-C", str(repo), "rev-parse", f"{rev}:{path}"], env=env, text=True
                ).strip()
                data = subprocess.check_output(
                    ["git", "-C", str(repo), "cat-file", "blob", oid], env=env
                )
                file = dest / f"{name}.java"
                file.write_bytes(data)
                files.append(str(file))
                source_ids[path] = oid
                if name == "Util":
                    assert (b"source.first() + offsets" in data) == (label == "new")
                if name == "BufferUtil":
                    assert (b"source.first() + offsets" in data) == (label == "new")
        out = Path(temp) / label / "classes"
        build = subprocess.run([str(jdk / "javac"), "-cp", str(jar), "-d", str(out),
                                *files, str(here / "Witness.java")], capture_output=True, text=True)
        assert build.returncode == 0, build.stderr
        run = subprocess.run([str(jdk / "java"), "-XX:-UsePerfData", "-cp", f"{out}:{jar}",
                              "org.roaringbitmap.Witness"], capture_output=True, text=True)
        assert run.returncode == 0 and run.stdout == expected[label], (run.stdout, run.stderr)
        (here / f"{label}.log").write_text(run.stdout)
        result["runs"][label] = {"source_blobs": source_ids, "stdout": run.stdout.strip()}

(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print("historical addOffset witness: parent returns two empty containers; child throws twice")
