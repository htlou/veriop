#!/usr/bin/env python3
"""Recheck the archived AVX2-to-AVX512 XXH3 stripe-accumulation proofs."""

import hashlib
import json
import os
from pathlib import Path
import re
import subprocess
from tempfile import TemporaryDirectory


HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "history-eq/repos/xxHash"
COMMIT = "4b1237686209"
ENV = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
CLANG = ROOT / "alive2/toolchain/usr/lib/llvm-20/bin/clang"
OPT = ROOT / "alive2/toolchain/usr/lib/llvm-20/bin/opt"
ALIVE = ROOT / "alive2/build/alive2/alive-tv"

full = subprocess.check_output(["git", "-C", str(REPO), "rev-parse", COMMIT], text=True, env=ENV).strip()
sources = {}
for side, revision in (("old", full + "^"), ("new", full)):
    sources[side] = {}
    for name in ("xxh3.h", "xxhash.c", "xxhash.h"):
        oid = subprocess.check_output(["git", "-C", str(REPO), "rev-parse", f"{revision}:{name}"], text=True, env=ENV).strip()
        assert subprocess.check_output(["git", "hash-object", str(HERE / side / name)], text=True).strip() == oid
        sources[side][name] = oid
assert sources["old"]["xxh3.h"] != sources["new"]["xxh3.h"]

checks = {}
for width in (64, 128):
    case = HERE / f"r_raw_lanes{width}"
    prior = json.loads((case / "result.json").read_text())
    assert prior["verdict"] == "EQUIV" and prior["bounded"] is False
    assert len(prior["functions"]) == 8
    assert set(prior["functions"]) == {f"target_acc512_{width}_lane{i}" for i in range(8)}
    assert all(f["fwd"] == f["bwd"] == "correct" for f in prior["functions"].values())
    assert "-mavx512f" in prior["cflags"] and "-DXXH_NO_INLINE_HINTS=1" in prior["cflags"]
    with TemporaryDirectory(prefix=f"xxh-{COMMIT}-l{width}-") as temporary:
        modules = {}
        for side in ("old", "new"):
            archived = case / f"{side}.ll"
            expected = prior[f"{side}_ll_sha256"]
            assert hashlib.sha256(archived.read_bytes()).hexdigest() == expected
            command = prior[f"{side}_compile"][:]
            assert command[0] == "clang" and command[-2] == "-o"
            command[0] = str(CLANG)
            command[-1] = str(Path(temporary) / f"{side}.ll")
            subprocess.run(command, cwd=HERE, check=True)
            rebuilt = Path(command[-1])
            assert hashlib.sha256(rebuilt.read_bytes()).hexdigest() == expected
            assert not re.search(r"\bcall\b", rebuilt.read_text())
            subprocess.run([str(OPT), "-passes=verify", "-disable-output", str(rebuilt)], check=True)
            modules[side] = rebuilt
        assert modules["old"].read_bytes() != modules["new"].read_bytes()
        for direction, source, target in (("fwd", "old", "new"), ("bwd", "new", "old")):
            run = subprocess.run([str(ALIVE), "--always-verify", "--smt-to=60000", "-quiet",
                                  str(modules[source]), str(modules[target])],
                                 capture_output=True, text=True, timeout=90)
            log = run.stdout + run.stderr
            (case / f"recheck-{direction}.log").write_text(log)
            assert run.returncode == 0 and "8 correct transformations" in log, (width, direction, log)
            assert "0 incorrect transformations" in log and "0 failed-to-prove transformations" in log
            assert "0 Alive2 errors" in log
        checks[str(width)] = {"lanes": 8, "old_to_new": "correct", "new_to_old": "correct",
                              "old_ir_sha256": prior["old_ll_sha256"], "new_ir_sha256": prior["new_ll_sha256"]}

report = {"commit": full, "verdict": "EQUIV_PARTIAL", "whole_commit_verdict": "UNKNOWN",
          "scope": "all eight output lanes of one XXH3_accumulate_512 stripe for 64-bit and 128-bit modes, old AVX2 versus new AVX512, arbitrary 64-byte accumulator/input/secret values under the recorded Clang 20 flags",
          "source_blobs": sources, "checks": checks}
(HERE / "revalidated-lanes.json").write_text(json.dumps(report, indent=2) + "\n")
print(json.dumps({"verdict": report["verdict"], "checks": checks}))
