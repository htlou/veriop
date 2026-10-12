#!/usr/bin/env python3
"""Compile exact historical aggregation classes and run an old binary client."""

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
revisions = {
    "old": "4a940d3539d8410bcbe7a05b30abf4fe2abdb086",
    "new": "f97296518a6647275cbd6101cbf68de55687a96d",
}
paths = [
    "RoaringBitmap/src/main/java/org/roaringbitmap/FastAggregation.java",
    "RoaringBitmap/src/main/java/org/roaringbitmap/buffer/BufferFastAggregation.java",
]
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
jar_hash = hashlib.sha256(jar.read_bytes()).hexdigest()
assert jar_hash == "940ab05878dc0b874fd375a34b625256ec9b339d6fd30a0100d37965dcfbc118"
result = {"revisions": revisions, "support_jar_sha256": jar_hash, "source_blobs": {}, "runs": {}}

with tempfile.TemporaryDirectory(prefix="veriop-roaring-f972-") as temp:
    temp = Path(temp)
    classes = {}
    for label, rev in revisions.items():
        files, source_ids = [], {}
        for path in paths:
            oid = subprocess.check_output(
                ["git", "-C", str(repo), "rev-parse", f"{rev}:{path}"],
                env=env, text=True,
            ).strip()
            data = subprocess.check_output(
                ["git", "-C", str(repo), "cat-file", "blob", oid], env=env
            )
            file = temp / label / "src" / path.split("src/main/java/", 1)[1]
            file.parent.mkdir(parents=True, exist_ok=True)
            file.write_bytes(data)
            files.append(str(file))
            source_ids[path] = oid
        out = temp / label / "classes"
        build = subprocess.run(
            [str(jdk / "javac"), "-cp", str(jar), "-d", str(out), *files],
            capture_output=True, text=True,
        )
        assert build.returncode == 0, build.stderr
        classes[label] = out
        result["source_blobs"][label] = source_ids

    client = temp / "client"
    build = subprocess.run(
        [str(jdk / "javac"), "-cp", f"{classes['old']}:{jar}",
         "-d", str(client), str(here / "Witness.java")],
        capture_output=True, text=True,
    )
    assert build.returncode == 0, build.stderr

    for label in revisions:
        for kind, owner in (("array", "FastAggregation"),
                            ("buffer", "BufferFastAggregation")):
            run = subprocess.run(
                [str(jdk / "java"), "-XX:-UsePerfData", "-cp",
                 f"{client}:{classes[label]}:{jar}", "Witness", kind],
                capture_output=True, text=True,
            )
            if label == "old":
                assert run.returncode == 0 and run.stdout == "true\n", (run.stdout, run.stderr)
            else:
                assert run.returncode != 0 and "NoSuchMethodError" in run.stderr \
                       and f"{owner}.workShyAnd" in run.stderr, run.stderr
            result["runs"][f"{label}-{kind}"] = {
                "exit_code": run.returncode,
                "stdout": run.stdout.strip(),
                "stderr": run.stderr.strip(),
            }
            print(f"{label} {kind}: " +
                  (run.stdout.strip() if run.returncode == 0 else run.stderr.splitlines()[0]))

(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
