"""Audit the historical range methods and prove their pointwise membership formula."""

import hashlib
import json
import os
from pathlib import Path
import subprocess

HERE = Path(__file__).resolve().parent
ROOT = HERE.parents[3]
REPO = ROOT / "benchmarks/repos/RoaringBitmap"
COMMIT = "028f3a5f40d08ade26724fad16e4fdf7256b46ea"
PATH = "RoaringBitmap/src/main/java/org/roaringbitmap/RoaringBitmap.java"


def git(revision, path):
    return subprocess.check_output(
        ("git", "-C", str(REPO), "show", f"{revision}:{path}"),
        env={**os.environ, "GIT_NO_LAZY_FETCH": "1"},
    )


def main():
    old = git(COMMIT + "^", PATH)
    new = git(COMMIT, PATH)
    assert b"bitmap.add(min, max);" in old
    assert b"bitmap.add(min, max);" not in new
    assert b"if (rangeStart >= rangeEnd)" in old
    assert b"for (int hb = hbStart; hb <= hbLast; ++hb)" in old
    assert b"if (min >= max)" in new
    assert b"while (i < hbLast)" in new
    assert b"rangeOfOnes(lbStart, firstEnd)" in new
    assert b"rangeOfOnes(0, lbLast + 1)" in new
    util_path = "RoaringBitmap/src/main/java/org/roaringbitmap/Util.java"
    util_oids = [subprocess.check_output(
        ("git", "-C", str(REPO), "rev-parse", f"{rev}:{util_path}"), text=True,
        env={**os.environ, "GIT_NO_LAZY_FETCH": "1"}).strip()
        for rev in (COMMIT + "^", COMMIT)]
    assert util_oids[0] == util_oids[1]
    z3 = ROOT / "benchmarks/tools/kuiper-package/inst/lib/fstar/z3-4.13.3/bin/z3"
    result = subprocess.run((str(z3), str(HERE / "range-membership.smt2")),
                            capture_output=True, text=True, check=True)
    assert result.stdout.splitlines() == ["unsat", "unsat", "sat"], result.stdout
    (HERE / "z3.log").write_text(result.stdout)
    (HERE / "source-audit.json").write_text(json.dumps({
        "commit": COMMIT,
        "source_sha256": {"parent": hashlib.sha256(old).hexdigest(),
                          "child": hashlib.sha256(new).hexdigest()},
        "unchanged_util_git_oid": util_oids[0],
        "queries": ["old_vs_new_membership", "old_vs_interval_spec",
                    "exclusive_lower_bound_negative_control"],
        "results": result.stdout.splitlines(),
    }, indent=2) + "\n")
    print("historical source audited; old/new membership and interval spec agree")


if __name__ == "__main__":
    main()
