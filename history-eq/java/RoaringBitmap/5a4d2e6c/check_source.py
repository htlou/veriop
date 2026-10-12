#!/usr/bin/env python3
"""Check the archived AddOffset sources and KeY projection."""

import hashlib
import json
from pathlib import Path

here = Path(__file__).resolve().parent
manifest = json.loads((here / "source_manifest.json").read_text())
assert manifest["commit"] == "5a4d2e6c46f06de2afd963160b0826a8e330a8e4"

old_flags = b"""        boolean keyok = (key >= 0) && (key <= 0xFFFF);
        boolean keypok = (key + 1 >= 0) && (key + 1 <= 0xFFFF);"""
new_flags = b"""        boolean keyok = key >= 0;
        boolean keypok = key + 1 <= 0xFFFF;"""
early_skip = b"""        if (key + 1 < 0 || key > 0xFFFF) {
          continue;
        }
"""

for base in ("RoaringBitmap", "MutableRoaringBitmap"):
    old_name = f"{base}.old.java.txt"
    new_name = f"{base}.new.java.txt"
    old = (here / old_name).read_bytes()
    new = (here / new_name).read_bytes()
    assert hashlib.sha256(old).hexdigest() == manifest["files"][old_name]["sha256"]
    assert hashlib.sha256(new).hexdigest() == manifest["files"][new_name]["sha256"]
    assert old.count(old_flags) == 1
    container_decl = b"        MappeableContainer c" if base == "MutableRoaringBitmap" else b"        Container c"
    site = b"        key += container_offset;\n" + container_decl
    replacement = b"        key += container_offset;\n" + early_skip + container_decl
    assert old.count(site) == 1
    assert old.replace(site, replacement).replace(old_flags, new_flags) == new

model = (here / "AddOffsetGuardRelation.java").read_text()
for expression in (
    "key + 1 < 0 || key > 0xFFFF",
    "key >= 0 && key <= 0xFFFF",
    "key + 1 >= 0 && key + 1 <= 0xFFFF",
    "!skip && key >= 0",
    "!skip && key + 1 <= 0xFFFF",
):
    assert expression in model, expression
print("both exact historical AddOffset source rewrites match the KeY guard projection")
