#!/usr/bin/env python3
"""Lock the local KeY relation to the exact historical one-line deletion."""

import hashlib
import json
import os
from pathlib import Path
import subprocess


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
commit = subprocess.check_output(["git", "-C", str(repo), "rev-parse", "418a2929"],
                                 text=True, env=env).strip()
parent = subprocess.check_output(["git", "-C", str(repo), "rev-parse", commit + "^"],
                                 text=True, env=env).strip()
path = "RoaringBitmap/src/main/java/org/roaringbitmap/art/Node16.java"
old = subprocess.check_output(["git", "-C", str(repo), "show", parent + ":" + path], env=env)
new = subprocess.check_output(["git", "-C", str(repo), "show", commit + ":" + path], env=env)
deleted = b"      currentNode16.firstV = LongUtils.fromBDBytes(bytes);\n"
assert old.count(deleted) == 2 and new.count(deleted) == 1
assert old.replace(deleted, b"", 1) == new
between_writes = old.split(deleted, 1)[1].split(deleted, 1)[0]
assert b"firstV" not in between_writes
assert between_writes.strip() == (b"currentNode16.children[currentNode16.count] = child;\n"
                                   b"      sortSmallByteArray(bytes, currentNode16.children, 0, currentNode16.count);\n"
                                   b"      currentNode16.count++;")
assert b"sortSmallByteArray(bytes, currentNode16.children, 0, currentNode16.count);" in new
node = subprocess.check_output(["git", "-C", str(repo), "show", commit +
                                ":RoaringBitmap/src/main/java/org/roaringbitmap/art/Node.java"], env=env)
sort_body = node.split(b"protected static byte[] sortSmallByteArray(", 1)[1].split(b"return key;", 1)[0]
assert b"firstV" not in sort_body and b"children[" in sort_body
long_utils = subprocess.check_output(["git", "-C", str(repo), "show", commit +
                                      ":RoaringBitmap/src/main/java/org/roaringbitmap/longlong/LongUtils.java"], env=env)
conversion = long_utils.split(b"public static long fromBDBytes(byte[] work)", 1)[1].split(b"}", 1)[0]
assert b"return" in conversion and all(f"work[{i}]".encode() in conversion for i in range(8))
assert b"new " not in conversion and b"throw " not in conversion
changed = subprocess.check_output(["git", "-C", str(repo), "diff-tree", "--no-commit-id",
                                   "--name-only", "-r", commit], env=env, text=True).splitlines()
assert changed == [path]
(here / "Node16.old.txt").write_bytes(old)
(here / "Node16.new.txt").write_bytes(new)
diff = subprocess.check_output(["git", "-C", str(repo), "diff", parent, commit, "--", path], env=env)
(here / "source.diff").write_bytes(diff)
record = {"commit": commit, "parent": parent, "path": path,
          "old_sha256": hashlib.sha256(old).hexdigest(), "new_sha256": hashlib.sha256(new).hexdigest(),
          "diff_sha256": hashlib.sha256(diff).hexdigest(),
          "sort_helper_sha256": hashlib.sha256(node).hexdigest(),
          "conversion_helper_sha256": hashlib.sha256(long_utils).hexdigest(),
          "source_relation": "child = parent minus first firstV assignment before unchanged sort"}
(here / "source-audit.json").write_text(json.dumps(record, indent=2) + "\n")
print(record["source_relation"])
