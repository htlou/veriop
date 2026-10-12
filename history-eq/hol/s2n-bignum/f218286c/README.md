# s2n-bignum `f218286c`: ARM P-256 reduction macro

**Verdict: partial local equality.** Parent `96086bb38a2041a431f696572124dd75bfc3a022`; child `f218286ceffe931fb295d8730eb105e871de4d6c`. The commit changes the ARM Montgomery multiplication and squaring routines, their HOL Light proof scripts, and `common/misc.ml`. No official before/after performance score was measured.

The [source-locked check](check.py) reads the exact four historical assembly blobs from Git, matches every instruction in both versions of their `montreds` macros, checks the `mc = 0xFFFFFFFF00000001` initialization where multiplication is used, and runs [two QF_BV obligations](montreds.smt2) with Z3. Both return `unsat` ([run log](check.log)). For all 64-bit `d0`, `d1`, `d2`, and `d3`, the old and new macros compute the same four output words `d1`–`d4`, including the carry chain. The old `SUBS/SBC` product split equals the new `MUL/UMULH` product split because `mc = 2^64 - 2^32 + 1`; the SMT model expands this constant multiplication into shifts and subtraction by distributivity.

This proof covers the macro outputs under the source's `mc` constant, not scratch-register state or the full routines. In particular, the multiplication routine moves its first macro invocation across other arithmetic; that interleaving, register liveness, memory writes, and the changed HOL Light scripts are not proved here. The historical whole-function HOL Light proof was not replayed, so this is not a whole-commit equivalence result. The Z3 binary happens to be packaged with Kuiper; this is a direct Z3 check, **not** a Kuiper proof.

Run from the project root:

```sh
python3 history-eq/hol/s2n-bignum/f218286c/check.py
```
