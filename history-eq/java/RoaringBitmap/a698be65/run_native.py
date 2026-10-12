#!/usr/bin/env python3
"""Execute a same-package observer against each exact historical BranchNode."""

import hashlib
import json
import os
from pathlib import Path
import subprocess
from tempfile import TemporaryDirectory


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
java = root / "benchmarks/tools/java21/usr/lib/jvm/java-21-openjdk-amd64/bin/java"
javac = java.with_name("javac")
commit = "a698be65e0e9dd4c62988b103dbe3f825a50515b"
path = "roaringbitmap/src/main/java/org/roaringbitmap/art/BranchNode.java"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


result = {"commit": commit, "scope": "same-package protected prefix identity using exact historical BranchNode.java and unchanged signature stubs", "sides": {}}
assert b"static final byte[] EMPTY_BYTES = new byte[0];" in (here / "Stubs.java").read_bytes()
with TemporaryDirectory(prefix="roaring-empty-prefix-") as directory:
    for side, revision in (("old", commit + "^"), ("new", commit)):
        base = Path(directory) / side
        source = base / "src/org/roaringbitmap/art"
        source.mkdir(parents=True)
        historical = git("show", revision + ":" + path)
        blob = hashlib.sha1(b"blob " + str(len(historical)).encode() + b"\0" + historical).hexdigest()
        assert blob == git("rev-parse", revision + ":" + path).decode().strip()
        (source / "BranchNode.java").write_bytes(historical)
        for name in ("Stubs.java", "Observer.java"):
            (source / name).write_bytes((here / name).read_bytes())
        classes = base / "classes"
        classes.mkdir()
        build = subprocess.run([str(javac), "-d", str(classes), *map(str, source.glob("*.java"))],
                               capture_output=True, text=True, timeout=30)
        assert build.returncode == 0, build.stderr
        executed = subprocess.run([str(java), "-cp", str(classes), "org.roaringbitmap.art.Observer"],
                                  capture_output=True, text=True, timeout=10)
        assert executed.returncode == 0, executed.stderr
        result["sides"][side] = {"branch_blob": blob, "stdout": executed.stdout.strip()}
assert result["sides"]["old"]["stdout"] == "false"
assert result["sides"]["new"]["stdout"] == "true"
(here / "native-result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({side: data["stdout"] for side, data in result["sides"].items()}))
