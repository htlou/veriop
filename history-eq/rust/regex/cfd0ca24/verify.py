"""Recover and audit the exact historical prefilter-inlining change."""

from pathlib import Path
import hashlib
import os
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/regex"
commit = "cfd0ca2428c986777e21542a531b450178bc0cf2"
path = "regex-automata/src/meta/strategy.rs"
old_id = "ea6c6ab576fb26add334853e911495f7fc1cb387"
new_id = "5b96d888a0be4176bc76f9ab96d00a2bcce66b60"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}
def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env).decode().strip()

assert git("rev-parse", f"{commit}^:{path}") == old_id
assert git("rev-parse", f"{commit}:{path}") == new_id
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit) == path
old = subprocess.check_output(["git", "-C", str(repo), "cat-file", "blob", old_id], env=env)
start = old.index(b"impl<P: PrefilterI> Strategy for Pre<P> {")
end = old.index(b"\n}", start)
methods = ("search", "search_half", "is_match", "search_slots",
           "which_overlapping_matches", "group_info")
annotation = b'    #[cfg_attr(feature = "perf-inline", inline(always))]\n'
new = old
for method in methods:
    needle = f"    fn {method}(".encode()
    assert old[start:end].count(needle) == 1, method
    position = new.index(needle, start, end + len(methods) * len(annotation))
    assert new[position - 1:position] == b"\n"
    new = new[:position] + annotation + new[position:]

def blob_id(data):
    return hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()

assert blob_id(old) == old_id
assert blob_id(new) == new_id
assert new.count(annotation) - old.count(annotation) == len(methods)
assert new.replace(annotation, b"") == old.replace(annotation, b"")
(here / "strategy.old.rs").write_bytes(old)
(here / "strategy.new.rs").write_bytes(new)
(here / "verification.log").write_text(
    "Exact old and new Git blobs match; the child adds only six "
    "#[cfg_attr(feature = \"perf-inline\", inline(always))] lines "
    "to Pre<P> Strategy methods.\n"
)
print("Exact Git blobs recovered; only six conditional inline hints differ")
