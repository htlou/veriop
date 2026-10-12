# xxHash `15abfc2`: ARM64 64×64→128 multiply

The exact historical `xxhash.h` blobs show one changed branch in
`XXH_mult64to128`: MSVC ARM64 now uses `lhs * rhs` for the low half and
`__umulh(lhs,rhs)` for the high half, where the parent uses the portable
four-product arithmetic. [Microsoft's intrinsic contract](https://learn.microsoft.com/en-us/cpp/intrinsics/umulh)
defines `__umulh` as the high 64 bits of an unsigned 64×64 product.

Run `python3 -B history-eq/c/xxHash/15abfc2/reproduce.py` from the project
root. It checks the two historical blob IDs, compiles each header for AArch64
with the relevant preprocessor branch selected, and models `__umulh` by that
documented arithmetic contract. Alive2 proves the returned **low 64 bits**
equal in both directions for arbitrary operands. Alive2 times out on the high
64-bit comparison. Separately, [Mul128.lean](Mul128.lean) proves for **all**
32-bit input limbs that the parent's four-product `cross`/`upper`/`lower`
arithmetic equals the high and low halves of the unsigned 128-bit product. It
also proves each intermediate fits in 64 bits, so the historical unsigned
arithmetic does not wrap unexpectedly. `#print axioms` reports no `sorryAx`;
the successful check is recorded in [result.json](result.json).

Thus the complete **source arithmetic** of `XXH_mult64to128` agrees under the
documented `__umulh` contract. The high-half historical LLVM comparison is
still unresolved, and neither compiler lowering on MSVC ARM64 nor other
changed paths of the commit are covered. The selected verdict stays
`EQUIV_PARTIAL` and the whole commit stays `UNKNOWN`. No official historical
xxHash benchmark score was measured.
