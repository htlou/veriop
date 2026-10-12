#!/usr/bin/env python3
"""Recheck the complete changed NEON stripe function on AArch64."""

import hashlib
import json
import os
from pathlib import Path
import subprocess
from tempfile import TemporaryDirectory

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "history-eq/repos/xxHash"
COMMIT = "090b389778a219a3f62f2229911dbbd9a98b1850"
PRIOR = json.loads((HERE / "r_acc_a64_id/result.json").read_text())
ENV = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(REPO), *args], env=ENV).decode().strip()


def main():
    assert git("diff", "--name-only", COMMIT + "^", COMMIT) == "xxh3.h"
    blobs = {}
    for side, revision in (("old", COMMIT + "^"), ("new", COMMIT)):
        blobs[side] = {}
        for name in ("xxh3.h", "xxhash.h", "xxhash.c"):
            source = (HERE / side / name).read_bytes()
            oid = hashlib.sha1(b"blob " + str(len(source)).encode() + b"\0" + source).hexdigest()
            assert oid == git("rev-parse", f"{revision}:{name}")
            blobs[side][name] = oid
    assert PRIOR["verdict"] == "EQUIV" and not PRIOR["bounded"]
    with TemporaryDirectory(prefix="xxh-090b-a64-") as temporary:
        command = ["python3", "-B", str(ROOT / "history-eq/c/xxHash/_work2020/xx_alive.py"),
                   "--out", temporary, "--old-inc", str(HERE / "old"),
                   "--old-inc", str(ROOT / "history-eq/c/xxHash/_work2020/inc"),
                   "--new-inc", str(HERE / "new"),
                   "--new-inc", str(ROOT / "history-eq/c/xxHash/_work2020/inc"),
                   "--wrapper", str(HERE / "wrap_acc2020.c"), "--cflags", PRIOR["cflags"],
                   "--target", "aarch64-linux-gnu", "--timeout", "120", "--smt-to", "60000"]
        run = subprocess.run(command, capture_output=True, text=True, timeout=150)
        assert run.returncode == 0, run.stdout[-1000:] + run.stderr[-1000:]
        temporary = Path(temporary)
        fresh = json.loads((temporary / "result.json").read_text())
        notes = json.loads((temporary / "xx_notes.json").read_text())
        expected = {f"target_acc512_w{width}": {"verdict": "EQUIV", "fwd": "correct", "bwd": "correct"}
                    for width in (64, 128)}
        assert fresh["verdict"] == "EQUIV" and fresh["functions"] == expected
        assert not fresh["bounded"] and notes["asm_guard_rewrites(old,new)"] == [0, 0]
        assert set(notes["targets"]) == set(expected)
        assert all(record == {"ir": "differs"} for record in notes["targets"].values())
        ir_hashes = {}
        for side in ("old", "new"):
            digest = hashlib.sha256((temporary / f"{side}.ll").read_bytes()).hexdigest()
            assert digest == PRIOR[f"{side}_ll_sha256"] == fresh[f"{side}_ll_sha256"]
            ir_hashes[side] = digest
        logs = {}
        for direction in ("fwd", "bwd"):
            log = (temporary / f"{direction}.log").read_text()
            assert ("2 correct transformations" in log and "0 incorrect transformations" in log
                    and "0 failed-to-prove transformations" in log and "0 Alive2 errors" in log
                    and "Approximations done" not in log)
            (HERE / f"a64-recheck-{direction}.log").write_text(log)
            logs[direction] = hashlib.sha256(log.encode()).hexdigest()
    result = {"commit": COMMIT, "source_blobs": blobs,
              "scope": "complete 64-byte XXH3_accumulate_512 output for arbitrary initialized accumulator, input and secret bytes; both 64-bit and 128-bit modes; Clang 20 AArch64 NEON with symmetric unsigned widening-multiply model",
              "model_sha256": hashlib.sha256((HERE / "neon_model.h").read_bytes()).hexdigest(),
              "ir_sha256": ir_hashes, "log_sha256": logs,
              "checks": expected, "verdict": "EQUIV",
              "limits": "public XXH3 hashes, other architectures/compilers, and timing unproved"}
    (HERE / "a64-recheck-result.json").write_text(json.dumps(result, indent=2) + "\n")
    print("AArch64 NEON full stripe: 2 bidirectional function checks passed")


if __name__ == "__main__":
    main()
