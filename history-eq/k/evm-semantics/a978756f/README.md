# evm-semantics `a978756f`: gas simplification lemmas

**Local verdict: `EQUIV_PARTIAL`.** The parent and child historical `Csstore` evaluation rules are identical. The child adds two simplifications that conclude `G < Csstore` is false and `Csstore <= G` is true when each of the three possible gas prices is at most `G`. It also adds two integer-inequality rewrites. The [source-locked check](check.py) reads the exact historical Git blobs and confirms all four rules and the unchanged `Csstore` branches. The [Z3 queries](csstore-rules.smt2) have four `unsat` results ([log](z3.log)): no integer-valued storage state, schedule price, or bound violates these local implications or rewrites.

This proves the four mathematical rule instances under their explicit preconditions. It does **not** prove whole-K-definition equivalence, rewriting confluence, behavior of external tools that refer to newly named K rules, or a performance delta. Z3 is used directly; the binary's location inside the Kuiper package does not make this a Kuiper proof.

Run from project root: `python3 history-eq/k/evm-semantics/a978756f/check.py`.
