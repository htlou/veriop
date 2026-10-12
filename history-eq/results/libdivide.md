# libdivide historical performance commits vs Alive2

Selected 33 of 200 source-touching commits; 48 keyword candidates and 9 manual additions.

| Verdict | Commits |
|---|---:|
| EQUIV | 1 |
| EQUIV_BOUNDED | 2 |
| NOT_EQUIV | 4 |
| UNKNOWN | 20 |
| UNSUPPORTED | 6 |

| Commit | Date | Verdict | Coverage | Change |
|---|---|---|---|---|
| 40040eb | 2026-09-05 | UNSUPPORTED | full | Replaces SVE signed-division XOR/subtract sign adjustment with predicated merging negate. |
| dda2dfb | 2026-05-12 | UNSUPPORTED | full | Reworks SVE/SVE2 vector division paths for signed and unsigned widths. |
| 60c15d9 | 2026-05-03 | UNSUPPORTED | full | Introduces new SVE vector division APIs and implementation, absent in the parent commit. |
| c2d2be3 | 2026-02-24 | UNKNOWN | partial | Changes 128/64 division remainder calculation to use the known final quotient and original denominator. |
| 31f1e42 | 2025-04-04 | UNKNOWN | partial | Preserves operand order at signed/unsigned high-multiply calls in the 16/32/64-bit division paths. |
| 70d2a45 | 2025-03-27 | UNKNOWN | partial | Uses __forceinline for LIBDIVIDE_INLINE under Microsoft compiler. |
| 1978f27 | 2022-02-12 | UNKNOWN | partial | Implements 128-bit SSE2 and 256-bit AVX2 signed/unsigned 16-bit division paths. |
| ef645e2 | 2021-07-07 | UNKNOWN | partial | Changes inline annotations on portable 32-by-16, 128-by-64 and 128-by-128 helper functions. |
| 0e65ccd | 2021-04-29 | UNKNOWN | partial | Reimplements the portable 128-by-64 division helper used by 64-bit divider generation. |
| 61ae9cb | 2021-04-02 | UNKNOWN | partial | Changes inlining attributes for scalar and SIMD operations. |
| c8edb85 | 2021-03-06 | UNKNOWN | partial | Rewrites 128_div_64_to_64 without __uint128_t. |
| 8e9bf17 | 2021-03-06 | UNKNOWN | partial | Rewrites the unsigned-64 high-half SIMD multiply in all three x86 vector-width implementations. |
| 1746e5d | 2021-03-06 | UNSUPPORTED | full | Introduces NEON vector division APIs for signed and unsigned 32/64-bit lanes. |
| c2ee283 | 2019-12-10 | UNKNOWN | partial | Rewrites the portable 32-bit leading-zero fallback used by divider generation. |
| 2422199 | 2019-06-14 | EQUIV | full | Uses the generated shift field directly for unsigned-32/64 branchfull scalar, SSE2, AVX2 and AVX512 division. |
| c532f5d | 2019-06-06 | UNKNOWN | partial | Ports vector divide algorithms from SSE2 to AVX2 and AVX512. |
| bf79e0e | 2019-06-03 | UNKNOWN | partial | Reworks the SSE2 high-half 64-bit vector multiplication used by signed/unsigned division. |
| e3fa9bd | 2019-05-28 | UNKNOWN | partial | Selects __uint128_t for 128-by-64 division on compilers that support it. |
| e0ae0fa | 2019-05-28 | UNSUPPORTED | partial | Adds an MSVC-only _udiv128 fast path that this Clang/Alive2 toolchain cannot compile directly. |
| 5e54530 | 2019-05-27 | EQUIV_BOUNDED | full | Reworks the portable libdivide_128_div_64_to_64 quotient/remainder computation. |
| 8614144 | 2018-01-17 | UNKNOWN | partial | Rewrites the 128-by-128 quotient/remainder calculation used by unsigned-64 divisor recovery. |
| 947f8b2 | 2017-06-28 | NOT_EQUIV | partial | Applies one-byte packing to public divider structs, changing their size and alignment. |
| ce682f2 | 2016-08-04 | UNSUPPORTED | partial | Adds MSVC x64 high-multiply intrinsics, but the committed header has an unterminated preprocessor conditional. |
| b031fb3 | 2016-04-09 | NOT_EQUIV | partial | Stores a masked shift in public unsigned branchfree divider structs, then uses it directly in do and reconstructs the marker in recover. |
| 7788a1f | 2016-04-09 | EQUIV_BOUNDED | full | Uses the stored shift field directly in 32/64-bit branchfree SSE2 vector division. |
| 79b0338 | 2016-04-03 | UNKNOWN | partial | Replaces a magic-number comparison with a shift-path flag test. |
| e63aac8 | 2016-03-29 | UNKNOWN | partial | Introduces signed64 branchfree division. |
| dc1932b | 2016-03-29 | UNKNOWN | partial | Switches the 128-by-128 helper to native int128 arithmetic when available. |
| c679134 | 2016-03-29 | UNKNOWN | partial | Introduces unsigned64 branchfree generator and do paths. |
| 703a791 | 2016-03-29 | UNKNOWN | partial | Introduces unsigned32 branchfree division. |
| 292ddc3 | 2016-03-28 | NOT_EQUIV | partial | Introduces signed-32 branchfree generation/division and changes shared generator logic. |
| 55788bf | 2016-03-19 | NOT_EQUIV | partial | The C++ divider default constructor stops initializing its divisor to one. |
| 42fe36d | 2014-07-09 | UNKNOWN | partial | Changes the MSVC x64 count-leading/trailing-zero implementation used by divider generation. |
