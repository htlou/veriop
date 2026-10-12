"""Lock the sampled interval optimization to its later exact revert."""

import json
import os
from pathlib import Path
import subprocess


here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/regex"
commit = "6d2b09ed6fbc136cca007ce0c57ec9cbae16f3b4"
revert = "f082244720d02fea04185c654e3d0dc95e39309d"
path = "regex-syntax/src/hir/interval.rs"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def git(*args):
    return subprocess.check_output(
        ["git", "-C", str(repo), *args], env=env, text=True
    ).strip()


old = git("rev-parse", f"{commit}^:{path}")
new = git("rev-parse", f"{commit}:{path}")
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit) == path
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", revert) == path
assert git("rev-parse", f"{revert}^:{path}") == new
assert git("rev-parse", f"{revert}:{path}") == old
assert subprocess.run(
    ["git", "-C", str(repo), "cat-file", "-e", old], env=env,
    capture_output=True
).returncode == 0
assert subprocess.check_output(
    ["git", "hash-object", str(here / "interval.new.rs")], text=True
).strip() == new
assert subprocess.check_output(
    ["git", "hash-object", str(here / "interval.old.rs")], text=True
).strip() == old
message = git("show", "-s", "--format=%B", revert)
assert f"This reverts commit {commit}." in message
issues = ("63155", "63153", "63168")
assert all(f"id={issue}" in message for issue in issues)
assert subprocess.check_output(
    ["bash", str(here / "verify.sh")], text=True
).strip().splitlines() == [
    "old: [Range(1, 6)]",
    "new: [Range(1, 2), Range(1, 6)]",
    "old negated: [Range(0, 0), Range(7, 255)]",
    "new negated: [Range(0, 0), Range(0, 3), Range(7, 255)]",
]

result = {
    "optimization_commit": commit,
    "revert_commit": revert,
    "changed_path": path,
    "old_blob": old,
    "new_blob": new,
    "revert_restores_exact_old_blob": True,
    "old_blob_available_locally": True,
    "old_blob_archived_path": "history-eq/rust/regex/6d2b09ed/interval.old.rs",
    "new_blob_available_locally": True,
    "new_blob_archived_path": "history-eq/rust/regex/6d2b09ed/interval.new.rs",
    "upstream_revert_cites_fuzz_issues": list(issues),
    "verdict": "NOT_EQUIV",
    "scope": "IntervalSet<Range> byte-1 membership after a bridging push and negation, with a valid u8 Interval implementation",
    "checker": "exact-source native Rust witness in debug and optimized builds; Aeneas extraction incomplete",
    "reason": "after push and negate, byte 1 is absent in old but present in optimized child",
}
(here / "source-audit.json").write_text(json.dumps(result, indent=2) + "\n")
print("Exact source and native interval counterexample confirmed; verdict NOT_EQUIV")
