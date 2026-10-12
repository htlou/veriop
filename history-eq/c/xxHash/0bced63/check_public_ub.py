#!/usr/bin/env python3
"""Reproduce the public seeded-hash definedness regression."""

import json
import os
from pathlib import Path
import subprocess
import tempfile

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "history-eq/repos/xxHash"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
commit = subprocess.check_output(
    ["git", "-C", str(repo), "rev-parse", "0bced63"], env=env, text=True
).strip()
assert commit == "0bced63140f6b0a3499c251852be2c1f80aaa664"

result = {"commit": commit, "configuration": "Clang -O1 x86-64-v3 SSE2, XXH_OLD_NAMES",
          "public_api": "XXH3_64bits_withSeed", "seed": "0x8000000000000000",
          "input_length": 256, "sides": {}}
with tempfile.TemporaryDirectory(prefix="veriop-xxh3-ub-") as temp:
    for side, revision in (("old", commit + "^"), ("new", commit)):
        for name in ("xxhash.h", "xxh3.h"):
            historical = subprocess.check_output(
                ["git", "-C", str(repo), "show", f"{revision}:{name}"], env=env
            )
            assert (here / side / name).read_bytes() == historical, (side, name)
        exe = Path(temp) / side
        common = ["clang", "-O1", "-march=x86-64-v3", "-DXXH_VECTOR=XXH_SSE2",
                  "-DXXH_OLD_NAMES", "-I", str(here / side),
                  str(here / "public_ub_probe.c"), "-o", str(exe)]
        subprocess.run(common + ["-fsanitize=undefined", "-fno-sanitize-recover=all"],
                       check=True, capture_output=True, text=True)
        run = subprocess.run([str(exe)], capture_output=True, text=True)
        (here / f"public-{side}-ubsan.log").write_text(run.stdout + run.stderr)
        result["sides"][side] = {"exit_code": run.returncode, "stdout": run.stdout.strip(),
                                  "ubsan_signed_overflow": "negation of -9223372036854775808" in run.stderr}

old, new = result["sides"]["old"], result["sides"]["new"]
assert old["exit_code"] == 0 and old["stdout"] and not old["ubsan_signed_overflow"]
assert new["exit_code"] != 0 and new["ubsan_signed_overflow"]
(here / "public-ub-result.json").write_text(json.dumps(result, indent=2) + "\n")
print(json.dumps(result["sides"]))
