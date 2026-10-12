#!/usr/bin/env python3
"""Compile and run the same public call against both historical Java revisions."""

import hashlib
import json
import os
from pathlib import Path
import subprocess
import tempfile

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
jdk = root / "benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin"
replacement = root / "history-eq/wt/roaring-contains-8e76-old/RoaringBitmap/src/main/java/org/roaringbitmap/buffer/MappeableContainer.java"
commit = "73a09574cddf37a918933859e7a2b2b5e67a3590"
missing_oid = "44bf93b81f002786d009c82cbb16d32d0f2e201e"
missing_path = "RoaringBitmap/src/main/java/org/roaringbitmap/buffer/MappeableContainer.java"
shim_path = "shims/src/main/java/org/roaringbitmap/ArraysShim.java"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env,
                                   stderr=subprocess.PIPE)


parent = git("rev-parse", commit + "^").decode().strip()
manifest = {"commit": commit, "parent": parent, "source_root": "RoaringBitmap/src/main/java",
            "missing_unchanged_source": {"path": missing_path, "git_blob": missing_oid,
                                         "replacement_sha256": hashlib.sha256(replacement.read_bytes()).hexdigest()},
            "sources": {}}
diff = git("diff", parent, commit, "--", "RoaringBitmap/src/main/java/")
assert diff.count(b"diff --git") == 1
(here / "production.diff").write_bytes(diff)
manifest["diff_sha256"] = hashlib.sha256(diff).hexdigest()

with tempfile.TemporaryDirectory(prefix="roaring-andnot-73a09574-") as tmp:
    base = Path(tmp)
    for side, revision in (("old", parent), ("new", commit)):
        tree = git("ls-tree", "-r", "-z", revision, "--", "RoaringBitmap/src/main/java/")
        source_records = {}
        missing = []
        for entry in tree.split(b"\0"):
            if not entry:
                continue
            header, path_bytes = entry.split(b"\t", 1)
            oid = header.split()[2].decode()
            path = path_bytes.decode()
            assert path.endswith(".java")
            try:
                source = git("cat-file", "blob", oid)
            except subprocess.CalledProcessError:
                assert (path, oid) == (missing_path, missing_oid)
                source = replacement.read_bytes()
                missing.append(path)
            target = base / side / "src" / path.removeprefix("RoaringBitmap/src/main/java/")
            target.parent.mkdir(parents=True, exist_ok=True)
            target.write_bytes(source)
            source_records[path] = {"git_blob": oid, "sha256": hashlib.sha256(source).hexdigest()}
        assert missing == [missing_path], missing
        shim = git("show", revision + ":" + shim_path)
        assert hashlib.sha1(b"blob " + str(len(shim)).encode() + b"\0" + shim).hexdigest() == "26a48fcf8d78d1dd771c1bad0a8f686fa8cdbaeb"
        (base / side / "src/org/roaringbitmap/ArraysShim.java").write_bytes(shim)
        source_records[shim_path] = {"git_blob": "26a48fcf8d78d1dd771c1bad0a8f686fa8cdbaeb",
                                     "sha256": hashlib.sha256(shim).hexdigest()}
        assert len(source_records) == 73, len(source_records)
        manifest["sources"][side] = source_records
        classes = base / side / "classes"
        files = sorted(str(p) for p in (base / side / "src").rglob("*.java"))
        subprocess.run([str(jdk / "javac"), "-d", str(classes), *files, str(here / "Witness.java")], check=True)
        result = subprocess.check_output([str(jdk / "java"), "-cp", str(classes), "Witness"], text=True).strip()
        expected = "left=2 right=1 difference=" + ("1" if side == "old" else "2")
        assert result == expected, (side, result)
        print(f"{side}: {result}")
        manifest.setdefault("observations", {})[side] = result

(here / "source_manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
