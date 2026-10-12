#!/usr/bin/env python3
"""Verify the historical wildcopy helper and complete source diff."""

from pathlib import Path
import re
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/zstd"
commit = "107c5755f426e0da930fc020464e32103480296b"
path = "lib/zstd.c"


def git(*args: str) -> bytes:
    return subprocess.check_output(["git", "-C", str(repo), *args])


sources = {}
for rev, name in ((commit + "^", "zstd.old.txt"), (commit, "zstd.new.txt")):
    actual = git("show", f"{rev}:{path}")
    saved = here / name
    if saved.exists():
        assert saved.read_bytes() == actual, name
    else:
        saved.write_bytes(actual)
    sources[name] = actual.decode()

diff = git("diff", commit + "^", commit)
saved_diff = here / "source.diff"
if saved_diff.exists():
    assert saved_diff.read_bytes() == diff
else:
    saved_diff.write_bytes(diff)
assert git("diff", "--name-only", commit + "^", commit).decode().splitlines() == [path]

old = sources["zstd.old.txt"]
new = sources["zstd.new.txt"]
model = (here / "wildcopy.c").read_text()
def wildcopy_body(text: str, name: str) -> str:
    match = re.search(r"void " + name + r"\([^)]*\)\s*\{([^}]*)\}", text)
    assert match, name
    return " ".join(match.group(1).split())


for source, model_name in ((old, "zstd_old_wildcopy"), (new, "zstd_new_wildcopy")):
    assert wildcopy_body(source, "ZSTD_wildcopy") == wildcopy_body(model, model_name)
    assert "ZSTD_copy8(void* dst, const void* src) { memcpy(dst, src, 8); }" in source
    assert "ZSTD_copy8(void* dst, const void* src) { memcpy(dst, src, 8); }" in model
    assert "#define COPY8(d,s) { ZSTD_copy8(d,s); d+=8; s+=8; }" in source
    assert "#define COPY8(d,s) { ZSTD_copy8(d,s); d+=8; s+=8; }" in model
print("Exact old/new zstd.c files and complete diff match Git; wildcopy bodies match model")
