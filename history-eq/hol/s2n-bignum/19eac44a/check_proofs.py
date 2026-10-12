#!/usr/bin/env python3
"""Audit exact historical sources and the two output theorems."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/s2n-bignum"
audit = json.loads((here / "source-audit.json").read_text())
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
report = {"scope": "x86 output for one 32-limb square", "sides": {}}
archived_diff = here.parent / "source-screening/19eac44a.source.diff"
assert hashlib.sha256(archived_diff.read_bytes()).hexdigest() == audit["archived_source_diff_sha256"]


def clean_log(path):
    raw = path.read_bytes()
    log = re.sub(r"\x1b\[[0-9;]*[mK]", "", raw.decode(errors="replace"))
    assert "Error in included file" not in log
    assert not re.search(r"(?m)^(?:Error:|Exception:)", log)
    return raw, log


for side, asm, expected in (
    ("old", "x86/generic/bignum_mul", "lowdigits (a * b) (val p)"),
    ("new", "x86/fastmul/bignum_ksqr_32_64", "bignum_from_memory (z,64) s = a EXP 2"),
):
    rev = audit["parent" if side == "old" else "child"]
    stage = Path(f"/tmp/veriop-s2n-19e-{side}")
    for path, source in audit["sides"][side]["blobs"].items():
        exact = subprocess.check_output(["git", "-C", str(repo), "show", f"{rev}:{path}"], env=env)
        assert hashlib.sha256(exact).hexdigest() == source["sha256"]
        assert (stage / path).read_bytes() == exact
    obj = stage / f"{asm}.o"
    assert hashlib.sha256(obj.read_bytes()).hexdigest() == audit["sides"][side]["object_sha256"]
    raw, log = clean_log(here / f"{side}-proof.log")
    marker = f"val {audit['sides'][side]['theorem']} : thm =\n"
    assert log.count(marker) == 1, (side, marker)
    theorem = log.split(marker, 1)[1].split("\nval it", 1)[0]
    assert expected in theorem, side
    (here / f"{side}-theorem.txt").write_text(marker + theorem)
    report["sides"][side] = {"revision": rev, "object_sha256": audit["sides"][side]["object_sha256"],
                              "log_sha256": hashlib.sha256(raw).hexdigest(),
                              "theorem": audit["sides"][side]["theorem"]}

bridge_raw, bridge_log = clean_log(here / "bridge-proof.log")
bridge_marker = "val SQUARE_32_LOWDIGITS : thm =\n"
assert bridge_log.count(bridge_marker) == 1
bridge_theorem = bridge_log.split(bridge_marker, 1)[1].split("\nval it", 1)[0]
assert "lowdigits (a * a) 64 = a EXP 2" in bridge_theorem
(here / "bridge-theorem.txt").write_text(bridge_marker + bridge_theorem)
report["bridge_log_sha256"] = hashlib.sha256(bridge_raw).hexdigest()
report["result"] = "under shared input/output preconditions, both x86 routines compute the same 64-limb square"
(here / "proof-result.json").write_text(json.dumps(report, indent=2) + "\n")
print(report["result"])
