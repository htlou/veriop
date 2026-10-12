#!/usr/bin/env python3
"""Rebuild and recheck the scoped overflow-predicate equivalence."""

import hashlib
import json
import os
from pathlib import Path
import subprocess
from tempfile import TemporaryDirectory


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/fast_float"
clang = root / "alive2/toolchain/usr/lib/llvm-20/bin/clang++"
alive = root / "alive2/build/alive2/alive-tv"
commit = "a7249f86ededbe739dcb29f13b31144130ceaba7"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


assert git("diff", "--name-only", commit + "^", commit, "--", "include/").decode().splitlines() == [
    "include/fast_float/ascii_number.h"]
archived = json.loads((here / "entry.json").read_text())
source_blobs = {}
with TemporaryDirectory(prefix="ff-a724-overflow-") as directory:
    temp = Path(directory)
    modules = {}
    headers = []
    for side, revision in (("old", commit + "^"), ("new", commit)):
        include = temp / side / "fast_float"
        include.mkdir(parents=True)
        for name in ("ascii_number.h", "float_common.h", "constexpr_feature_detect.h"):
            data = git("show", revision + ":include/fast_float/" + name)
            (include / name).write_bytes(data)
            digest = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
            assert digest == git("rev-parse", revision + ":include/fast_float/" + name).decode().strip()
            source_blobs[side + "/" + name] = digest
        headers.append(include / "float_common.h")
        module = temp / (side + ".ll")
        subprocess.run([str(clang), "-std=c++20", "-O2", "-S", "-emit-llvm",
                        "-isystem", "/usr/include/c++/11",
                        "-isystem", "/usr/include/x86_64-linux-gnu/c++/11",
                        "-I", str(temp / side),
                        *(["-DHISTORICAL_OLD"] if side == "old" else []),
                        str(here.relative_to(root) / "overflow_lemma.cpp"), "-o", str(module)],
                       check=True, env=env)
        assert hashlib.sha256(module.read_bytes()).hexdigest() == archived["lemma_ir_sha256"][side]
        modules[side] = module

    tables = subprocess.run(["python3", str(here / "check_tables.py"), *(str(p) for p in headers)],
                            capture_output=True, text=True, check=True, env=env)
    assert tables.stdout.count("35/35 table power relations verified") == 2
    (here / "table-check-rerun.log").write_text(tables.stdout + tables.stderr)
    checks = []
    for direction, first, second in (("forward", "old", "new"), ("backward", "new", "old")):
        run = subprocess.run([str(alive), "--quiet", "--always-verify",
                              str(modules[first]), str(modules[second])],
                             capture_output=True, text=True, timeout=90, env=env)
        log = run.stdout + run.stderr
        path = here / ("lemma-" + direction + "-rerun.log")
        path.write_text(log)
        assert run.returncode == 0 and "35 correct transformations" in log
        assert "0 incorrect transformations" in log and "0 failed-to-prove transformations" in log
        assert "0 Alive2 errors" in log
        checks.append({"direction": direction, "checked_bases": 35, "log": str(path.relative_to(root))})

record = {"commit": commit, "verdict": "EQUIV_PARTIAL", "checker": "Alive2",
          "scope": "source-mapped max-length integer overflow predicate, canonical digits, bases 2..36; whole parser unproved",
          "source_blobs": source_blobs, "checks": checks,
          "table_log": "history-eq/c/fast_float/a7249f86/table-check-rerun.log"}
(here / "revalidated-overflow.json").write_text(json.dumps(record, indent=2) + "\n")
print(json.dumps({"verdict": record["verdict"], "directions": len(checks), "bases": 35}))
