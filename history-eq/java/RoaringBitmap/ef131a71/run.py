#!/usr/bin/env python3
"""Compile exact changed historical classes and exhaust the finite bitmap domain."""

import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
java = root / "benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin"
support = repo / "roaringbitmap/build/libs/roaringbitmap-1.6.24.jar"
assert hashlib.sha256(support.read_bytes()).hexdigest() == (
    "940ab05878dc0b874fd375a34b625256ec9b339d6fd30a0100d37965dcfbc118"
)
child = "ef131a71e0aa6cd67b4ea649c957b1cd4c52b141"
parent = "e140aee9358b1e33be6e5b0cd8f043daef05299a"
paths = [
    f"roaringbitmap/src/main/java/org/roaringbitmap/{name}.java"
    for name in ("RoaringArray", "RoaringBitmap", "buffer/MutableRoaringArray",
                 "buffer/MutableRoaringBitmap")
]
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
assert subprocess.check_output(["git", "-C", str(repo), "rev-parse", child + "^"],
                               env=env).decode().strip() == parent
changed = subprocess.check_output(
    ["git", "-C", str(repo), "diff", "--name-only", parent, child, "--",
     "roaringbitmap/src/main/java"], env=env, text=True).splitlines()
assert set(changed) == set(paths), changed

stage = Path("/tmp/veriop-roaring-ef131a71")
if stage.exists():
    shutil.rmtree(stage)
stage.mkdir()
manifest = {"parent": parent, "child": child, "support_jar_sha256":
            hashlib.sha256(support.read_bytes()).hexdigest(), "sources": {}}

for side, rev in (("old", parent), ("new", child)):
    files = []
    for path in paths:
        data = subprocess.check_output(["git", "-C", str(repo), "show", f"{rev}:{path}"], env=env)
        oid = subprocess.check_output(["git", "-C", str(repo), "rev-parse", f"{rev}:{path}"],
                                      env=env, text=True).strip()
        dst = stage / side / path.removeprefix("roaringbitmap/src/main/java/")
        dst.parent.mkdir(parents=True, exist_ok=True)
        dst.write_bytes(data)
        files.append(str(dst))
        manifest["sources"].setdefault(side, {})[path] = oid
    classes = stage / f"{side}-classes"
    classes.mkdir()
    with (here / f"compile-{side}.log").open("w") as log:
        subprocess.run([str(java / "javac"), "-cp", str(support), "-d", str(classes), *files],
                       stdout=log, stderr=subprocess.STDOUT, check=True)

witness_classes = stage / "witness-classes"
witness_classes.mkdir()
with (here / "compile-witness.log").open("w") as log:
    subprocess.run([str(java / "javac"), "-cp", f"{stage / 'old-classes'}:{support}",
                    "-d", str(witness_classes), str(here / "MergeDomainCheck.java"),
                    str(here / "BufferMergeDomainCheck.java")],
                   stdout=log, stderr=subprocess.STDOUT, check=True)

for side in ("old", "new"):
    classes = stage / f"{side}-classes"
    for kind, cls in (("ordinary", "org.roaringbitmap.MergeDomainCheck"),
                      ("buffer", "org.roaringbitmap.buffer.BufferMergeDomainCheck")):
        log_path = here / f"{kind}-{side}.log"
        with log_path.open("w") as log:
            subprocess.run([str(java / "java"), "-XX:-UsePerfData", "-Xmx256m", "-cp",
                            f"{witness_classes}:{classes}:{support}", cls],
                           stdout=log, stderr=subprocess.STDOUT, check=True)
        output = log_path.read_text()
        assert f"loaded=file:{classes}/" in output and "checked=24576" in output, output

(here / "source-manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
print("exact changed classes loaded; ordinary and buffer OR/XOR/lazy-OR domains passed on both sides")
