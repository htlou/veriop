# HACL* `fa233328`: Poly1305 mask extraction hint

The sampled commit changes only `code/poly1305/Hacl.Bignum.Modulo.fst`. [`verify.py`](verify.py) reconstructs the missing parent from the available child and checks exact Git blob IDs `3a647ab4c615d7fa649ba00ff4a4e860043d1892` and `296332e0f27213b8ca330666da8ddf7a1e64f3f7`. The [audit](verification.log) shows one added `inline_for_extraction` qualifier on `mask_2_42_limb`; its type, refinement, expression, callers, and all other source bytes are unchanged.

**Verdict: `EQUIV_PARTIAL` for the F* source-level mask definition; extracted C remains unverified.** The qualifier controls [extraction-time reduction](https://jonathan.protzenko.fr/2022/05/22/meta-programming-cryptography.html) rather than changing the F* definition's body. The definition still computes the same `uint64_to_limb 0x3ffffffffffuL`, with the same refinement `v p = pow2 42 - 1`. This is an exact-source semantic audit, not a historical F* checker run or an old/new generated-C comparison. The historical dependency closure and extraction toolchain were not rebuilt here; generated C, timing, and the complete Poly1305 implementation are outside the result.

Run `python3 -B history-eq/fstar/hacl-star/fa233328/verify.py` from the project root. No official historical before/after benchmark score was measured.
