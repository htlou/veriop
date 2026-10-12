#!/usr/bin/env python3
"""Audit the extraction-only diff and attempt both historical F* interfaces."""

import json
import os
import subprocess
import tempfile
from pathlib import Path

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/hacl-star"
fstar = root / "benchmarks/tools/everparse-2026.10.06/everparse/bin/fstar.exe"
z3 = root / "benchmarks/tools/kuiper-package/inst/lib/fstar/z3-4.13.3/bin/z3"
revisions = {
    "old": "8adb2618b501f53db2abd7257e452e4def0a933b",
    "new": "6a279c30997faca82599a29ff89f6899ed2a9c3f",
}
paths = ("code/Makefile", "code/hash-new/Hacl.Hash.Common.fsti",
         "code/hash-new/Hacl.Hash.Common.fsti.hints")
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def blob(rev, path):
    oid = subprocess.check_output(
        ["git", "-C", str(repo), "rev-parse", f"{rev}:{path}"],
        env=env, text=True,
    ).strip()
    return oid, subprocess.check_output(
        ["git", "-C", str(repo), "cat-file", "blob", oid], env=env
    )


changed = subprocess.check_output(
    ["git", "-C", str(repo), "diff-tree", "--no-commit-id", "--name-only", "-r",
     revisions["new"]], env=env, text=True,
).splitlines()
assert tuple(sorted(changed)) == paths, changed
sources = {label: {path: blob(rev, path) for path in paths}
           for label, rev in revisions.items()}
old = sources["old"][paths[1]][1]
new = sources["new"][paths[1]][1]
assert old.count(b"\nlet hash_st") == 1
assert new == old.replace(b"\nlet hash_st", b"\ninline_for_extraction\nlet hash_st", 1)
old_make = sources["old"][paths[0]][1]
new_make = sources["new"][paths[0]][1]
assert old_make.count(b"-warn-error +9") == 1
assert new_make == old_make.replace(b"-warn-error +9", b"-warn-error @4", 1)
print("source: hash_st declaration body identical; only extraction marker and warning option changed")
assert sources["old"][paths[2]][0] != sources["new"][paths[2]][0]
print("proof hint cache: changed binary blob recorded")

result = {
    "revisions": revisions,
    "source_blobs": {label: {path: oid for path, (oid, _) in files.items()}
                     for label, files in sources.items()},
    "fstar": str(fstar.relative_to(root)),
    "runs": {},
}
with tempfile.TemporaryDirectory(prefix="veriop-hacl-6a-") as temp:
    for label in revisions:
        target = Path(temp) / label / "Hacl.Hash.Common.fsti"
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_bytes(sources[label][paths[1]][1])
        run = subprocess.run(
            [str(fstar), "--cache_off", "--smt", str(z3),
             "--include", str(repo / "specs"), str(target)],
            capture_output=True, text=True, timeout=60,
        )
        output = run.stdout + run.stderr
        assert run.returncode != 0 and "Module Spec.Hash.Common cannot be found" in output, output
        (here / f"fstar-{label}.log").write_text(output)
        result["runs"][label] = {"exit_code": run.returncode,
                                  "error": "historical Spec.Hash.Common dependency unavailable"}
        print(f"{label}: F* stops at unavailable Spec.Hash.Common before target verification")

(here / "result.json").write_text(json.dumps(result, indent=2) + "\n")
