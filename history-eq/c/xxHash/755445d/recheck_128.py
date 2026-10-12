#!/usr/bin/env python3
"""Rerun both Alive2 directions for fixed-length historical XXH3_128 wrappers."""

import hashlib
import json
import re
import subprocess
from pathlib import Path


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
ALIVE = ROOT / "alive2/build/alive2/alive-tv"
CLANG = ROOT / "alive2/toolchain/usr/bin/clang-20"
ARCHIVED_IR = HERE / "r_api_fixed"
IR = HERE / "recheck_128"
EXPECTED = {
    "old/xxhash.h": "9298addd3290a1b989698b762d50e325743bdf41",
    "new/xxhash.h": "17e069bb02ff477de5dbee01f6a3ae2f10eedc2d",
}
IR_SHA = {"old.ll": "7565502456c4dae2864b29f45d39616a3e4c766b2b48ca5c93575ac3bfc2af5a",
          "new.ll": "45e7dc5afa7876e00d4fb25b13485794e0ac8a226799e82572904d0cfbb1178d"}
HARNESS_SHA = {
    "wrap_api_fixed.c": "2291df62e9419baae41bc452a04ea0f036814688483832f9037bbf5bcd7489fe",
    "../_work2020/inc/xxh_harness.h": "3fd68483de8196ed8d7e54a16f50faf9d62a5000d1360f4f7110994aba2e845d",
}
TARGETS = [f"target_api_128_seed_len{n}" for n in (129, 159, 160, 191, 192, 200, 224, 240)]
TARGETS += ["target_api_128_secret_len200"]


def blob_oid(data):
    return hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()


for path, oid in EXPECTED.items():
    assert blob_oid((HERE / path).read_bytes()) == oid, path
for path, digest in IR_SHA.items():
    assert hashlib.sha256((ARCHIVED_IR / path).read_bytes()).hexdigest() == digest, path
for path, digest in HARNESS_SHA.items():
    assert hashlib.sha256((HERE / path).read_bytes()).hexdigest() == digest, path
wrapper = (HERE / "wrap_api_fixed.c").read_text()
for target in TARGETS:
    assert target + "(" in wrapper

# Rebuild from the exact historical headers. The installed Alive2 cannot parse
# Clang's alias metadata or nocapture; remove those hints on both sides only.
IR.mkdir(exist_ok=True)
archived = json.loads((ARCHIVED_IR / "result.json").read_text())
fresh_sha = {}
for side in ("old", "new"):
    raw = IR / f"{side}.raw.ll"
    cmd = archived[f"{side}_compile"].copy()
    assert cmd[-2] == "-o", cmd[-3:]
    cmd[0], cmd[-1] = str(CLANG), str(raw)
    subprocess.run(cmd, check=True, capture_output=True, text=True)
    source = raw.read_text()
    source = re.sub(r" nocapture\b", "", source)
    source = re.sub(r", !(?:alias\.scope|noalias) !\d+", "", source)
    source = re.sub(r"(?m)^\s*(?:tail )?call void @llvm\.experimental\.noalias\.scope\.decl\(metadata !\d+\).*\n", "", source)
    source = re.sub(r"(?m)^declare void @llvm\.experimental\.noalias\.scope\.decl\(metadata\).*\n", "", source)
    for target in TARGETS:
        start = source.index("@" + target + "(")
        assert "asm sideeffect" not in source[start:source.index("\n}", start)], target
    normalized = IR / f"{side}.ll"
    normalized.write_text(source)
    fresh_sha[side] = hashlib.sha256(source.encode()).hexdigest()

checks = {}
for target in TARGETS:
    checks[target] = {}
    for direction, first, second in (("old_to_new", "old.ll", "new.ll"),
                                     ("new_to_old", "new.ll", "old.ll")):
        cmd = [str(ALIVE), "--smt-to=60000", "--always-verify", f"--func={target}",
               str(IR / first), str(IR / second)]
        try:
            run = subprocess.run(cmd, capture_output=True, text=True, timeout=70)
            output = run.stdout + run.stderr
            correct = (run.returncode == 0 and "1 correct transformations" in output
                       and "0 incorrect transformations" in output
                       and "0 failed-to-prove transformations" in output
                       and "0 Alive2 errors" in output)
            result = "correct" if correct else "inconclusive_or_incorrect"
        except subprocess.TimeoutExpired as exc:
            output = (exc.stdout or b"").decode(errors="replace") + (exc.stderr or b"").decode(errors="replace")
            result = "timeout"
        (IR / f"recheck-{target}-{direction}.log").write_text(output)
        checks[target][direction] = result
        print(target, direction, result, flush=True)

result = {"commit": "755445db88", "historical_header_blob_ids": EXPECTED,
          "archived_ir_sha256": IR_SHA, "harness_sha256": HARNESS_SHA,
          "fresh_normalized_ir_sha256": fresh_sha,
          "normalization": "remove nocapture and alias.scope/noalias metadata and noalias.scope.decl intrinsics symmetrically; no selected target contains inline asm",
          "checks": checks,
          "proved_bidirectional": [target for target, check in checks.items()
                                   if all(value == "correct" for value in check.values())],
          "scope": "fixed public XXH3_128bits_withSeed lengths 129,159,160,191,192,200,224,240 and withSecret length 200; freshly compiled x86-64-v3 IR from exact headers"}
(HERE / "recheck-128-result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps({"proved": len(result["proved_bidirectional"]), "total": len(TARGETS)}))
