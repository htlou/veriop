#!/usr/bin/env python3
"""Lock the shared-empty-prefix witness to exact historical source blobs."""

import hashlib
import json
import os
from pathlib import Path
import subprocess


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
commit = "a698be65e0e9dd4c62988b103dbe3f825a50515b"
art = "roaringbitmap/src/main/java/org/roaringbitmap/art/Art.java"
branch = "roaringbitmap/src/main/java/org/roaringbitmap/art/BranchNode.java"
node4 = "roaringbitmap/src/main/java/org/roaringbitmap/art/Node4.java"


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


paths = git("diff-tree", "--no-commit-id", "--name-only", "-r", commit).decode().splitlines()
assert paths == [art, branch]
old_branch = git("show", commit + "^:" + branch)
new_branch = git("show", commit + ":" + branch)
old_ctor = b"prefix = new byte[compressedPrefixSize];"
new_ctor = b"prefix = compressedPrefixSize == 0 ? Art.EMPTY_BYTES : new byte[compressedPrefixSize];"
assert old_branch.count(old_ctor) == new_branch.count(new_ctor) == 1
assert old_branch.replace(old_ctor, new_ctor, 1) == new_branch
assert b"protected byte[] prefix;" in old_branch
old_art = git("show", commit + "^:" + art)
new_art = git("show", commit + ":" + art)
assert b"static byte[] EMPTY_BYTES = new byte[0];" in old_art
assert b"final static byte[] EMPTY_BYTES = new byte[0];" in new_art
old_node4 = git("show", commit + "^:" + node4)
new_node4 = git("show", commit + ":" + node4)
assert old_node4 == new_node4
assert b"public class Node4 extends BranchNode" in new_node4
assert b"public Node4(int compressedPrefixSize)" in new_node4
diff = git("diff", commit + "^", commit, "--", art, branch)
(here / "source.diff").write_bytes(diff)
record = {"commit": commit, "changed_paths": paths,
          "old_branch_blob": git("rev-parse", commit + "^:" + branch).decode().strip(),
          "new_branch_blob": git("rev-parse", commit + ":" + branch).decode().strip(),
          "old_art_blob": git("rev-parse", commit + "^:" + art).decode().strip(),
          "new_art_blob": git("rev-parse", commit + ":" + art).decode().strip(),
          "node4_blob": git("rev-parse", commit + ":" + node4).decode().strip(),
          "diff_sha256": hashlib.sha256(diff).hexdigest(),
          "source_relation": "zero-length BranchNode prefix changes from fresh array to shared Art.EMPTY_BYTES"}
(here / "source-audit.json").write_text(json.dumps(record, indent=2) + "\n")
print(record["source_relation"])
