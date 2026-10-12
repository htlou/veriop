#!/usr/bin/env python3
"""Recheck all fixed XXH64 one-shot lengths below one 32-byte stripe."""

import hashlib
import json
from pathlib import Path
import re
import subprocess
from tempfile import TemporaryDirectory


case = Path(__file__).resolve().parent
historical = case.parent
root = historical.parents[3]
store = root / "history-eq/repos/xxHash"
clang = root / "alive2/toolchain/usr/lib/llvm-20/bin/clang"
alive = root / "alive2/build/alive2/alive-tv"
commit = "0e5dab97db33b84dc21bbede3b31fa3ad5954ad8"


def run(cmd):
    return subprocess.run(cmd, check=True, capture_output=True, text=True, timeout=30)


blobs = {}
for side, revision in (("old", commit + "^"), ("new", commit)):
    for name in ("xxhash.c", "xxhash.h"):
        data = (historical / side / name).read_bytes()
        oid = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
        expected = run(["git", "-C", str(store), "rev-parse", revision + ":" + name]).stdout.strip()
        assert oid == expected, (side, name)
        blobs[f"{side}/{name}"] = oid

results = []
different_targets = 0
with TemporaryDirectory(prefix="xxh64-short-range-") as temporary:
    temp = Path(temporary)
    for length in range(32):
        directory = historical / f"api_xxh64_len{length}"
        archived = json.loads((directory / "result.json").read_text())
        assert archived["verdict"] == "EQUIV"
        assert archived["functions"]["target_oneshot"]["verdict"] == "EQUIV"
        modules = {}
        for side in ("old", "new"):
            cmd = archived[f"{side}_compile"].copy()
            assert f"-DLEN={length}" in cmd and "-DH64" in cmd
            assert str(directory / "wrapper.c") in cmd
            assert str(historical / side) in cmd
            cmd[0] = str(clang)
            cmd[-1] = str(temp / f"{side}-{length}.ll")
            run(cmd)
            module = Path(cmd[-1])
            normalized = re.sub(r" nocapture\b", "", module.read_text())
            normalized = re.sub(r", ![A-Za-z.]+ ![0-9]+", "", normalized)
            module.write_text(normalized)
            digest = hashlib.sha256(module.read_bytes()).hexdigest()
            assert digest == archived[f"{side}_ll_sha256"], (length, side)
            modules[side] = module
        pattern = re.compile(r"^define [^\n]*@target_oneshot\([^\n]*\)\s*[^\n]*\{.*?^\}",
                             re.M | re.S)
        bodies = [pattern.search(modules[side].read_text()) for side in ("old", "new")]
        assert all(bodies), length
        differs = bodies[0].group() != bodies[1].group()
        different_targets += differs
        for direction, src, tgt in (("forward", "old", "new"), ("backward", "new", "old")):
            cmd = [str(alive), str(modules[src]), str(modules[tgt]),
                   "--func=target_oneshot", "--always-verify", "--fail-src-ub",
                   "--src-unroll=8", "--tgt-unroll=8", "--smt-to=30000", "--quiet"]
            output = run(cmd).stdout
            assert "1 correct transformations" in output, (length, direction, output)
            assert "0 incorrect transformations" in output
            assert "0 failed-to-prove transformations" in output
            assert "0 Alive2 errors" in output
            results.append({"length": length, "direction": direction,
                            "target_ir_differs": differs,
                            "old_ir_sha256": archived["old_ll_sha256"],
                            "new_ir_sha256": archived["new_ll_sha256"],
                            "command": cmd, "output": output.strip()})

assert len(results) == 64 and different_targets == 31
(case / "result.json").write_text(json.dumps({
    "commit": commit, "source_blobs": blobs,
    "scope": "XXH64 one-shot for each fixed length 0..31, arbitrary input bytes and seed under valid input memory",
    "verdict": "EQUIV_BOUNDED", "different_target_ir": different_targets,
    "checks": results,
}, indent=2) + "\n")
print(json.dumps({"verdict": "EQUIV_BOUNDED", "checks": len(results)}))
