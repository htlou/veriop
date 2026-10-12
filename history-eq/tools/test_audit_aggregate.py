#!/usr/bin/env python3
"""Reject missing or failed checks in the xxHash aggregate proof archives."""

import json
from pathlib import Path
from shutil import copy2
from tempfile import TemporaryDirectory

from audit import H, audit_aggregate, audit_structured

report = json.loads((H / "results/xxHash-pre2020.json").read_text())
case = next(item for item in report["commits"] if item["commit"] == "0e5dab9")
for suffix in ("short_range", "valid_blocks", "tail_lemma"):
    unit = next(unit for unit in case["units"] if unit.get("artifact_dir", "").endswith(suffix))
    artifact = unit["artifact_dir"]
    data = json.loads((H / artifact / "result.json").read_text())
    with TemporaryDirectory() as directory:
        path = Path(directory) / "result.json"
        path.write_text(json.dumps(data))
        assert audit_aggregate("xxHash", "0e5dab9", artifact, unit, path) == []
        data["checks"].pop()
        path.write_text(json.dumps(data))
        assert any("coverage mismatch" in error for error in
                   audit_aggregate("xxHash", "0e5dab9", artifact, unit, path))
        data["checks"][-1]["output"] = "1 failed-to-prove transformations"
        path.write_text(json.dumps(data))
        assert any("did not pass" in error for error in
                   audit_aggregate("xxHash", "0e5dab9", artifact, unit, path))

for commit, artifact in (
    ("268fde4", "c/xxHash/268fde4/helper-check"),
    ("44bb94e", "c/xxHash/44bb94e/subset-recheck"),
    ("91788f1", "c/xxHash/91788f1/api-recheck"),
    ("d14b293", "c/xxHash/d14b2934"),
    ("665424e", "c/xxHash/665424e/secret-bridge"),
):
    source = H / artifact
    with TemporaryDirectory() as directory:
        target = Path(directory)
        copy2(source / "result.json", target / "result.json")
        for log in source.glob("*.log"):
            copy2(log, target / log.name)
        result = target / "result.json"
        assert audit_structured("xxHash", commit, artifact, result) == []
        first = next(target.glob("*.log"))
        first.write_text("1 failed-to-prove transformations\n")
        assert any("missing or failed" in error for error in
                   audit_structured("xxHash", commit, artifact, result))
print("all eight aggregate/structured archives pass; missing and failed checks are rejected")
