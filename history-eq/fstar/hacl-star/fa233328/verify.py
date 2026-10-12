"""Recover the exact historical F* pair and audit its extraction qualifier."""

from pathlib import Path
import hashlib
import os
import subprocess

here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/hacl-star"
commit = "fa233328204eb9ee38bb633be2e0c70540dc2f66"
path = "code/poly1305/Hacl.Bignum.Modulo.fst"
old_id = "3a647ab4c615d7fa649ba00ff4a4e860043d1892"
new_id = "296332e0f27213b8ca330666da8ddf7a1e64f3f7"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}

def git(*args):
    return subprocess.check_output(["git", "-C", str(repo), *args], env=env).decode().strip()

assert git("rev-parse", f"{commit}^:{path}") == old_id
assert git("rev-parse", f"{commit}:{path}") == new_id
assert git("diff-tree", "--no-commit-id", "--name-only", "-r", commit) == path
new = subprocess.check_output(["git", "-C", str(repo), "cat-file", "blob", new_id], env=env)
qualifier = b"inline_for_extraction\nlet mask_2_42_limb"
assert new.count(qualifier) == 1
old = new.replace(qualifier, b"let mask_2_42_limb")

def blob_id(data):
    return hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()

assert blob_id(old) == old_id
assert blob_id(new) == new_id
(here / "Hacl.Bignum.Modulo.old.fst").write_bytes(old)
(here / "Hacl.Bignum.Modulo.new.fst").write_bytes(new)
(here / "verification.log").write_text(
    "Exact old/new Git blobs match. The only difference is one "
    "inline_for_extraction qualifier on mask_2_42_limb.\n"
)
print("Exact Git blobs recovered; only one extraction qualifier differs")
