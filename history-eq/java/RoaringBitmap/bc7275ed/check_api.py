#!/usr/bin/env python3
"""Check binary compatibility of the exact public iterator rename."""

import hashlib
import json
import os
from pathlib import Path
import subprocess
import tempfile

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
jdk = root / "benchmarks/tools/java17/jdk-17.0.20.1+1/bin"
child = "bc7275ed96161131e046f44533919d301de2fcd3"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


parent = git("rev-parse", child + "^").decode().strip()
manifest = json.loads((here.parent / "source-screening/source_manifest.json").read_text())
diff = here.parent / "source-screening/bc7275ed.source.diff"
assert manifest["commits"][child]["parent"] == parent
assert hashlib.sha256(diff.read_bytes()).hexdigest() == manifest["commits"][child]["diff_sha256"]
assert diff.read_bytes() == git("diff", "--no-ext-diff", parent, child, "--",
                                "RoaringBitmap/src/main/java/", "roaringbitmap/src/main/java/")
old_path = "RoaringBitmap/src/main/java/org/roaringbitmap/ShortIterator.java"
new_path = "RoaringBitmap/src/main/java/org/roaringbitmap/CharIterator.java"
assert git("cat-file", "-t", f"{parent}:{old_path}").strip() == b"blob"
assert git("cat-file", "-t", f"{child}:{new_path}").strip() == b"blob"
assert subprocess.run(["git", "-C", str(repo), "cat-file", "-e", f"{child}:{old_path}"],
                      env=env, capture_output=True).returncode != 0
report = {"parent": parent, "child": child, "scope": "old binary client public iterator type",
          "sides": {}, "verdict": "NOT_EQUIV"}

with tempfile.TemporaryDirectory(prefix="veriop-roaring-bc7275-") as tmp:
    stage = Path(tmp)
    for side, rev, path in (("old", parent, old_path), ("new", child, new_path)):
        source = stage / side / "src" / "org/roaringbitmap" / Path(path).name
        source.parent.mkdir(parents=True)
        blob = git("show", f"{rev}:{path}")
        source.write_bytes(blob)
        classes = stage / side / "classes"
        classes.mkdir()
        compile_result = subprocess.run([str(jdk / "javac"), "-d", str(classes), str(source)],
                                        capture_output=True, text=True)
        assert compile_result.returncode == 0, compile_result.stderr
        report["sides"][side] = {"source_git_oid": git("rev-parse", f"{rev}:{path}").decode().strip(),
                                  "source_sha256": hashlib.sha256(blob).hexdigest()}

    client_classes = stage / "client"
    client_classes.mkdir()
    compiled_client = subprocess.run([str(jdk / "javac"), "-cp", str(stage / "old/classes"),
                                      "-d", str(client_classes), str(here / "LegacyClient.java")],
                                     capture_output=True, text=True)
    assert compiled_client.returncode == 0, compiled_client.stderr
    for side in ("old", "new"):
        cp = f"{client_classes}:{stage / side / 'classes'}"
        run = subprocess.run([str(jdk / "java"), "-XX:-UsePerfData", "-cp", cp, "LegacyClient"],
                             capture_output=True, text=True)
        report["sides"][side].update({"exit_code": run.returncode,
                                       "stdout": run.stdout.strip(), "stderr": run.stderr.strip()})

assert report["sides"]["old"]["exit_code"] == 0
assert report["sides"]["old"]["stdout"] == "org.roaringbitmap.ShortIterator"
assert report["sides"]["new"]["exit_code"] != 0
assert "NoClassDefFoundError: org/roaringbitmap/ShortIterator" in report["sides"]["new"]["stderr"]
(here / "result.json").write_text(json.dumps(report, indent=2) + "\n")
print("old client loads before and fails after: NoClassDefFoundError")
