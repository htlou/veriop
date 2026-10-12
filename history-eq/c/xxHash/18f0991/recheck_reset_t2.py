#!/usr/bin/env python3
"""Recheck one initialized, repeated XXH3 seeded-reset relation."""

import hashlib
import json
import re
import shlex
import subprocess
from pathlib import Path


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
OUT = HERE / "recheck_reset_t2"
ARCHIVE = HERE / "r_rst_scalar_t2"
SOURCE_OIDS = {
    "old/xxhash.h": "35e6f5ff599d68e2f256bcffdac9fd28c5ef3d3a",
    "new/xxhash.h": "b14092f2b5371f2a6eaf18f69b4e17af564a6c27",
    "old/xxh3.h": "104d30acf6ae904258c5edc4ee41ea1eaef059a4",
    "new/xxh3.h": "d69e01f10c378afe0416bec9dc43376ebcc0a308",
}
WRAPPER_SHA = "293d655bc07ab3eeee24997950d3f93dd65d850ee3fbb3d1ce0881ccaaef9a99"


def sha(data):
    return hashlib.sha256(data).hexdigest()


def body(module):
    start = module.index("@target_rst_seed_seed(")
    start = module.index("{\n", start) + 2
    return module[start:module.index("\n}", start)]


for path, oid in SOURCE_OIDS.items():
    data = (HERE / path).read_bytes()
    assert hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest() == oid
assert sha((HERE / "wrap_reset.c").read_bytes()) == WRAPPER_SHA
archived = json.loads((ARCHIVE / "result.json").read_text())
OUT.mkdir(exist_ok=True)
hashes = {}
for side in ("old", "new"):
    archive_ir = (ARCHIVE / f"{side}.ll").read_text()
    assert sha(archive_ir.encode()) == archived[f"{side}_ll_sha256"]
    raw = OUT / f"{side}.raw.ll"
    cmd = [str(ROOT / "alive2/toolchain/usr/bin/clang-20"),
           *shlex.split(archived["cflags"]), "-I", str(HERE / side),
           "-I", str(ROOT / "history-eq/c/xxHash/_work2020/inc"),
           "-S", "-emit-llvm", str(HERE / "wrap_reset.c"), "-o", str(raw)]
    subprocess.run(cmd, check=True, capture_output=True, text=True)
    fresh = raw.read_text()
    assert body(fresh) == body(archive_ir), side
    fresh = re.sub(r" initializes\(\(0, 608\)\)", "", fresh)
    fresh = re.sub(r" nocapture\b", "", fresh)
    (OUT / f"{side}.ll").write_text(fresh)
    hashes[side] = sha(fresh.encode())

checks = {}
for direction, first, second in (("old_to_new", "old", "new"),
                                 ("new_to_old", "new", "old")):
    cmd = [str(ROOT / "alive2/build/alive2/alive-tv"), "--always-verify",
           "--smt-to=300000", "--func=target_rst_seed_seed",
           str(OUT / f"{first}.ll"), str(OUT / f"{second}.ll")]
    try:
        run = subprocess.run(cmd, capture_output=True, text=True, timeout=330)
        log = run.stdout + run.stderr
        correct = (run.returncode == 0 and "1 correct transformations" in log
                   and "0 incorrect transformations" in log
                   and "0 failed-to-prove transformations" in log
                   and "0 Alive2 errors" in log)
        checks[direction] = "correct" if correct else "inconclusive_or_incorrect"
    except subprocess.TimeoutExpired as exc:
        log = (exc.stdout or b"").decode(errors="replace") + (exc.stderr or b"").decode(errors="replace")
        checks[direction] = "timeout"
    (OUT / f"{direction}.log").write_text(log)
    print(direction, checks[direction], flush=True)

result = {"commit": "18f0991", "source_blob_ids": SOURCE_OIDS,
          "wrapper_sha256": WRAPPER_SHA, "archived_ir_sha256": {
              side: archived[f"{side}_ll_sha256"] for side in ("old", "new")},
          "fresh_normalized_ir_sha256": hashes,
          "scope": "initialized XXH3 state, symbolic seed1 then seed2, scalar x86-64-v3; observed effective secret and reset state fields",
          "normalization": "removed Clang 20 initializes and nocapture attributes; target instruction bodies match archived IR exactly",
          "checks": checks}
(HERE / "recheck-reset-t2-result.json").write_text(json.dumps(result, indent=2) + "\n")
assert set(checks.values()) == {"correct"}
