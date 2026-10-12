#!/usr/bin/env python3
"""Pin the two exact changed production Java classes and their Git diff."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/RoaringBitmap"
commit = "232f2e7bddb5133aa4666139094e3d48efbf7e48"
base = "roaringbitmap/src/main/java/org/roaringbitmap/"
paths = [base + "RoaringBitmap.java", base + "buffer/MutableRoaringBitmap.java"]
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env)


changed = git("diff", "--name-only", commit + "^", commit).decode().splitlines()
assert changed == paths, changed
diff = git("diff", commit + "^", commit, "--", *paths)
diff_path = here / "source.diff"
if diff_path.exists():
    assert diff_path.read_bytes() == diff
else:
    diff_path.write_bytes(diff)

manifest = {
    "commit": commit,
    "parent": git("rev-parse", commit + "^").decode().strip(),
    "changed_paths": changed,
    "sha256": {},
}
for path in paths:
    name = Path(path).stem
    manifest["sha256"][name] = {}
    for side, rev in (("old", commit + "^"), ("new", commit)):
        source = git("show", f"{rev}:{path}")
        target = here / f"{name}.{side}.txt"
        if target.exists():
            assert target.read_bytes() == source
        else:
            target.write_bytes(source)
        manifest["sha256"][name][side] = hashlib.sha256(source).hexdigest()
        assert b"public boolean checkedRemove(final int x)" in source
run = git("show", f"{commit}:" + base + "RunContainer.java")
run_path = here / "RunContainer.historical.txt"
if run_path.exists():
    assert run_path.read_bytes() == run
else:
    run_path.write_bytes(run)
manifest["unchanged_run_container_sha256"] = hashlib.sha256(run).hexdigest()
(here / "source_manifest.json").write_text(json.dumps(manifest, indent=2) + "\n")
print("Exact old/new checkedRemove classes and diff verified")
