#!/usr/bin/env python3
"""Recover the missing parent flate matchLen using its historical Git blob ID."""

import difflib
import hashlib
import os
from pathlib import Path
import subprocess


here = Path(__file__).resolve().parent
repo = here.parents[3] / "benchmarks/repos/compress"
commit = "e022476498e6a3cc23ba4540dab98378eafc5d74"
path = "flate/matchlen_generic.go"
env = {**os.environ, "GIT_NO_LAZY_FETCH": "1"}


def oid(data: bytes) -> str:
    return hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()


new = subprocess.check_output(["git", "-C", str(repo), "show", f"{commit}:{path}"], env=env)
marker = b"func matchLen(a, b []byte) (n int) {"
assert new.count(marker) == 1
old_body = b"""func matchLen(a, b []byte) (n int) {
\tleft := len(a)
\tfor left >= 8 {
\t\tdiff := le.Load64(a, n) ^ le.Load64(b, n)
\t\tif diff != 0 {
\t\t\treturn n + bits.TrailingZeros64(diff)>>3
\t\t}
\t\tn += 8
\t\tleft -= 8
\t}

\ta = a[n:]
\tb = b[n:]
\tfor i := range a {
\t\tif a[i] != b[i] {
\t\t\tbreak
\t\t}
\t\tn++
\t}
\treturn n
}
"""
old = new[:new.index(marker)] + old_body
for side, revision, data in (("old", commit + "^", old), ("new", commit, new)):
    expected = subprocess.check_output(
        ["git", "-C", str(repo), "rev-parse", f"{revision}:{path}"],
        env=env, text=True,
    ).strip()
    assert oid(data) == expected, (side, expected, oid(data))
    target = here / f"matchlen.{side}.go"
    if target.exists():
        assert target.read_bytes() == data
    else:
        target.write_bytes(data)
    print(side, expected)

diff = "".join(difflib.unified_diff(old.decode().splitlines(keepends=True),
                                    new.decode().splitlines(keepends=True),
                                    fromfile="parent/flate/matchlen_generic.go",
                                    tofile="child/flate/matchlen_generic.go"))
(here / "source.diff").write_text(diff)
