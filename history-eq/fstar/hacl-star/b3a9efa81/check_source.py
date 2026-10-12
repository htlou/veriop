#!/usr/bin/env python3
"""Check the exact HPKE source change without treating extraction as proved."""

from difflib import SequenceMatcher
from hashlib import sha1
from pathlib import Path

root = Path(__file__).resolve().parents[4]
sources = [root / f"history-eq/wt/hacl-hpke-{side}/code/hpke/Hacl.Impl.HPKE.fst"
           for side in ("old", "new")]
expected = ("8bc25bd7ef16d971d8d3108703ae185463b140bc",
            "8aeea9721926de48ab4bcfe5cd2fe0ecb8f8471e")
lines = []
for path, blob in zip(sources, expected):
    data = path.read_bytes()
    assert sha1(f"blob {len(data)}\0".encode() + data).hexdigest() == blob, path
    lines.append(data.decode().splitlines(keepends=True))

changes = []
for tag, i, j, k, l in SequenceMatcher(a=lines[0], b=lines[1], autojunk=False).get_opcodes():
    if tag == "equal":
        continue
    before = "".join(lines[0][i:j])
    after = "".join(lines[1][k:l])
    assert tag == "replace" and j == i + 1 and l == k + 1
    assert before in ("inline_for_extraction noextract\n", "noextract inline_for_extraction\n")
    assert after == "noextract\n"
    changes.append((i + 1, k + 1))

assert len(changes) == 10, changes
print(f"Exact historical blobs; {len(changes)} extraction-annotation-only changes; all other source lines identical")
