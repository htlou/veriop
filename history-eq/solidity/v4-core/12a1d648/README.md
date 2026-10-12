# v4-core `12a1d648`: nested swap-fee guard

Commit `12a1d648fd2de6865b0ac56ce9fe7dcd5937db29` changes the production `Pool.swap` guard from `if (swapFee == MAX_LP_FEE && !exactInput) revert` to nested `if` statements. The other changed files are gas snapshots. `prove_guard.py` archives exact parent/child `Pool.sol`, verifies that their only byte difference is this guard rewrite, and records source hashes in `source_manifest.json`.

**Result: verified equal for the entire changed production-code path.** For arbitrary values of the fee comparison and `exactInput`, Z3 proves the two guards call the same `InvalidFeeForExactOut.selector.revertWith()` branch (`UNSAT` inequivalence query in `z3-proof.log`). All subsequent `Pool.sol` code is byte-identical. This proves source-level return/revert behavior for the changed code; it does not assert identical gas use, which is the optimization's purpose. The proof uses direct Z3, not a Certora cloud or Kuiper verdict. No official before/after gas benchmark was run for this historical pair.

Reproduce from the project root:

```sh
LD_LIBRARY_PATH=benchmarks/tools/kuiper-package/inst/lib/fstar/z3-4.13.3/bin PYTHONPATH=benchmarks/tools/kuiper-package/inst/lib/fstar/z3-4.13.3/bin/python python3 history-eq/solidity/v4-core/12a1d648/prove_guard.py
```
