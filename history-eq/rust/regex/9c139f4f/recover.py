"""Recover the missing Hir::dot child from the pinned descendant source."""

from pathlib import Path
import hashlib
import os
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/regex"
commit = "9c139f4fa5c64a89075749cd5e57148c8eea8c22"
path = "regex-syntax/src/hir/mod.rs"
old_id = "ae3ba318ee74cdbb824dc4657d39342135681bf5"
new_id = "5db78438894bbf387fb6760386b62cd90ebdd0c3"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}

def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env).decode().strip()

assert git("rev-parse", f"{commit}^:{path}") == old_id
assert git("rev-parse", f"{commit}:{path}") == new_id
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit) == path
old = subprocess.check_output(["git", "-C", str(repo), "cat-file", "blob", old_id], env=env)
descendant = (repo / path).read_bytes()
start = b"    pub fn dot(dot: Dot) -> Hir {"
finish = b"\n    }\n}\n\n/// The underlying kind"

def function_span(source):
    a = source.index(start)
    b = source.index(finish, a) + len(b"\n    }")
    return a, b

a, b = function_span(old)
c, d = function_span(descendant)
new = old[:a] + descendant[c:d] + old[b:]

def blob_id(data):
    return hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()

assert blob_id(old) == old_id
assert blob_id(new) == new_id
(here / "hir.old.rs").write_bytes(old)
(here / "hir.new.rs").write_bytes(new)
(here / "source-recovery.log").write_text(
    f"Exact parent {old_id} and child {new_id} Git blobs recovered; "
    "the complete commit changes only Hir::dot in one file.\n"
)
print("Recovered exact old/new Hir::dot sources")
