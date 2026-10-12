#!/usr/bin/env python3
"""Run the same public serialize call against both exact historical LeafNode classes."""

import hashlib
import json
import os
from pathlib import Path
import shutil
import subprocess
import tempfile

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
jdk = root / "benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin"
manifest = json.loads((here / "source_manifest.json").read_text())
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


for side, revision in (("old", manifest["parent"]), ("new", manifest["child"])):
    for name, record in manifest["sources"][side].items():
        source = (here / f"{name}.{side}.txt").read_bytes()
        assert hashlib.sha256(source).hexdigest() == record["sha256"]
        assert source == git("show", revision + ":" + record["path"])
assert hashlib.sha256((here / "production.diff").read_bytes()).hexdigest() == manifest["diff_sha256"]

node_path = "roaringbitmap/src/main/java/org/roaringbitmap/art/Node.java"
type_path = "roaringbitmap/src/main/java/org/roaringbitmap/art/NodeType.java"
node_old = git("show", manifest["parent"] + ":" + node_path)
assert node_old == git("show", manifest["child"] + ":" + node_path)
public_method = b"  public void serialize(ByteBuffer byteBuffer) throws IOException {\n    serializeHeader(byteBuffer);\n    serializeNodeBody(byteBuffer);\n  }"
assert public_method in node_old
assert public_method in (here / "NodeStub.java.txt").read_bytes()
type_old = git("show", manifest["parent"] + ":" + type_path)
assert type_old == git("show", manifest["child"] + ":" + type_path)

with tempfile.TemporaryDirectory(prefix="roaring-leaf-50904527-") as tmp:
    base = Path(tmp)
    for side in ("old", "new"):
        src = base / side / "src" / "org" / "roaringbitmap"
        art = src / "art"
        util = src / "longlong"
        art.mkdir(parents=True)
        util.mkdir(parents=True)
        shutil.copyfile(here / f"LeafNode.{side}.txt", art / "LeafNode.java")
        shutil.copyfile(here / f"LongUtils.{side}.txt", util / "LongUtils.java")
        shutil.copyfile(here / "NodeStub.java.txt", art / "Node.java")
        shutil.copyfile(here / "Witness.java.txt", art / "Witness.java")
        (art / "NodeType.java").write_bytes(type_old)
        classes = base / side / "classes"
        files = sorted(str(p) for p in (base / side / "src").rglob("*.java"))
        subprocess.run([str(jdk / "javac"), "-d", str(classes), *files], check=True)
        result = subprocess.check_output([str(jdk / "java"), "-cp", str(classes),
                                          "org.roaringbitmap.art.Witness"], text=True).strip()
        expected = {
            "old": "position=4 bytes=[4, 0, 0, 0, 85, 85, 85, 85] exception=BufferOverflowException",
            "new": "position=8 bytes=[4, 0, 0, 0, 1, 2, 3, 4] exception=BufferOverflowException",
        }
        assert result == expected[side], result
        print(side + ": " + result)
