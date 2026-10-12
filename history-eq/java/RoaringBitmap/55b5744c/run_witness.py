#!/usr/bin/env python3
"""Compile exact historical Writer interfaces and run one old binary client."""

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
    "old": "91c85472cbdcbf45138f89da0666f9200e8ccad2",
    "new": "55b5744c7553293aa163624952bd7434c98baef3",
}
path = "roaringbitmap/src/main/java/org/roaringbitmap/RoaringBitmapWriter.java"
results = {"revisions": revisions, "source_blobs": {}, "runs": {}}
log = []
with tempfile.TemporaryDirectory(prefix="veriop-roaring-writer-") as temp:
    temp = Path(temp)
    for label, rev in revisions.items():
        oid = subprocess.check_output(
            ["git", "-C", str(repo), "rev-parse", f"{rev}:{path}"],
            env={**os.environ, "GIT_NO_LAZY_FETCH": "1"}, text=True,
        ).strip()
        source = subprocess.check_output(
            ["git", "-C", str(repo), "cat-file", "blob", oid],
            env={**os.environ, "GIT_NO_LAZY_FETCH": "1"}, text=True,
        )
        results["source_blobs"][label] = oid
        # javac needs a filename matching the public interface.
        source_dir = temp / label
        source_dir.mkdir()
        writer = source_dir / "RoaringBitmapWriter.java"
        writer.write_text(source)
        classes = source_dir / "classes"
        classes.mkdir()
        compile_writer = subprocess.run(
            [str(java_home / "bin/javac"), "-cp", str(jar), "-d", str(classes),
             str(writer), str(here / "Support.java")],
            capture_output=True, text=True,
        )
        assert compile_writer.returncode == 0, compile_writer.stderr
        if label == "old":
            assert "public Wizard<C, T> optimiseForBitmaps()" in source
            client_classes = temp / "client"
            client_classes.mkdir()
            compile_client = subprocess.run(
                [str(java_home / "bin/javac"), "-cp", f"{classes}:{jar}",
                 "-d", str(client_classes), str(here / "Witness.java")],
                capture_output=True, text=True,
            )
            assert compile_client.returncode == 0, compile_client.stderr
        else:
            assert "public Wizard<C, T> optimiseForBitmaps()" not in source
        run = subprocess.run(
            [str(java_home / "bin/java"), "-cp", f"{classes}:{client_classes}:{jar}", "Witness"],
            capture_output=True, text=True,
        )
        results["runs"][label] = {"exit_code": run.returncode,
                                   "stdout": run.stdout.strip(),
                                   "stderr": run.stderr.strip()}
        log.append(f"{label}: exit {run.returncode}; stdout={run.stdout.strip()!r}; stderr={run.stderr.strip()!r}")
    assert results["runs"]["old"]["stdout"] == "true" and results["runs"]["old"]["exit_code"] == 0
    assert "NoSuchMethodError" in results["runs"]["new"]["stderr"]

(here / "result.json").write_text(json.dumps(results, indent=2) + "\n")
(here / "check.log").write_text("\n".join(log) + "\n")
print("old binary client succeeds before and throws NoSuchMethodError after")
