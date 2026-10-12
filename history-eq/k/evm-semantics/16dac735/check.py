#!/usr/bin/env python3
"""Audit all historical guard edits and check their integer abstraction."""

import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/evm-semantics"
z3 = root / "benchmarks/tools/kuiper-package/inst/lib/fstar/z3-4.13.3/bin/z3"
old = "6e916f325b825069752a3907e70564de482f5d43"
new = "16dac735654df9593291de4bd0bceb729ebdeb02"
path = "kevm-pyk/src/kevm_pyk/kproj/evm-semantics/optimizations.md"


def source(rev):
    return subprocess.check_output(
        ["git", "-C", str(repo), "show", f"{rev}:{path}"],
        env={**os.environ, "GIT_NO_LAZY_FETCH": "1"}, text=True,
    )


parent, child = source(old), source(new)
edits = [
    ("#sizeWordStack( 0 : WS ) <=Int 1024", "#sizeWordStack( WS ) <=Int 1023"),
    ("#sizeWordStack( #asWord( #range(PGM, PCOUNT +Int 1, N) ) : WS ) <=Int 1024", "#sizeWordStack( WS ) <=Int 1023"),
    ("#stackNeeded(DUP(N)) <=Int #sizeWordStack(WS)", "N <=Int #sizeWordStack(WS)"),
    ("#sizeWordStack( WS [ ( N +Int -1 ) ] : WS ) <=Int 1024", "#sizeWordStack( WS ) <=Int 1023"),
    ("#stackNeeded(SWAP(N)) <=Int #sizeWordStack(W0 : WS)", "N <=Int #sizeWordStack(WS)"),
    ("#sizeWordStack( WS [ ( N +Int -1 ) ] : ( WS [ ( N +Int -1 ) := W0 ] ) ) <=Int 1024", "#sizeWordStack( WS ) <=Int 1023"),
    ("#sizeWordStack( chop( ( W0 +Int W1 ) ) : WS ) <=Int 1024", "#sizeWordStack( WS ) <=Int 1023"),
    ("#sizeWordStack( chop( ( W0 -Int W1 ) ) : WS ) <=Int 1024", "#sizeWordStack( WS ) <=Int 1023"),
    ("#sizeWordStack( W0 &Int W1 : WS ) <=Int 1024", "#sizeWordStack( WS ) <=Int 1023"),
    ("#sizeWordStack( bool2Word( W0 <Int W1 ) : WS ) <=Int 1024", "#sizeWordStack( WS ) <=Int 1023"),
    ("#sizeWordStack( bool2Word( W1 <Int W0 ) : WS ) <=Int 1024", "#sizeWordStack( WS ) <=Int 1023"),
]
expected = parent
for before, after in edits:
    assert expected.count(before) == 1, before
    expected = expected.replace(before, after, 1)
assert expected == child, "optimization module has another change"
assert sum(1 for before, _ in edits if before.startswith("#sizeWordStack")) == 9

run = subprocess.run([str(z3), str(here / "guard-relation.smt2")], capture_output=True, text=True, check=True)
assert run.stdout.splitlines() == ["unsat"] * 3, run.stdout + run.stderr
(here / "z3.log").write_text(run.stdout)
print("all 11 historical guard edits audited; three guard-relation queries unsat")
