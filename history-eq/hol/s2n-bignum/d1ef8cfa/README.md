# s2n-bignum `d1ef8cfa`: x86 modular-inverse inner loop

**Verdict: EQUIV_PARTIAL.** The exact parent is `4803c2b474bf653fdf6207fafdcd908a8461538e`; the child is `d1ef8cfa08845e4150f5b0a707a3b49f03f13055`. This commit changes four x86 Curve25519 loops, two generic x86 loops, their AT&T mirrors, and six HOL Light proof scripts. The [historical source diff](../source-screening/d1ef8cfa.source.diff) is archived.

The [source-locked check](check.py) reads each of the four Intel-syntax `curve25519_x25519{,_alt,base,base_alt}.S` files directly from both historical Git revisions and asserts that their full `innerloop` instruction sequences match the audited hashes. Those four copies have identical old blocks and identical new blocks. The [QF_BV query](live-registers.smt2) models one execution of each old and new 64-bit block and asks whether any loop-carried register differs: `rbp`, `rsi`, `rcx`, `rdx`, `r12`, `r14`, `r10`, `r11`, or `r9`. Z3 4.13.3 returned `unsat` ([run log](proof.log)), for arbitrary 64-bit starting values. Equality of `r9` also gives the same `dec r9; jne innerloop` decision. Neither block writes memory.

The model follows the changed instructions' carry-dependent selection and arithmetic. It does not compare scratch registers (`rbx`, `rdi`, `r8`, `r13`, `r15`, `rax`), status flags after the loop, the two generic x86 functions, AT&T copies, or whole-program behavior. The HOL Light correctness proofs for the complete routines were not replayed. This is a local one-iteration result, not a proof of full routine equivalence or a verified performance gain. No official before/after benchmark score was measured.

Re-run from the project root with `python3 history-eq/hol/s2n-bignum/d1ef8cfa/check.py`.
