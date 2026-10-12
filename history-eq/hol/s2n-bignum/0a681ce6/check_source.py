"""Audit the historical squaring inputs; this does not run HOL Light."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/s2n-bignum"
parent = "9ff304609baa9948d25b40cce3f50342f6fadd75"
child = "0a681ce66047083a0c1a7de2d3747ca2dedcebb0"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
paths = (
    "arm/curve25519/bignum_sqr_p25519.S",
    "arm/proofs/bignum_sqr_p25519.ml",
    "common/interval.ml",
)


def git(*args):
    return subprocess.check_output(("git", "-C", str(repo), *args), env=env)


assert git("rev-parse", child + "^").decode().strip() == parent
report = {"parent": parent, "child": child, "proof_replayed": False, "sides": {}}
for label, commit, length in (("parent", parent, 0x1CC), ("child", child, 0x22C)):
    blobs = {}
    for path in paths:
        data = git("show", f"{commit}:{path}")
        blobs[path] = {"git_oid": git("rev-parse", f"{commit}:{path}").decode().strip(),
                       "sha256": hashlib.sha256(data).hexdigest()}
        if path.endswith("bignum_sqr_p25519.ml"):
            assert data.count(b"bignum_from_memory(z,4) s = (n EXP 2) MOD p_25519") == 1
            assert f"nonoverlapping (word pc,0x{length:x})".encode() in data
    obj = here / f"{label}.o"
    sections = subprocess.check_output(("readelf", "-SW", str(obj)), text=True)
    match = re.search(r"\]\s+\.text\s+PROGBITS\s+\S+\s+\S+\s+([0-9a-f]+)", sections)
    assert match and int(match.group(1), 16) == length, label
    report["sides"][label] = {"blobs": blobs, "object_sha256": hashlib.sha256(obj.read_bytes()).hexdigest(),
                               "text_bytes": length}
selected = (here.parent / "source-screening/0a681ce6.paths.txt").read_text().splitlines()
diff = git("diff", parent, child, "--", *selected)
assert diff == (here.parent / "source-screening/0a681ce6.source.diff").read_bytes()
report["source_diff_sha256"] = hashlib.sha256(diff).hexdigest()
(here / "source-audit.json").write_text(json.dumps(report, indent=2) + "\n")
print("historical source, theorem statements, and assembled object sizes audited; HOL proof not completed")
