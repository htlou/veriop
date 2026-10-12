# s2n-bignum `d830e3c5`: x86 Curve25519 inversion

**Verdict: partial local equality.** Parent `2c8e273f92df7beffadfa29303c06d358fc7f9ad`; child `d830e3c5b91923fd1950bb30820bc4ae8dca3aa5`. The commit rewrites `bignum_inv_p25519.S` and its HOL Light proof script. No official before/after performance score was measured.

The [source-locked check](check.py) reads both exact historical assembly blobs and matches the four `NEG; CMOVS; SAR` to `SAR; XOR; SUB` rewrites in each of two loop locations. The [QF_BV obligation](abs.smt2) asks Z3 for any 64-bit input whose old and new register results differ; `unsat` in [the run log](check.log) proves the register results equal for all inputs, including `0x8000000000000000`. The sign-mask register is also equal because both versions compute the same arithmetic right shift of the original value.

This proof does not cover the x86 flags, the reordered multiword multiplication/reduction later in the function, memory effects, or the changed HOL Light script. It is **not** a whole-function or whole-commit equivalence result. Z3 is used directly; the binary's Kuiper package location does not make this a Kuiper proof.

Run from the project root:

```sh
python3 history-eq/hol/s2n-bignum/d830e3c5/check.py
```
