#!/usr/bin/env python3
"""Compile exact historical ART sources and compare public operations."""

import hashlib
import json
import os
from pathlib import Path
import subprocess
import tempfile

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
jar = root / "benchmarks/repos/RoaringBitmap/roaringbitmap/build/libs/roaringbitmap-1.6.24.jar"
jdk = root / "benchmarks/tools/java17/jdk-17.0.20.1+1/bin"
child = "9ecff9e86a85b358a435eb8ccfc33d83fa09ac91"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


parent = git("rev-parse", child + "^").decode().strip()
manifest = json.loads((here.parent / "source-screening/source_manifest.json").read_text())
diff = here.parent / "source-screening/9ecff9e8.source.diff"
assert hashlib.sha256(diff.read_bytes()).hexdigest() == manifest["commits"][child]["diff_sha256"]
assert parent == manifest["commits"][child]["parent"]
assert diff.read_bytes() == git("diff", "--no-ext-diff", parent, child, "--",
                                "RoaringBitmap/src/main/java/", "roaringbitmap/src/main/java/")
report = {"parent": parent, "child": child, "support_jar_sha256": hashlib.sha256(jar.read_bytes()).hexdigest(),
          "sides": {}, "verdict": "UNKNOWN"}

with tempfile.TemporaryDirectory(prefix="veriop-roaring-9ec-") as tmp:
    for side, rev in (("old", parent), ("new", child)):
        stage = Path(tmp) / side
        src = stage / "src"
        classes = stage / "classes"
        paths = git("ls-tree", "-r", "--name-only", rev,
                    "roaringbitmap/src/main/java/org/roaringbitmap/art").decode().splitlines()
        paths += ["roaringbitmap/src/main/java/org/roaringbitmap/ArraysShim.java",
                  "roaringbitmap/src/main/java/org/roaringbitmap/longlong/IntegerUtil.java",
                  "roaringbitmap/src/main/java/org/roaringbitmap/longlong/LongUtils.java"]
        files = []
        for path in paths:
            blob = git("show", f"{rev}:{path}")
            oid = git("rev-parse", f"{rev}:{path}").decode().strip()
            assert subprocess.check_output(["git", "hash-object", "--stdin"], input=blob).decode().strip() == oid
            target = src / path.removeprefix("roaringbitmap/src/main/java/")
            target.parent.mkdir(parents=True, exist_ok=True)
            target.write_bytes(blob)
            files.append(target)
        classes.mkdir()
        cp = f"{classes}:{jar}"
        built = subprocess.run([str(jdk / "javac"), "-cp", str(jar), "-d", str(classes),
                                *map(str, files), str(here / "ArtProbe.java")],
                               capture_output=True, text=True)
        assert built.returncode == 0, built.stderr
        run = subprocess.run([str(jdk / "java"), "-XX:-UsePerfData", "-cp", cp, "ArtProbe"],
                             capture_output=True, text=True)
        assert run.returncode == 0, run.stderr + run.stdout
        report["sides"][side] = {"historical_source_files": len(paths),
                                  "probe_output": run.stdout.strip(),
                                  "probe_stderr": run.stderr.strip()}

assert report["sides"]["old"]["probe_output"] == report["sides"]["new"]["probe_output"]
(here / "result.json").write_text(json.dumps(report, indent=2) + "\n")
print(report["sides"]["old"]["probe_output"])
