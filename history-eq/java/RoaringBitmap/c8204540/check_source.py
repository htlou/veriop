#!/usr/bin/env python3
"""Bind the KeY node-type relation to the exact historical production diff."""

import json
import os
from pathlib import Path
import re
import subprocess

ROOT = Path(__file__).resolve().parents[4]
HERE = Path(__file__).resolve().parent
REPO = ROOT / "benchmarks/repos/RoaringBitmap"
OLD = "5489517f64d8c09d9acc2562221b210cfa1b99b7"
NEW = "c8204540d155613706a17e3161da40b2cfa4341c"
BASE = "roaringbitmap/src/main/java/org/roaringbitmap/art/"
NAMES = ("Art.java", "BranchNode.java", "Node4.java", "Node16.java", "Node48.java", "Node256.java")
ENV = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.run(["git", "-C", str(REPO), *args], check=True,
                          capture_output=True, text=True, env=ENV).stdout


assert git("rev-parse", "c8204540^").strip() == OLD
assert git("rev-parse", "c8204540").strip() == NEW
paths = [BASE + name for name in NAMES]
diff = git("diff", "--unified=3", OLD, NEW, "--", *paths)
assert diff == (HERE.parent / "source-screening/c8204540.source.diff").read_text()
blobs = {}
for name in NAMES + ("NodeType.java",):
    path = BASE + name
    old = git("show", f"{OLD}:{path}")
    new = git("show", f"{NEW}:{path}")
    blobs[name] = {"old": git("rev-parse", f"{OLD}:{path}").strip(),
                   "new": git("rev-parse", f"{NEW}:{path}").strip()}
    if name == "NodeType.java":
        assert old == new
        assert re.search(r"enum NodeType\s*\{\s*NODE4,\s*NODE16,\s*NODE48,\s*NODE256", old)
    elif name == "BranchNode.java":
        assert "protected NodeType nodeType;" in old
        assert "this.nodeType = nodeType;" in old
        assert "protected abstract NodeType nodeType();" in new
        assert old.count("this.nodeType.ordinal()") == 2
        assert new.count("this.nodeType().ordinal()") == 2
    elif name != "Art.java":
        kind = name.removesuffix(".java").upper()
        assert re.search(r"super\(NodeType\." + kind + r",\s*\w+\);", old), name
        assert re.search(r"protected NodeType nodeType\(\)\s*\{\s*return NodeType\." + kind + r";", new), name

model = (HERE / "NodeTypeSerializationRelation.java").read_text()
assert "int oldFieldOrdinal = kind;" in model
assert [int(x) for x in re.findall(r"newGetterOrdinal = (\d);", model)] == [0, 1, 2, 3]
assert "return (byte) oldFieldOrdinal == (byte) newGetterOrdinal;" in model
(HERE / "source-audit.json").write_text(json.dumps({
    "old": OLD, "new": NEW, "paths": paths, "git_blobs": blobs,
    "scope": "four node-type constructor/getter correspondences and two serialized type-byte writes",
}, indent=2) + "\n")
print("Exact historical diff and all four constructor/getter mappings verified")
