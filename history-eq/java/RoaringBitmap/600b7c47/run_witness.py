#!/usr/bin/env python3
"""Run the exact historical changed class against available mixed dependencies."""

import hashlib
import json
from pathlib import Path
import shutil
import subprocess
import tempfile

here = Path(__file__).resolve().parent
root = here.parents[3]
jdk = root / "benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin"
jar = root / "benchmarks/repos/RoaringBitmap/roaringbitmap/build/libs/roaringbitmap-1.6.24.jar"


def compile_java(classpath: str, destination: Path, sources: list[Path]) -> None:
    destination.mkdir(parents=True, exist_ok=True)
    command = [str(jdk / "javac"), "-cp", classpath, "-d", str(destination)]
    command.extend(map(str, sources))
    completed = subprocess.run(command, text=True, capture_output=True)
    if completed.returncode:
        raise RuntimeError(completed.stdout + completed.stderr)


with tempfile.TemporaryDirectory(prefix="rb600b-") as tmp:
    tmp = Path(tmp)
    shared_sources = []
    for name, package in (
        ("Container", "org/roaringbitmap"),
        ("RunContainer", "org/roaringbitmap"),
        ("HighLowContainer", "org/roaringbitmap/longlong"),
    ):
        dest = tmp / "shared-src" / package / (name + ".java")
        dest.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(here / (name + ".historical.txt"), dest)
        shared_sources.append(dest)
    for source in (here / "historical-art").glob("*.java"):
        dest = tmp / "shared-src/org/roaringbitmap/art" / source.name
        dest.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(source, dest)
        shared_sources.append(dest)
    shared_classes = tmp / "shared-classes"
    compile_java(str(jar), shared_classes, shared_sources)

    side_classes = {}
    for side in ("old", "new"):
        source = tmp / side / "src/org/roaringbitmap/longlong/Roaring64Bitmap.java"
        source.parent.mkdir(parents=True, exist_ok=True)
        shutil.copyfile(here / f"Roaring64Bitmap.{side}.txt", source)
        classes = tmp / side / "classes"
        compile_java(f"{shared_classes}:{jar}", classes, [source])
        side_classes[side] = classes

    witness_classes = tmp / "witness-classes"
    compile_java(f"{side_classes['old']}:{shared_classes}:{jar}", witness_classes,
                 [here / "XorEmptyWitness.java", here / "StoredEmptyWitness.java"])
    for side in ("old", "new"):
        classpath = f"{witness_classes}:{side_classes[side]}:{shared_classes}:{jar}"
        completed = subprocess.run(
            [str(jdk / "java"), "-XX:-UsePerfData", "-Xlog:class+load=info",
             "-cp", classpath, "XorEmptyWitness"], text=True, capture_output=True
        )
        log = completed.stdout + completed.stderr
        (here / f"runtime-{side}-full.log").write_text(log)
        expected = "true" if side == "old" else "false"
        assert completed.returncode == 0, log
        assert f"singleton cardinality=0 isEmpty={expected}" in log
        assert f"range cardinality=0 isEmpty={expected}" in log
        assert "org.roaringbitmap.longlong.Roaring64Bitmap source: file:" in log
        assert f"/{side}/classes/" in log

        exact = subprocess.run(
            [str(jdk / "java"), "-XX:-UsePerfData", "-Xlog:class+load=info",
             "-cp", classpath, "StoredEmptyWitness"], text=True, capture_output=True
        )
        exact_log = exact.stdout + exact.stderr
        (here / f"stored-empty-{side}.log").write_text(exact_log)
        assert exact.returncode == 0, exact_log
        assert f"stored-empty cardinality=0 isEmpty={expected}" in exact_log
        for name in ("longlong.Roaring64Bitmap", "longlong.HighLowContainer", "RunContainer", "Container", "art.Art"):
            line = next(line for line in exact_log.splitlines() if f"org.roaringbitmap.{name} source:" in line)
            assert (f"/{side}/classes/" if name == "longlong.Roaring64Bitmap" else "/shared-classes/") in line, line

(here / "witness-setup.json").write_text(json.dumps({
    "dependency_mode": "mixed: exact historical changed class, Container, RunContainer, HighLowContainer, ART; current pinned JAR for missing historical classes",
    "jar": str(jar),
    "jar_sha256": hashlib.sha256(jar.read_bytes()).hexdigest(),
}, indent=2) + "\n")
print("Mixed-dependency public and exact-source stored-empty witnesses reproduced")
