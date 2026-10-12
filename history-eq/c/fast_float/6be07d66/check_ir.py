#!/usr/bin/env python3
"""Compare the complete compiled helper modules, ignoring source path headers."""

import hashlib
from pathlib import Path

here = Path(__file__).resolve().parent
old = (here / "old.ll").read_bytes().splitlines(keepends=True)
new = (here / "new.ll").read_bytes().splitlines(keepends=True)
assert old[0].startswith(b"; ModuleID = '") and new[0].startswith(b"; ModuleID = '")
assert old[1].startswith(b"source_filename = ") and new[1].startswith(b"source_filename = ")
assert old[2:] == new[2:]
body = b"".join(old[2:])
assert b"define dso_local i64 @target_ok(" in body
assert b"define dso_local i64 @target_bits(" in body
assert body.count(b"load volatile float") >= 2
print("Complete old/new LLVM IR modules identical except ModuleID and source_filename")
print("canonical_sha256", hashlib.sha256(body).hexdigest())
