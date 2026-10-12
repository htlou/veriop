# HACL* `3b05020c`: Curve25519 mask extraction hint

The sampled commit changes only `code/curve25519/Hacl.Bignum.Parameters.fst`. [`verify.py`](verify.py) reconstructs the missing parent from the available child and checks exact Git blob IDs `32beb5cc2d725e9f8e46d059b1fc6029d52a4794` and `9c6363f0bf7f687c6fe5ab6e060dbce6bd5979ad`. The [audit](verification.log) shows one added `inline_for_extraction` qualifier on `mask_51`; its refinement, constant expression, callers, and all other source bytes are unchanged.

**Verdict: `EQUIV_PARTIAL` for the F* source-level mask definition; extracted C remains unverified.** The qualifier controls [extraction-time reduction](https://jonathan.protzenko.fr/2022/05/22/meta-programming-cryptography.html). Both historical definitions still compute `uint64_to_limb 0x7ffffffffffffuL` with refinement `v x = pow2 51 - 1`. This is an exact-source semantic audit, not a historical F* checker run or a generated-C before/after comparison. The historical dependency closure and extraction toolchain were not rebuilt, so the complete Curve25519 implementation is outside the result.

Run `python3 -B history-eq/fstar/hacl-star/3b05020c/verify.py` from the project root. No official historical before/after benchmark score was measured.
