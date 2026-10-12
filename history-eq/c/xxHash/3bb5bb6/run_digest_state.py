"""Check all reachable XXH32 digest-buffer sizes against historical sources."""

from concurrent.futures import ThreadPoolExecutor
from collections import Counter
import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/xxHash"
checker = root / "alive2/build/alive2/alive-tv"
runner = here.parent / "_tools/alive_check_f.py"
wrapper = here / "wrap_digest_state.c"
ir_dir = here / "digest-state-one"
out = here / "digest-state-all"
logs = out / "logs"
logs.mkdir(parents=True, exist_ok=True)
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
child = "3bb5bb64baff1035d562b601eec3e50f8313e1e1"


def git(*args):
    return subprocess.check_output(("git", "-C", str(repo), *args), env=env).decode().strip()


assert git("diff-tree", "--no-commit-id", "--name-only", "-r", child) == "xxhash.c"
parent = git("rev-parse", child + "^")
oids = {}
for side, commit in (("old", parent), ("new", child)):
    for path in ("xxhash.c", "xxhash.h"):
        local = here / side / path
        oid = subprocess.check_output(("git", "hash-object", str(local))).decode().strip()
        assert oid == git("rev-parse", f"{commit}:{path}"), (side, path)
        oids[f"{side}/{path}"] = oid

base = ["python3", str(runner), "--out", str(ir_dir), "--old-inc", str(here / "old"),
        "--new-inc", str(here / "new"), "--wrapper", str(wrapper),
        "--extra-cflags=-mllvm -inline-threshold=100000", "--alive-func", "target_le_0",
        "--func", "target_le_0", "--smt-to", "15000", "--timeout", "90"]
subprocess.run(base, cwd=root, check=True, capture_output=True, text=True)
compiled = json.loads((ir_dir / "result.json").read_text())
assert compiled["functions"]["target_le_0"]["verdict"] == "EQUIV"
for side in ("old", "new"):
    assert hashlib.sha256((ir_dir / f"{side}.ll").read_bytes()).hexdigest() == compiled[f"{side}_ll_sha256"]


def check(name):
    sides = {}
    for direction, source, target in (("fwd", "old", "new"), ("bwd", "new", "old")):
        cmd = [str(checker), "--smt-to=60000", "--always-verify", f"--func={name}",
               str(ir_dir / f"{source}.ll"), str(ir_dir / f"{target}.ll")]
        try:
            proc = subprocess.run(cmd, capture_output=True, text=True, timeout=90)
            output = proc.stdout + proc.stderr
            correct = (proc.returncode == 0 and output.count("Transformation seems to be correct!") == 1
                       and "Transformation doesn't verify" not in output and "ERROR:" not in output)
        except subprocess.TimeoutExpired as exc:
            output = (exc.stdout or b"").decode(errors="replace") if isinstance(exc.stdout, bytes) else (exc.stdout or "")
            output += "\nPROCESS TIMEOUT\n"
            correct = False
        (logs / f"{name}-{direction}.log").write_text(" ".join(cmd) + "\n" + output)
        sides[direction] = "correct" if correct else "unverified"
    return name, {"verdict": "EQUIV" if set(sides.values()) == {"correct"} else "UNKNOWN", **sides}


names = [f"target_{endian}_{length}" for endian in ("le", "be") for length in range(16)]
with ThreadPoolExecutor(max_workers=4) as pool:
    results = dict(pool.map(check, names))
report = {"parent": parent, "child": child, "historical_git_oids": oids,
          "wrapper_sha256": hashlib.sha256(wrapper.read_bytes()).hexdigest(),
          "old_ll_sha256": compiled["old_ll_sha256"], "new_ll_sha256": compiled["new_ll_sha256"],
          "scope": "XXH32_digest_endian with valid memsize 0..15, both endian modes, x86-64",
          "cases": results, "counts": dict(Counter(v["verdict"] for v in results.values()))}
(out / "result.json").write_text(json.dumps(report, indent=2) + "\n")
print(report["counts"])
