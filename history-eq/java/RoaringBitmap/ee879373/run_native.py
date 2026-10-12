#!/usr/bin/env python3
"""Run an observable reset callback against exact old/new writer sources."""

import hashlib
import json
import os
from pathlib import Path
import subprocess
from tempfile import TemporaryDirectory


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
javac = root / "benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/javac"
java = javac.with_name("java")
commit = "ee879373071c6ef94b076254b62a994bae303bbb"
path = "RoaringBitmap/src/main/java/org/roaringbitmap/"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit).decode().splitlines() == [path + "RoaringBitmapWriter.java"]
old_writer = git("show", commit + "^:" + path + "RoaringBitmapWriter.java")
new_writer = git("show", commit + ":" + path + "RoaringBitmapWriter.java")
assert old_writer.count(b"() -> createUnderlying(initialCapacity)") == 2
assert new_writer.count(b"() -> createUnderlying(capacity)") == 2
assert b"public Wizard<C, T> initialCapacity(int count)" in old_writer
assert b"protected abstract T createUnderlying(int initialCapacity)" in old_writer
old_appender = git("show", commit + "^:" + path + "ContainerAppender.java")
new_appender = git("show", commit + ":" + path + "ContainerAppender.java")
assert old_appender == new_appender
assert b"this.underlying = newUnderlying.get();" in old_appender
assert b"underlying = newUnderlying.get();" in old_appender
diff = git("diff", commit + "^", commit, "--", path + "RoaringBitmapWriter.java")
(here / "source.diff").write_bytes(diff)
result = {"commit": commit, "scope": "observed createUnderlying capacity after Wizard.get, Wizard.initialCapacity, and ContainerAppender.reset; exact writer and appender with common dependency stubs",
          "diff_sha256": hashlib.sha256(diff).hexdigest(), "sides": {}}
with TemporaryDirectory(prefix="roaring-writer-capture-") as directory:
    for side, revision in (("old", commit + "^"), ("new", commit)):
        source = Path(directory) / side / "src/org/roaringbitmap"
        source.mkdir(parents=True)
        blobs = {}
        for name in ("RoaringBitmapWriter", "ContainerAppender"):
            data = git("show", revision + ":" + path + name + ".java")
            blob = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
            assert blob == git("rev-parse", revision + ":" + path + name + ".java").decode().strip()
            (source / (name + ".java")).write_bytes(data)
            blobs[name] = blob
        for name in ("Stubs", "Observer"):
            (source / (name + ".java")).write_bytes((here / (name + ".java")).read_bytes())
        buffer = source / "buffer"
        buffer.mkdir()
        (buffer / "PackageMarker.java").write_bytes((here / "PackageMarker.java").read_bytes())
        classes = source.parents[2] / "classes"
        classes.mkdir()
        built = subprocess.run([str(javac), "-d", str(classes), *map(str, source.glob("*.java")),
                                str(buffer / "PackageMarker.java")], capture_output=True, text=True, timeout=30)
        assert built.returncode == 0, built.stderr
        observed = subprocess.run([str(java), "-cp", str(classes), "org.roaringbitmap.Observer"],
                                  capture_output=True, text=True, timeout=10)
        assert observed.returncode == 0, observed.stderr
        result["sides"][side] = {"blobs": blobs, "stdout": observed.stdout.strip()}
assert result["sides"]["old"]["blobs"]["ContainerAppender"] == result["sides"]["new"]["blobs"]["ContainerAppender"]
assert result["sides"]["old"]["stdout"] == "9"
assert result["sides"]["new"]["stdout"] == "4"
(here / "native-result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({side: data["stdout"] for side, data in result["sides"].items()}))
