#!/usr/bin/env python3
"""Compare exact historical FastAggregation sources on observable public calls."""

import hashlib
import json
import os
from pathlib import Path
import subprocess
from tempfile import TemporaryDirectory


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
jar = repo / "roaringbitmap/build/libs/roaringbitmap-1.6.24.jar"
javac = root / "benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/javac"
java = javac.with_name("java")
commit = "b2ad9b336d07f66b103f5f64c15da88dc87424de"
path = "RoaringBitmap/src/main/java/org/roaringbitmap/FastAggregation.java"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


diff = git("diff", commit + "^", commit, "--", path)
assert b"-    if (bitmaps.length > 2) {" in diff
assert b"+    if (bitmaps.length > 10) {" in diff
assert jar.is_file()
(here / "source.diff").write_bytes(diff)
result = {"commit": commit, "verdict": "NOT_EQUIV",
          "scope": "exact historical FastAggregation.java against the same current RoaringBitmap dependency jar; public and(long[], RoaringBitmap...) with three empty inputs",
          "dependency_jar_sha256": hashlib.sha256(jar.read_bytes()).hexdigest(),
          "diff_sha256": hashlib.sha256(diff).hexdigest(), "sides": {}}
with TemporaryDirectory(prefix="roaring-fast-and-") as directory:
    for side, ref in (("old", commit + "^"), ("new", commit)):
        source = Path(directory) / side / "org/roaringbitmap/FastAggregation.java"
        source.parent.mkdir(parents=True)
        data = git("show", ref + ":" + path)
        blob = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
        assert blob == git("rev-parse", ref + ":" + path).decode().strip()
        source.write_bytes(data)
        classes = Path(directory) / side / "classes"
        classes.mkdir()
        built = subprocess.run([str(javac), "-cp", str(jar), "-d", str(classes),
                                str(source), str(here / "Observer.java")],
                               capture_output=True, text=True, timeout=30)
        assert built.returncode == 0, built.stderr
        observed = subprocess.run([str(java), "-cp", os.pathsep.join((str(classes), str(jar))),
                                   "org.roaringbitmap.Observer"], capture_output=True,
                                  text=True, timeout=10)
        assert observed.returncode == 0, observed.stderr
        result["sides"][side] = {"source_blob": blob, "stdout": observed.stdout.strip()}
assert result["sides"]["old"]["stdout"] == "empty=true,scratch=0\nshort=IllegalArgumentException"
assert result["sides"]["new"]["stdout"] == "empty=true,scratch=7\nshort=returned"
(here / "native-result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({side: data["stdout"] for side, data in result["sides"].items()}))
