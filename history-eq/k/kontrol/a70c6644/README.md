# Kontrol `a70c6644`: optional stack-check removal

**Verdict: `UNKNOWN` (unverified).** This commit adds `--no-stack-checks` and faster K rules for selected EVM opcodes under the stated assumption that Solidity-compiled bytecode never overflows or underflows the stack. The default configuration retains stack checks. Changed rule priority and proof-maintenance settings also need coverage for a whole-commit relation.

The [source check](check_source.py) matches the archived diff to the exact parent and child commits. On both sides, the historical `foundry.md` requires `assert.md`, but that dependency's exact Git blob is absent from the local object store, so a faithful historical K definition cannot be compiled. [Result](result.json) records the missing blob ID; a [cross-store audit](../../../results/pending-dependency-cross-store-audit.json) found it in none of 70 local Git stores. The current checkout's `assert.md` cannot substitute for the historical version. No old/new K proof or counterexample has been obtained; this is a source-availability limit, not a verdict that the optimization is incorrect or unsupported in principle.

Run from the project root: `python3 -B history-eq/k/kontrol/a70c6644/check_source.py`.
