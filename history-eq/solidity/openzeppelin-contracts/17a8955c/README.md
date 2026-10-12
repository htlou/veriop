# OpenZeppelin `17a8955c`: branchless math operations

The sampled performance commit `17a8955cd8ed2c9a269421a11c2e2774b796e305` changes `Math.log2`, `Math.log256`, rounding operations, and `Math.mulDiv(..., rounding)`, and adds `SafeCast.toUint(bool)`. `prove_logs.py` archives the exact parent/child `Math.sol` and `SafeCast.sol` with SHA-256 hashes in `source_manifest.json`. It checks the **complete** old and new `log2(uint256)` and `log256(uint256)` bodies against the encoded stage sequences, and checks the new assembly implementation of `SafeCast.toUint(bool)`.

**Result: verified equal for both changed base logarithm functions, partial at commit level.** For each stage and every 256-bit incoming `value`, Z3 proves that the old right-shift guard and new threshold guard agree, and that they produce the same shifted value and result increment. Since both functions start with the same state, composing those stage relations proves equal final results for every `uint256` input. The final stage is also proved. The solver returned `UNSAT` for all 13 inequivalence queries (`z3-proof.log`). The proof treats a Solidity `bool` as its valid 0/1 value, matching the checked `iszero(iszero(b))` assembly conversion.

The other changed `Math` functions and the full commit remain unchecked, so this is `EQUIV_PARTIAL`. The result is a direct Z3 bit-vector proof; the Z3 executable/library happened to come with the local Kuiper installation, but **Kuiper did not verify this historical pair**. No official gas-benchmark before/after score is claimed.

Reproduce from the project root:

```sh
LD_LIBRARY_PATH=benchmarks/tools/kuiper-package/inst/lib/fstar/z3-4.13.3/bin PYTHONPATH=benchmarks/tools/kuiper-package/inst/lib/fstar/z3-4.13.3/bin/python python3 history-eq/solidity/openzeppelin-contracts/17a8955c/prove_logs.py
```
