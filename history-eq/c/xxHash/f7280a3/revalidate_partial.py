#!/usr/bin/env python3
"""Recheck the archived xxHash allocation-path Alive2 relations."""

import hashlib
import json
import os
from pathlib import Path
import subprocess


here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "history-eq/repos/xxHash"
alive = root / "alive2/build/alive2/alive-tv"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
commit = subprocess.check_output(["git", "-C", str(repo), "rev-parse", "f7280a3^{commit}"],
                                 env=env, text=True).strip()

source_blobs = {}
for side, revision in (("old", commit + "^"), ("new", commit)):
    for name in ("xxhash.h", "xxh3.h", "xxhash.c"):
        data = (here / side / name).read_bytes()
        digest = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
        expected = subprocess.check_output(["git", "-C", str(repo), "rev-parse",
                                            revision + ":" + name], env=env, text=True).strip()
        assert digest == expected, (side, name)
        source_blobs[side + "/" + name] = digest

checks = []
for unit, target, expected_backward in (("r_api_t5", "target_xxh32_heap_empty", "incorrect"),
                                        ("r_api_t6", "target_xxh64_heap_empty", "incorrect"),
                                        ("r_api_t7", "target_xxh3_create_free", "correct")):
    folder = here / unit
    archived = json.loads((folder / "result.json").read_text())
    assert set(archived["functions"]) == {target}
    for side in ("old", "new"):
        raw = (folder / (side + ".ll")).read_bytes()
        assert hashlib.sha256(raw).hexdigest() == archived[side + "_ll_sha256"]
    for direction, first, second, expected in (("forward", "old", "new", "correct"),
                                                ("backward", "new", "old", expected_backward)):
        result = subprocess.run([str(alive), "--quiet", "--always-verify", "--func=" + target,
                                 str(folder / (first + ".ll")), str(folder / (second + ".ll"))],
                                capture_output=True, text=True, timeout=60, env=env)
        log = result.stdout + result.stderr
        path = here / (unit + "-" + direction + "-rerun.log")
        path.write_text(log)
        marker = "1 correct transformations" if expected == "correct" else "1 incorrect transformations"
        assert marker in log and "0 Alive2 errors" in log, (unit, direction, log[-500:])
        checks.append({"unit": unit, "target": target, "direction": direction,
                       "verdict": expected, "exit_code": result.returncode,
                       "log": str(path.relative_to(root))})

record = {"commit": commit, "verdict": "REFINES_PARTIAL", "checker": "Alive2",
          "scope": "XXH32/XXH64 empty-input create-reset-digest-free paths refine old to new; XXH3 create-free path bidirectionally equal; data-bearing paths remain unknown",
          "source_blobs": source_blobs, "checks": checks}
(here / "revalidated-partial.json").write_text(json.dumps(record, indent=2) + "\n")
print(json.dumps({"verdict": record["verdict"], "checks": len(checks)}))
