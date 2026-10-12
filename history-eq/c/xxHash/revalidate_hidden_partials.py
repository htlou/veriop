#!/usr/bin/env python3
"""Recheck scoped Alive2 equalities hidden by four commit-level UNKNOWN labels."""

import hashlib
import json
import os
from pathlib import Path
import subprocess


here = Path(__file__).resolve().parent
root = here.parents[2]
repo = root / "history-eq/repos/xxHash"
alive = root / "alive2/build/alive2/alive-tv"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
selected = {
    "7ad2406": "opt_armv5_xxh32_len16",
    "0117f18": "api64_len256_msvc_x64",
    "4ff3a1b": "r_api2",
    "f534e5b": "r_api_avx2",
}


def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env, text=True).strip()


records = []
for short, unit in selected.items():
    commit = git("rev-parse", short + "^{commit}")
    folder = here / short / unit
    archived = json.loads((folder / "result.json").read_text())
    assert archived["verdict"] == "EQUIV" and archived["functions"]
    source_blobs = {}
    for side, revision in (("old", commit + "^"), ("new", commit)):
        for path in sorted((here / short / side).iterdir()):
            if not path.is_file():
                continue
            data = path.read_bytes()
            digest = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
            assert digest == git("rev-parse", revision + ":" + path.name), (short, side, path.name)
            source_blobs[side + "/" + path.name] = digest
        ir = (folder / (side + ".ll")).read_bytes()
        assert hashlib.sha256(ir).hexdigest() == archived[side + "_ll_sha256"]
    checks = []
    for direction, first, second in (("forward", "old", "new"), ("backward", "new", "old")):
        saved = archived["fwd_cmd" if direction == "forward" else "bwd_cmd"]
        flags = [arg for arg in saved[1:-2] if not arg.startswith("--func=")]
        command = [str(alive), *flags,
                   *("--func=" + name for name in archived["functions"]), "--quiet",
                   str(folder / (first + ".ll")), str(folder / (second + ".ll"))]
        run = subprocess.run(command, capture_output=True, text=True, timeout=90, env=env)
        log = run.stdout + run.stderr
        log_path = here / short / (unit + "-" + direction + "-rerun.log")
        log_path.write_text(log)
        count = len(archived["functions"])
        assert run.returncode == 0 and f"{count} correct transformations" in log
        assert "0 incorrect transformations" in log and "0 failed-to-prove transformations" in log
        assert "0 Alive2 errors" in log, (short, unit, direction, log[-500:])
        checks.append({"direction": direction, "matched_functions": count,
                       "log": str(log_path.relative_to(root))})
    records.append({"commit": commit, "unit": unit, "bounded": archived["bounded"],
                    "functions": sorted(archived["functions"]), "source_blobs": source_blobs,
                    "checks": checks, "verdict": "EQUIV_PARTIAL"})

out = here / "revalidated-hidden-partials.json"
out.write_text(json.dumps({"scope": "selected old/new IR pairs; remaining paths in each commit unproved",
                           "records": records}, indent=2) + "\n")
print(json.dumps({"revalidated_commits": len(records),
                  "bidirectional_checks": sum(len(r["checks"]) for r in records)}))
