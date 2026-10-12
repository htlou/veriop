#!/usr/bin/env python3
"""Lock the four local lemmas to the historical K sources and run Z3."""

import os
from pathlib import Path
import subprocess

here = Path(__file__).resolve().parent
root = here.parents[3]
repo = root / "benchmarks/repos/evm-semantics"
z3 = root / "benchmarks/tools/kuiper-package/inst/lib/fstar/z3-4.13.3/bin/z3"
old = "eb37959d57c3f2bbb2c442d2fa087e333040b2e5"
new = "a978756ffb2a6d66b45ced4df416bf8293492b00"


def source(rev, path):
    return subprocess.check_output(
        ["git", "-C", str(repo), "show", f"{rev}:{path}"],
        env={**os.environ, "GIT_NO_LAZY_FETCH": "1"}, text=True,
    )


def compact(s):
    return " ".join(s.split())


evm_path = "include/kframework/evm.md"
gas_path = "include/kframework/infinite-gas.md"
int_path = "include/kframework/lemmas/int-simplification.k"
old_evm, new_evm = source(old, evm_path), source(new, evm_path)
old_rules = old_evm.split("rule [Csstore.new]:", 1)[1].split("rule [Rsstore.new]:", 1)[0]
new_rules = new_evm.split("rule [Csstore.new]:", 1)[1].split("rule [Rsstore.new]:", 1)[0]
assert compact(old_rules) == compact(new_rules)
assert "#if CURR ==Int NEW orBool ORIG =/=Int CURR #then Gsload < SCHED > #else #if ORIG ==Int 0 #then Gsstoreset < SCHED > #else Gsstorereset < SCHED > #fi #fi" in compact(old_rules)
assert "#if CURR ==Int 0 andBool NEW =/=Int 0 #then Gsstoreset < SCHED > #else Gsstorereset < SCHED > #fi" in compact(old_rules)

old_gas, new_gas = compact(source(old, gas_path)), compact(source(new, gas_path))
conditions = "requires Gsload < SCHED > <=Int G andBool Gsstoreset < SCHED > <=Int G andBool Gsstorereset < SCHED > <=Int G [simplification]"
for rule in ("G <Int Csstore(SCHED, _, _, _) => false", "Csstore(SCHED, _, _, _) <=Int G => true"):
    assert rule not in old_gas
    assert f"rule {rule} {conditions}" in new_gas

old_int, new_int = compact(source(old, int_path)), compact(source(new, int_path))
for rule in (
    "rule C1 -Int I2 <Int C3 => C1 -Int C3 <Int I2 [concrete(C1, C3), simplification]",
    "rule C1 <=Int C2 -Int I3 => I3 <=Int C2 -Int C1 [concrete(C1, C2), simplification]",
):
    assert rule not in old_int and rule in new_int

run = subprocess.run([str(z3), str(here / "csstore-rules.smt2")], capture_output=True, text=True, check=True)
assert run.stdout.splitlines() == ["unsat"] * 4, run.stdout + run.stderr
(here / "z3.log").write_text(run.stdout)
print("historical K source audit passed; all four local counterexample queries unsat")
