#!/usr/bin/env python3
"""Audit the historical zstd source and the isolated Alive2 model."""

from pathlib import Path
import re
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/zstd"
commit = "c7ae9ffde33a5e114fd71d0a46df75a6e007790b"
path = "lib/zstd.c"


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args])


sources = {}
for revision, name in ((commit + "^", "zstd.old.txt"), (commit, "zstd.new.txt")):
    actual = git("show", f"{revision}:{path}")
    saved = here / name
    if saved.exists():
        assert saved.read_bytes() == actual, name
    else:
        saved.write_bytes(actual)
    sources[name] = actual.decode()

actual_diff = git("diff", commit + "^", commit)
saved_diff = here / "source.diff"
if saved_diff.exists():
    assert saved_diff.read_bytes() == actual_diff
else:
    saved_diff.write_bytes(actual_diff)
assert git("diff", "--name-only", commit + "^", commit).decode().splitlines() == [path]

old = sources["zstd.old.txt"]
new = sources["zstd.new.txt"]
model = (here / "offset_prefix.c").read_text()
old_expr = "((size_t)1 << (nbBits & ((sizeof(offset)*8)-1)))"
new_expr = "offsetPrefix[offsetCode]"
assert old_expr in old and old_expr in model
assert new_expr in new and new_expr in model
assert "if (offsetCode==0) offset = prevOffset" in old
assert "if (offsetCode==0) offset = prevOffset" in new
assert "nbBits = offsetCode - 1" in old and "nbBits = offsetCode - 1" in new
assert "if (offsetCode==0) nbBits = 0" in old
assert "if (offsetCode==0) nbBits = 0" in new

table_pattern = r"offsetPrefix\[MaxOff\+1\]\s*=\s*\{([^}]*)\}"
match = re.search(table_pattern, new)
assert match is not None
historical_table = [int(n) for n in re.findall(r"\d+", match.group(1))]
model_match = re.search(r"offsetPrefix\[27\]\s*=\s*\{([^}]*)\}", model)
assert model_match is not None
model_table = [int(n) for n in re.findall(r"\d+", model_match.group(1))]
assert len(historical_table) == 27 and historical_table == model_table
assert "#define MaxOff   26" in new
print("Exact parent/child source and diff match Git; both changed expressions and all 27 table values match Alive2 model")
