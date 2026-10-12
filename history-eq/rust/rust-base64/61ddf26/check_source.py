#!/usr/bin/env python3
"""Bind the index/iterator theorem to the complete historical Rust change."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "aeneas/repos/rust-base64"
commit = "61ddf268b"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.run(["git", "-C", str(repo), *args], check=True,
                          capture_output=True, env=env).stdout


child = git("rev-parse", commit).decode().strip()
parent = git("rev-parse", child + "^").decode().strip()
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", child).decode().splitlines() == ["src/lib.rs"]
sources = {}
blobs = {}
for side, revision in (("old", parent), ("new", child)):
    data = git("show", revision + ":src/lib.rs")
    oid = git("rev-parse", revision + ":src/lib.rs").decode().strip()
    assert hashlib.sha1(f"blob {len(data)}\0".encode() + data).hexdigest() == oid
    sources[side] = data.decode()
    blobs[side] = oid


def function(source, name):
    match = re.search(r"^pub fn " + name + r"\b.*?^}\n", source, re.M | re.S)
    assert match
    return match.group()


old, new = sources["old"], sources["new"]
old_ws, new_ws = function(old, "decode_ws"), function(new, "decode_ws")
old_mode, new_mode = function(old, "decode_mode"), function(new, "decode_mode")
assert old.replace(old_ws, "<decode_ws>").replace(old_mode, "<decode_mode>") == \
       new.replace(new_ws, "<decode_ws>").replace(new_mode, "<decode_mode>")

old_ws_prefix, old_ws_tail = old_ws.split("    for i in 0..input.len() {", 1)
new_ws_prefix, new_ws_tail = new_ws.split('    raw.extend(input.bytes().filter(|b| !b" \\n\\t\\r\\x0c".contains(b)));', 1)
assert old_ws_prefix.replace("    let bytes = input.as_bytes();\n", "").rstrip() == new_ws_prefix.rstrip()
assert old_ws_tail.split("    let sans_ws =", 1)[1] == new_ws_tail.split("    let sans_ws =", 1)[1]
assert old_ws_tail.split("    let sans_ws =", 1)[0] == (
    "\n        if !(bytes[i] == 0x20 || bytes[i] == 0x9 || bytes[i] == 0xa ||\n"
    "        bytes[i] == 0xc || bytes[i] == 0xd) {\n"
    "            raw.push(bytes[i]);\n"
    "        }\n"
    "    }\n\n")
assert new_ws_tail.split("    let sans_ws =", 1)[0] == "\n\n"

normalized_mode = old_mode.replace("    let bytes = input.as_bytes();\n\n", "") \
    .replace("with_capacity(bytes.len())", "with_capacity(input.len())") \
    .replace("for i in 0..bytes.len()", "for (i, b) in input.bytes().enumerate()") \
    .replace("bytes[i]", "b")
assert normalized_mode == new_mode
assert old_mode.count("bytes[i]") == 13

diff = git("diff", parent, child, "--", "src/lib.rs")
(here / "source.diff").write_bytes(diff)
result = {"commit": child, "parent": parent, "old_blob": blobs["old"], "new_blob": blobs["new"],
          "source_diff_sha256": hashlib.sha256(diff).hexdigest(),
          "lean_sha256": hashlib.sha256((here / "IteratorRelation.lean").read_bytes()).hexdigest(),
          "scope": "decode_ws whitespace-filter bytes and decode_mode indexed/enumerated byte sequence",
          "source_relation": "the only source differences are the two iterator rewrites audited here"}
(here / "source-audit.json").write_text(json.dumps(result, indent=2) + "\n")
print("exact historical source and both iterator rewrites audited")
