#!/usr/bin/env python3
"""Compile complete historical ART packages and run an unchanged old client."""

import json
import os
from pathlib import Path
import subprocess
import tempfile

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
jar = repo / "roaringbitmap/build/libs/roaringbitmap-1.6.24.jar"
java_home = root / "benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64"
revisions = {
    "old": "9fde8c5a4747cefd3bf5b297475a0211f7c08b58",
    "new": "c79d0d66c2f93c56af3cf6a28c5b328f02824a8a",
}
prefix = "RoaringBitmap/src/main/java/org/roaringbitmap/art/"
results = {"revisions": revisions, "source_blobs": {}, "runs": {}}
log = []
with tempfile.TemporaryDirectory(prefix="veriop-roaring-node48-") as temp_name:
    temp = Path(temp_name)
    for label, rev in revisions.items():
        source_dir = temp / label
        source_dir.mkdir()
        paths = subprocess.check_output(
            ["git", "-C", str(repo), "ls-tree", "-r", "--name-only", rev],
            env={**os.environ, "GIT_NO_LAZY_FETCH": "1"}, text=True,
        ).splitlines()
        paths = [p for p in paths if p.startswith(prefix) and p.endswith(".java")]
        assert len(paths) == 17
        sources = []
        results["source_blobs"][label] = {}
        for path in paths:
            oid = subprocess.check_output(
                ["git", "-C", str(repo), "rev-parse", f"{rev}:{path}"],
                env={**os.environ, "GIT_NO_LAZY_FETCH": "1"}, text=True,
            ).strip()
            content = subprocess.check_output(
                ["git", "-C", str(repo), "cat-file", "blob", oid],
                env={**os.environ, "GIT_NO_LAZY_FETCH": "1"},
            )
            source = source_dir / Path(path).name
            source.write_bytes(content)
            sources.append(str(source))
            results["source_blobs"][label][path] = oid
        node48 = (source_dir / "Node48.java").read_text()
        if label == "old":
            assert "public void replaceChildren(Node[] children)" in node48
        else:
            assert "\n  void replaceChildren(Node[] children)" in node48
            assert "public void replaceChildren(Node[] children)" not in node48
        classes = source_dir / "classes"
        classes.mkdir()
        compile_package = subprocess.run(
            [str(java_home / "bin/javac"), "-cp", str(jar), "-d", str(classes), *sources],
            capture_output=True, text=True,
        )
        assert compile_package.returncode == 0, compile_package.stderr
        if label == "old":
            client_classes = temp / "client"
            client_classes.mkdir()
            compile_client = subprocess.run(
                [str(java_home / "bin/javac"), "-cp", f"{classes}:{jar}",
                 "-d", str(client_classes), str(here / "Witness.java")],
                capture_output=True, text=True,
            )
            assert compile_client.returncode == 0, compile_client.stderr
        run = subprocess.run(
            [str(java_home / "bin/java"), "-cp", f"{classes}:{client_classes}:{jar}", "Witness"],
            capture_output=True, text=True,
        )
        results["runs"][label] = {"exit_code": run.returncode,
                                   "stdout": run.stdout.strip(),
                                   "stderr": run.stderr.strip()}
        log.append(f"{label}: exit {run.returncode}; stdout={run.stdout.strip()!r}; stderr={run.stderr.strip()!r}")
    assert results["runs"]["old"]["exit_code"] == 0 and results["runs"]["old"]["stdout"] == "ok"
    assert "IllegalAccessError" in results["runs"]["new"]["stderr"]

(here / "result.json").write_text(json.dumps(results, indent=2) + "\n")
(here / "check.log").write_text("\n".join(log) + "\n")
print("old binary client succeeds before and throws IllegalAccessError after")
