#!/usr/bin/env python3
"""Run the historical orNot classes against one normal run-container input."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
import tempfile

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
jar = repo / "roaringbitmap/build/libs/roaringbitmap-1.6.24.jar"
java_bin = root / "benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin"
revisions = {
    "old": "abdd6ffb4fa3991263b8017e60cc0ff9ac2096c9",
    "new": "8dd4a5ec22531704ab834db66af89804c17fe37e",
}
classes = ("BitmapDataProvider", "ImmutableBitmapDataProvider", "Container",
           "RunContainer", "RoaringBitmap")
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


jar_hash = hashlib.sha256(jar.read_bytes()).hexdigest()
assert jar_hash == "940ab05878dc0b874fd375a34b625256ec9b339d6fd30a0100d37965dcfbc118"
diff = git("diff", "--no-ext-diff", revisions["old"], revisions["new"], "--",
           "RoaringBitmap/src/main/java/org/roaringbitmap/RoaringBitmap.java",
           "RoaringBitmap/src/main/java/org/roaringbitmap/buffer/ImmutableRoaringBitmap.java",
           "RoaringBitmap/src/main/java/org/roaringbitmap/buffer/MutableRoaringBitmap.java")
assert b".ior(key == maxKey" in diff and b"RunContainer.full();" in diff
(here / "source.diff").write_bytes(diff)

result = {"old_commit": revisions["old"], "new_commit": revisions["new"],
          "source_diff_sha256": hashlib.sha256(diff).hexdigest(),
          "support_jar_sha256": jar_hash,
          "support_scope": "historical RoaringBitmap, RunContainer, Container and two interfaces; pinned 1.6.24 jar supplies remaining classes, including unavailable exact historical RoaringArray",
          "runs": {}}
with tempfile.TemporaryDirectory(prefix="veriop-roaring-8dd4-") as tmp:
    for side, commit in revisions.items():
        src = Path(tmp) / side / "org/roaringbitmap"
        src.mkdir(parents=True)
        source_ids = {}
        for name in classes:
            path = f"RoaringBitmap/src/main/java/org/roaringbitmap/{name}.java"
            data = git("show", f"{commit}:{path}")
            (src / f"{name}.java").write_bytes(data)
            source_ids[path] = git("rev-parse", f"{commit}:{path}").decode().strip()
            body = re.sub(rb"\s+", b"", data)
            if name == "RoaringBitmap":
                branch = (b"newValues[size]=x1.highLowContainer.getContainerAtIndex(pos1).ior("
                          b"key==maxKey?RunContainer.rangeOfOnes(0,lastRun):RunContainer.full());"
                          if side == "old" else
                          b"newValues[size]=key==maxKey?x1.highLowContainer.getContainerAtIndex(pos1)"
                          b".ior(RunContainer.rangeOfOnes(0,lastRun)):RunContainer.full();")
                assert branch in body
            if name == "RunContainer":
                assert b"publicContainerior(RunContainerx)" in body
                assert b"this.nbrruns=0;" in body and b"returnthis.toBitmapIfNeeded();" in body
        out = Path(tmp) / side / "classes"
        build = subprocess.run([str(java_bin / "javac"), "-cp", str(jar), "-d", str(out),
                                *(str(src / f"{name}.java") for name in classes),
                                str(here / "Witness.java")], capture_output=True, text=True)
        assert build.returncode == 0, build.stderr
        run = subprocess.run([str(java_bin / "java"), "-XX:-UsePerfData", "-cp",
                              f"{out}:{jar}", "org.roaringbitmap.Witness"],
                             capture_output=True, text=True)
        assert run.returncode == 0, run.stderr
        (here / f"{side}.log").write_text(run.stdout)
        result["runs"][side] = {"source_blobs": source_ids, "stdout": run.stdout.strip()}

assert result["runs"]["old"]["stdout"] == "container=RunContainer before=999 input_after=65536 input_zero=true result_zero=true"
assert result["runs"]["new"]["stdout"] == "container=RunContainer before=999 input_after=999 input_zero=false result_zero=true"
(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
print("historical orNot witness: retained input differs; both results contain zero")
