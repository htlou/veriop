#!/usr/bin/env python3
"""Source-audit the unchanged XXH64 state transition and prove its length invariant."""

import hashlib
from pathlib import Path
import subprocess


here = Path(__file__).resolve().parent
root = here.parents[4]
repo = root / "history-eq/repos/xxHash"
commit = "0e5dab97db33b84dc21bbede3b31fa3ad5954ad8"
sources = {}
for side, revision in (("old", commit + "^"), ("new", commit)):
    data = (here.parent / side / "xxhash.c").read_bytes()
    oid = hashlib.sha1(b"blob " + str(len(data)).encode() + b"\0" + data).hexdigest()
    expected = subprocess.check_output(
        ["git", "-C", str(repo), "rev-parse", revision + ":xxhash.c"], text=True
    ).strip()
    assert oid == expected, side
    sources[side] = data.decode()


def unchanged(start: str, stop: str) -> str:
    old = sources["old"].split(start, 1)[1].split(stop, 1)[0]
    new = sources["new"].split(start, 1)[1].split(stop, 1)[0]
    assert old == new, start
    return old


reset = unchanged("XXH_PUBLIC_API XXH_errorcode XXH64_reset(",
                  "XXH_errorcode XXH64_update_endian (")
update = unchanged("XXH_errorcode XXH64_update_endian (",
                   "XXH_PUBLIC_API XXH_errorcode XXH64_update (")
assert "memset(&state, 0, sizeof(state))" in reset
for statement in (
    "state->total_len += len;",
    "if (state->memsize + len < 32)",
    "state->memsize += (U32)len;",
    "p += 32-state->memsize;",
    "state->memsize = 0;",
    "state->memsize = (unsigned)(bEnd-p);",
):
    assert statement in update, statement
assert update.count("p+=8;") == 4

z3 = root / "alive2/.venv/bin/z3"
run = subprocess.run([str(z3), str(here / "stream_state.smt2")],
                     capture_output=True, text=True, check=True)
assert run.stdout.splitlines() == ["sat", "sat", "unsat", "unsat"], run.stdout
(here / "stream_state.log").write_text(run.stdout)
print("Exact reset/update sources match; initialized memsize = total_len mod 32 is preserved.")
