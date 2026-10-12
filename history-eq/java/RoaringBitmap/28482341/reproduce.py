#!/usr/bin/env python3
"""Run one witness against each exact historical RoaringBitmap source tree."""

import json
import os
import subprocess
import tempfile
from pathlib import Path

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
jdk = root / "benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
revisions = {
    "old": "443fd309998cdddf18a95677ef0fe477001349bc",
    "new": "28482341ca11a62b24bd8b30a8889aa87f266289",
}
missing_expected = {
    "RoaringBitmap/src/main/java/org/roaringbitmap/buffer/BufferBitSetUtil.java",
    "RoaringBitmap/src/main/java/org/roaringbitmap/insights/NaiveWriterRecommender.java",
}
expected = {
    "old": [
        "array_iand result=1 retained=2 retained_1=true retained_5=true same=false",
        "array_iandNot result=1 retained=2 retained_1=true retained_5=true same=false",
        "buffer_iand result=1 retained=2 retained_1=true retained_5=true same=false",
        "buffer_iandNot result=1 retained=2 retained_1=true retained_5=true same=false",
        "array_iand_empty result=0 result_0=false result_1=false retained=2",
        "array_iandNot_empty result=2 result_0=true result_1=true retained=2",
        "buffer_iand_empty result=0 result_0=false result_1=false retained=2",
        "buffer_iandNot_empty result=2 result_0=true result_1=true retained=2",
    ],
    "new": [
        "array_iand result=1 retained=1 retained_1=false retained_5=true same=true",
        "array_iandNot result=1 retained=1 retained_1=true retained_5=false same=true",
        "buffer_iand result=1 retained=1 retained_1=false retained_5=true same=true",
        "buffer_iandNot result=1 retained=1 retained_1=true retained_5=false same=true",
        "array_iand_empty result=1 result_0=true result_1=false retained=1",
        "array_iandNot_empty result=1 result_0=false result_1=true retained=1",
        "buffer_iand_empty result=1 result_0=true result_1=false retained=1",
        "buffer_iandNot_empty result=1 result_0=false result_1=true retained=1",
    ],
}

with tempfile.TemporaryDirectory(prefix="veriop-roaring-28482341-") as temp:
    for label, rev in revisions.items():
        base = Path(temp) / label
        srcroot = base / "RoaringBitmap/src/main/java"
        rows = subprocess.check_output(
            ["git", "-C", str(repo), "ls-tree", "-r", rev, "RoaringBitmap/src/main/java"],
            text=True, env=env,
        ).splitlines()
        missing = set()
        manifest = {}
        for row in rows:
            header, path = row.split("\t", 1)
            oid = header.split()[-1]
            blob = subprocess.run(["git", "-C", str(repo), "cat-file", "blob", oid],
                                  capture_output=True, env=env)
            if blob.returncode:
                missing.add(path)
                continue
            dest = base / path
            dest.parent.mkdir(parents=True, exist_ok=True)
            dest.write_bytes(blob.stdout)
            manifest[path] = oid
        assert missing == missing_expected, (label, missing)
        files = sorted(str(p) for p in srcroot.rglob("*.java") if p.name != "module-info.java")
        assert len(files) == 99, (label, len(files))
        sources = base / "sources.txt"
        sources.write_text("\n".join(files) + "\n")
        classes = base / "classes"
        subprocess.run([str(jdk / "javac"), "-d", str(classes), "@" + str(sources)],
                       check=True, capture_output=True, text=True)
        subprocess.run([str(jdk / "javac"), "-cp", str(classes), "-d", str(classes),
                        str(here / "RetainedInputWitness.java")],
                       check=True, capture_output=True, text=True)
        run = subprocess.run([str(jdk / "java"), "-XX:-UsePerfData", "-cp", str(classes),
                              "RetainedInputWitness"], check=True, capture_output=True, text=True)
        assert run.stdout.splitlines() == expected[label], (label, run.stdout, run.stderr)
        (here / f"{label}.log").write_text(
            f"revision={rev}\nproduction_sources={len(files)}\nmissing_unreferenced={len(missing)}\n"
            + run.stdout
        )
        changed = [p for p in manifest if p.endswith("/ArrayContainer.java") or
                   p.endswith("/MappeableArrayContainer.java")]
        (here / f"{label}-source-ids.json").write_text(
            json.dumps({p: manifest[p] for p in changed}, indent=2) + "\n"
        )
        print(f"{label}: {len(files)} historical production classes compiled; eight witness paths passed")
