#!/usr/bin/env python3
"""Recover one exact historical fast_float blob from local parent and HEAD."""

import hashlib
import json
import os
import subprocess
from pathlib import Path


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "benchmarks/repos/fast_float"
COMMIT = "f4f36e04f7"
PATH = "include/fast_float/ascii_number.h"


def git(*args):
    return subprocess.check_output(["git", "-C", str(REPO), *args],
                                   env={**os.environ, "GIT_NO_LAZY_FETCH": "1"})


raw = git("diff-tree", "--raw", "--no-commit-id", "-r", f"{COMMIT}^", COMMIT).decode()
assert raw.count("\n") == 1 and raw.endswith("\t" + PATH + "\n"), raw
old_oid, new_oid = raw.split("\t", 1)[0].split()[2:4]
old = git("show", f"{COMMIT}^:{PATH}")
head = git("show", f"HEAD:{PATH}")
begin = b"  // Consume a remaining 4-7 digit run"
end = b"\n}\n\nenum class parse_error"
assert old.count(begin) == head.count(begin) == 1
assert old.count(end) == head.count(end) == 1
i, j = old.index(begin), old.index(end, old.index(begin))
k, l = head.index(begin), head.index(end, head.index(begin))
new = old[:i] + head[k:l] + old[j:]


def oid(data):
    return hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()


assert oid(old) == old_oid
assert oid(new) == new_oid, (oid(new), new_oid)
assert b"#if defined(__clang__)" in old[i:j]
assert b"#if defined(__clang__)" not in new[i:i + l - k]
(HERE / "new-ascii_number.h").write_bytes(new)
result = {"commit": git("rev-parse", COMMIT).decode().strip(),
          "path": PATH, "old_oid": old_oid, "recovered_new_oid": oid(new),
          "replacement": "one local fraction-SWAR block copied from HEAD into exact parent blob"}
(HERE / "recovery.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result, indent=2))
