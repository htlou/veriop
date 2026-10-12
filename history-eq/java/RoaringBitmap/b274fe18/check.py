#!/usr/bin/env python3
"""Map the bit-63 SMT witness to exact historical changed Java methods."""

import json
import os
import re
import subprocess
from pathlib import Path

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/RoaringBitmap"
z3 = root / "benchmarks/tools/kuiper-package/inst/lib/fstar/z3-4.13.3/bin/z3"
revisions = {
    "old": "6a8093c7a685d81d9a07b8f295a6ae68374b1ae5",
    "new": "b274fe181ae94a810280b2c8ae62deef86ecef1f",
}
names = ["BitmapContainer", "RunContainer", "buffer/MappeableBitmapContainer",
         "buffer/MappeableRunContainer"]
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
source_ids = {}
for label, rev in revisions.items():
    source_ids[label] = {}
    for name in names:
        path = f"RoaringBitmap/src/main/java/org/roaringbitmap/{name}.java"
        oid = subprocess.check_output(
            ["git", "-C", str(repo), "rev-parse", f"{rev}:{path}"], env=env, text=True
        ).strip()
        source = subprocess.check_output(
            ["git", "-C", str(repo), "cat-file", "blob", oid], env=env, text=True
        )
        flat = re.sub(r"\s+", "", source)
        source_ids[label][path] = oid
        if name.endswith("RunContainer"):
            assert "this.nbrruns=1;" in flat
            assert "(char)(lastOfRun-1-firstOfRun)" in flat
            if label == "old":
                assert "if(x.contains((char)runValue)){" in flat
            else:
                assert "if(x.isNonEmptyInRange(runStart,runEnd+1)){" in flat
        else:
            assert "(1L<<i)" in flat and "bitmap" in flat
            if label == "old":
                assert "(1L<<i))!=0" in flat
            else:
                assert "(~0L<<start)&(~0L>>>-end)" in flat
                assert "))>0;" in flat

answer = subprocess.check_output([str(z3), str(here / "bit63.smt2")], text=True).strip()
assert answer == "unsat", answer
(here / "source-ids.json").write_text(json.dumps(source_ids, indent=2) + "\n")
(here / "z3.log").write_text(answer + "\n")
print("source-matched bit-63 return mismatch: Z3 unsat")
