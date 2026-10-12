#!/usr/bin/env python3
"""Check the isolated F* relation against the exact P256 history pair."""

import hashlib
import subprocess
from pathlib import Path

root = Path(__file__).resolve().parents[4]
repo = root / "benchmarks/repos/hacl-star"
case = Path(__file__).resolve().parent
parent = "9a9a5071b845693f5812ca56da7fbd2c537e2a01"
child = "1f18372ba66051d9a781ed8a75f5af441779bdd2"
path = "specs/ecdsap256/Spec.P256.Lemmas.fst"


def git(*args):
    return subprocess.check_output(("git", "-C", str(repo), *args))


assert git("rev-parse", f"{child}^").decode().strip() == parent
diff = git("diff", parent, child, "--", path)
assert hashlib.sha256(diff).hexdigest() == "685b2f60577364b55d7cc60a4df6f30c1aaccc208e5d7ec1f15584f2f244cd47"
assert diff == (root / "history-eq/fstar/hacl-star/source-screening/1f18372b.source.diff").read_bytes()
old = git("show", f"{parent}:{path}").decode()
new = git("show", f"{child}:{path}").decode()
assert "pow x (prime256 - 2) % prime256" in old
assert "exp #prime256 (x % prime256) (prime256 - 2)" in new
assert "val lemma_pow_mod_n_is_fpow" in old and "val lemma_pow_mod_n_is_fpow" in new
source = new.splitlines(True)
proof = (case / "P256Relation.fst").read_text()
for excerpt in ("".join(source[17:87]), "".join(source[123:135]), "".join(source[168:254])):
    assert excerpt in proof
assert "let old_result (n:pos{n > 3}) (x:nat) : elem n = pow x (n - 2) % n" in proof
assert "let new_result (n:pos{n > 3}) (x:nat) : elem n = exp #n (x % n) (n - 2)" in proof
assert "admit" not in proof and "assume val" not in proof
print("exact historical diff, source-derived lemmas, and old/new expressions audited")
