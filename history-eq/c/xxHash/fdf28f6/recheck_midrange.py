#!/usr/bin/env python3
"""Check changed XXH3 17–128-byte helpers in both directions."""

import hashlib
import json
import re
import subprocess
from pathlib import Path


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
OUT = HERE / "recheck_midrange"
SOURCE_OIDS = {
    "old/xxhash.h": "d5bc75bfaed84b424663043b8b54c920eff983d3",
    "new/xxhash.h": "1f6562ed96e5ac6efdf7d0ed21c14d0b653ee12d",
}
WRAPPER_SHA = "93f2ee52316cf9329c0161f5f44607c1a90d8481fa563c9f7132d5f47602ac4b"
TARGETS = [f"target_midrange_64_len{n}" for n in (17, 33, 80, 128)]
TARGETS += ["target_midrange_128_len100"]
FLAGS = ["-O2", "-march=x86-64-v3", "-fno-strict-aliasing", "-fno-vectorize",
         "-fno-slp-vectorize", "-w", "-DXXH_SIZE_OPT=1", "-mllvm",
         "-inline-threshold=100000", "-mllvm", "-unroll-threshold=1000000",
         "-mllvm", "-unroll-full-max-count=100000"]


def sha(data):
    return hashlib.sha256(data).hexdigest()


for path, oid in SOURCE_OIDS.items():
    data = (HERE / path).read_bytes()
    assert hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest() == oid
assert sha((HERE / "wrap_midrange.c").read_bytes()) == WRAPPER_SHA
OUT.mkdir(exist_ok=True)
ir_sha = {}
for side in ("old", "new"):
    raw = OUT / f"{side}.ll"
    cmd = [str(ROOT / "alive2/toolchain/usr/bin/clang-20"), *FLAGS,
           "-I", str(HERE / side), "-S", "-emit-llvm",
           str(HERE / "wrap_midrange.c"), "-o", str(raw)]
    subprocess.run(cmd, check=True, capture_output=True, text=True)
    source = raw.read_text()
    for target in TARGETS:
        start = source.index("@" + target + "(")
        start = source.index("{\n", start)
        body = source[start:source.index("\n}", start)]
        assert "call " not in body and "br " not in body, target
    source = re.sub(r" nocapture\b", "", source)
    source = re.sub(r" initializes\(\(0, 16\)\)", "", source)
    source = re.sub(r", !(?:alias\.scope|noalias) !\d+", "", source)
    assert "!alias.scope" not in source and "!noalias" not in source
    (OUT / f"{side}-tv.ll").write_text(source)
    ir_sha[side] = sha(source.encode())
assert ir_sha["old"] != ir_sha["new"]

checks = {}
for target in TARGETS:
    checks[target] = {}
    for direction, first, second in (("old_to_new", "old", "new"),
                                     ("new_to_old", "new", "old")):
        cmd = [str(ROOT / "alive2/build/alive2/alive-tv"), "--always-verify",
               "--smt-to=60000", f"--func={target}",
               str(OUT / f"{first}-tv.ll"), str(OUT / f"{second}-tv.ll")]
        try:
            run = subprocess.run(cmd, capture_output=True, text=True, timeout=70)
            log = run.stdout + run.stderr
            correct = (run.returncode == 0 and "1 correct transformations" in log
                       and "0 incorrect transformations" in log
                       and "0 failed-to-prove transformations" in log
                       and "0 Alive2 errors" in log)
            checks[target][direction] = "correct" if correct else "inconclusive_or_incorrect"
        except subprocess.TimeoutExpired as exc:
            log = (exc.stdout or b"").decode(errors="replace") + (exc.stderr or b"").decode(errors="replace")
            checks[target][direction] = "timeout"
        (OUT / f"{target}-{direction}.log").write_text(log)
        print(target, direction, checks[target][direction], flush=True)

result = {"commit": "fdf28f6", "historical_header_blob_ids": SOURCE_OIDS,
          "wrapper_sha256": WRAPPER_SHA, "compile_flags": FLAGS,
          "normalized_ir_sha256": ir_sha,
          "normalization": "remove unsupported nocapture, initializes, alias.scope and noalias attributes symmetrically; every target has its changed helper inlined with no calls or loops",
          "checks": checks,
          "scope": "fixed 64-bit lengths 17,33,80,128 and 128-bit length 100 in XXH_SIZE_OPT=1 on x86-64-v3, symbolic valid input bytes and seed"}
(HERE / "recheck-midrange-result.json").write_text(json.dumps(result, indent=2) + "\n")
assert all(value == "correct" for item in checks.values() for value in item.values())
