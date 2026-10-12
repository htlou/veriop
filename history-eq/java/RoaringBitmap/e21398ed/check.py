#!/usr/bin/env python3
"""Audit historical bitmapOfUnordered sources and try both Java builds."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
java = root / "benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/javac"
child = "e21398ed25e38c54dcb351413d0f8fde42398f15"
prefix = "roaringbitmap/src/main/java/"
stage = Path("/tmp/veriop-roaring-e213")
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


parent = git("rev-parse", child + "^").decode().strip()
diff = git("diff", parent, child, "--", prefix)
assert diff == (here.parent / "source-screening/e21398ed.source.diff").read_bytes()
changed = set(git("diff", "--name-only", parent, child, "--", prefix).decode().splitlines())
report = {"parent": parent, "child": child,
          "source_diff_sha256": hashlib.sha256(diff).hexdigest(), "sides": {}}
for side, rev in (("old", parent), ("new", child)):
    lines = git("ls-tree", "-r", rev, prefix).decode().splitlines()
    sources = []
    exact, fallback = {}, {}
    for line in lines:
        oid = line.split()[2]
        path = line.split("\t", 1)[1]
        dest = stage / side / path.removeprefix(prefix)
        dest.parent.mkdir(parents=True, exist_ok=True)
        blob = subprocess.run(["git", "-C", str(repo), "cat-file", "blob", oid],
                              env=env, capture_output=True)
        if blob.returncode == 0:
            data = blob.stdout
            exact[path] = oid
        else:
            data = (repo / path).read_bytes()
            fallback[path] = {"missing_git_oid": oid,
                              "fallback_sha256": hashlib.sha256(data).hexdigest()}
        dest.write_bytes(data)
        sources.append(str(dest))
    assert not changed.intersection(fallback), "a changed historical source blob is missing"
    classes = stage / f"{side}-classes"
    classes.mkdir(parents=True, exist_ok=True)
    with (here / f"compile-{side}.log").open("w") as log:
        build = subprocess.run([str(java), "-J-XX:-UsePerfData", "-Xmaxerrs", "5",
                                "-d", str(classes), *sources],
                               stdout=log, stderr=subprocess.STDOUT)
    report["sides"][side] = {"exact_count": len(exact), "fallback": fallback,
                             "javac_exit": build.returncode}

assert report["sides"]["old"]["javac_exit"] != 0
assert report["sides"]["new"]["javac_exit"] != 0
assert len(report["sides"]["old"]["fallback"]) == 5
assert report["sides"]["old"]["fallback"] == report["sides"]["new"]["fallback"]
(here / "source-and-build.json").write_text(json.dumps(report, indent=2) + "\n")
print("exact changed sources audited; both historical builds blocked by five missing support blobs")
