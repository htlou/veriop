#!/usr/bin/env python3
"""Run a parent-compiled OrderedWriter client against both historical types."""

import json
import os
import subprocess
import tempfile
from pathlib import Path

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
jdk = root / "benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin"
revisions = {
    "old": "7a5b3440de141a64d318362f58055ccea52e1f33",
    "new": "09591e17a2c4277a0db72dfa32b5b7e3a498a3c8",
}
path = "roaringbitmap/src/main/java/org/roaringbitmap/OrderedWriter.java"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
result = {"revisions": revisions, "source_blobs": {}, "runs": {}}

with tempfile.TemporaryDirectory(prefix="veriop-roaring-0959-") as temp:
    temp = Path(temp)
    classes = {}
    for label, rev in revisions.items():
        oid = subprocess.check_output(
            ["git", "-C", str(repo), "rev-parse", f"{rev}:{path}"],
            env=env, text=True,
        ).strip()
        data = subprocess.check_output(
            ["git", "-C", str(repo), "cat-file", "blob", oid], env=env
        )
        source = temp / label / "OrderedWriter.java"
        source.parent.mkdir(parents=True, exist_ok=True)
        source.write_bytes(data)
        out = temp / label / "classes"
        files = [str(source)]
        if label == "old":
            files.insert(0, str(here / "Support.java"))
        build = subprocess.run(
            [str(jdk / "javac"), "-d", str(out), *files],
            capture_output=True, text=True,
        )
        assert build.returncode == 0, build.stderr
        classes[label] = out
        result["source_blobs"][label] = oid

    client = temp / "client"
    build = subprocess.run(
        [str(jdk / "javac"), "-cp", str(classes["old"]),
         "-d", str(client), str(here / "Witness.java")],
        capture_output=True, text=True,
    )
    assert build.returncode == 0, build.stderr

    for label in revisions:
        run = subprocess.run(
            [str(jdk / "java"), "-XX:-UsePerfData", "-cp",
             f"{client}:{classes[label]}:{classes['old']}", "Witness"],
            capture_output=True, text=True,
        )
        if label == "old":
            assert run.returncode == 0 and run.stdout == "true\n", (run.stdout, run.stderr)
        else:
            assert run.returncode != 0 and \
                   "InstantiationError: org.roaringbitmap.OrderedWriter" in run.stderr, run.stderr
        result["runs"][label] = {
            "exit_code": run.returncode,
            "stdout": run.stdout.strip(),
            "stderr": run.stderr.strip(),
        }
        print(f"{label}: " +
              (run.stdout.strip() if run.returncode == 0 else run.stderr.splitlines()[0]))

(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
