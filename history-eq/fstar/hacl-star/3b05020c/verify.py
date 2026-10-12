"""Recover the exact historical F* pair and audit its extraction qualifier."""

from pathlib import Path
import hashlib
import os
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/hacl-star"
commit = "3b05020c34942583ee816922cda070d3d5febc66"
path = "code/curve25519/Hacl.Bignum.Parameters.fst"
old_id = "32beb5cc2d725e9f8e46d059b1fc6029d52a4794"
new_id = "9c6363f0bf7f687c6fe5ab6e060dbce6bd5979ad"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}

def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env).decode().strip()

assert git("rev-parse", f"{commit}^:{path}") == old_id
assert git("rev-parse", f"{commit}:{path}") == new_id
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit) == path
new = subprocess.check_output(["git", "-C", str(repo), "cat-file", "blob", new_id], env=env)
qualifier = b"inline_for_extraction\nlet mask_51 :"
assert new.count(qualifier) == 1
old = new.replace(qualifier, b"let mask_51 :")

def blob_id(data):
    return hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()

assert blob_id(old) == old_id
assert blob_id(new) == new_id
(here / "Hacl.Bignum.Parameters.old.fst").write_bytes(old)
(here / "Hacl.Bignum.Parameters.new.fst").write_bytes(new)
(here / "verification.log").write_text(
    "Exact old/new Git blobs match. The only difference is one "
    "inline_for_extraction qualifier on mask_51.\n"
)
print("Exact Git blobs recovered; only one extraction qualifier differs")
