#!/usr/bin/env python3
"""Archive exact RoaringBitmap AddOffset sources and audit their guard change."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
commit = "5a4d2e6c46f06de2afd963160b0826a8e330a8e4"
paths = (
    "RoaringBitmap/src/main/java/org/roaringbitmap/RoaringBitmap.java",
    "RoaringBitmap/src/main/java/org/roaringbitmap/buffer/MutableRoaringBitmap.java",
)


def git(*args):
    return subprocess.check_output(
        ["git", "-C", str(repo), *args],
        env={**os.environ, "GIT_NO_LAZY_FETCH": "1"},
    )


parent = git("rev-parse", commit + "^").decode().strip()
manifest = {"commit": commit, "parent": parent, "files": {}}
old_flags = b"""        boolean keyok = (key >= 0) && (key <= 0xFFFF);
        boolean keypok = (key + 1 >= 0) && (key + 1 <= 0xFFFF);"""
new_flags = b"""        boolean keyok = key >= 0;
        boolean keypok = key + 1 <= 0xFFFF;"""
early_skip = b"""        if (key + 1 < 0 || key > 0xFFFF) {
          continue;
        }
"""

for path in paths:
    old = git("show", f"{parent}:{path}")
    new = git("show", f"{commit}:{path}")
    assert old.count(old_flags) == 1, path
    container_decl = b"        MappeableContainer c" if "Mutable" in path else b"        Container c"
    site = b"        key += container_offset;\n" + container_decl
    replacement = b"        key += container_offset;\n" + early_skip + container_decl
    assert old.count(site) == 1, path
    assert old.replace(site, replacement).replace(old_flags, new_flags) == new, path
    for label, raw in (("old", old), ("new", new)):
        name = f"{Path(path).stem}.{label}.java.txt"
        (here / name).write_bytes(raw)
        manifest["files"][name] = {"git_path": path, "sha256": hashlib.sha256(raw).hexdigest()}

(here / "source_manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
print("both historical Java files differ only by the audited early-skip guard rewrite")
