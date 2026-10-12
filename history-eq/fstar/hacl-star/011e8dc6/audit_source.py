#!/usr/bin/env python3
"""Bind the wrapper identity proof to the exact historical HACL* diff."""

import hashlib
import subprocess
from pathlib import Path

root = Path(__file__).resolve().parents[4]
repo = root / "benchmarks/repos/hacl-star"
commit = "011e8dc629848c8f382aa29da574f35329507e05"
parent = "4408054ef8dcf4a7feb2a34b33218f302ede4d1c"
paths = (
    ("code/ed25519/Hacl.Impl.Ed25519.Ladder.fst", "20ul"),
    ("code/k256/Hacl.Impl.K256.PointMul.fst", "15ul"),
)


def git(*args):
    return subprocess.check_output(("git", "-C", str(repo), *args))


assert git("rev-parse", f"{commit}^").decode().strip() == parent
diff = git("diff", parent, commit, "--", *(p for p, _ in paths))
assert hashlib.sha256(diff).hexdigest() == "763a729dd37f567f1a617cb40d08c3dc391266f07be259cf068b9314fa37c307"
assert diff == (root / "history-eq/fstar/hacl-star/source-screening/011e8dc6.source.diff").read_bytes()

for path, length in paths:
    old = git("show", f"{parent}:{path}").decode()
    new = git("show", f"{commit}:{path}").decode()
    direct = "(BE.lprecomp_get_consttime len ctx_len k l table_len)"
    assert old.count(direct) == 4 and new.count(direct) == 0
    assert new.count("    precomp_get_consttime\n") == 4
    wrapper = new.split("let precomp_get_consttime ctx a table bits_l tmp =", 1)[1].split("inline_for_extraction noextract", 1)[0]
    for binding in (f"let len = {length} in", "let ctx_len = 0ul in", "let k = mk_", "let l = 4ul in", "let table_len = 16ul in"):
        assert binding in wrapper, (path, binding)
    assert "BE.lprecomp_get_consttime len ctx_len k l table_len ctx a table bits_l tmp" in wrapper
    print(f"{path}: 4 old direct callbacks -> 4 new wrappers, constants and body match")

print("exact historical diff and both callback replacements audited")
