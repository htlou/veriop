// 61ae9cb: most functions marked LIBDIVIDE_INLINE (= __attribute__((always_inline)) inline).
// Public API entry points, all inputs symbolic (divisor in documented domain).
// Vector targets are compiled only when the ISA macro is given (-DLIBDIVIDE_SSE2/AVX2/AVX512).
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <immintrin.h>
#undef __x86_64__   /* modeling assumption: disable divl/divq inline asm in the generators (both sides) */
#include "libdivide.h"
#ifdef FLATTEN
#define T __attribute__((flatten))  /* wrapper-only: force full inlining so Alive2 (intraprocedural) sees all code */
#else
#define T
#endif
#ifndef VECONLY
T uint32_t target_u32(uint32_t n, uint32_t d) { if (!d) return 0; struct libdivide_u32_t x = libdivide_u32_gen(d); return libdivide_u32_do(n, &x); }
T int32_t target_s32(int32_t n, int32_t d) { if (!d) return 0; struct libdivide_s32_t x = libdivide_s32_gen(d); return libdivide_s32_do(n, &x); }
T uint64_t target_u64(uint64_t n, uint64_t d) { if (!d) return 0; struct libdivide_u64_t x = libdivide_u64_gen(d); return libdivide_u64_do(n, &x); }
T int64_t target_s64(int64_t n, int64_t d) { if (!d) return 0; struct libdivide_s64_t x = libdivide_s64_gen(d); return libdivide_s64_do(n, &x); }
T uint32_t target_u32_bf(uint32_t n, uint32_t d) { if (d < 2) return 0; struct libdivide_u32_branchfree_t x = libdivide_u32_branchfree_gen(d); return libdivide_u32_branchfree_do(n, &x); }
T uint64_t target_u64_bf(uint64_t n, uint64_t d) { if (d < 2) return 0; struct libdivide_u64_branchfree_t x = libdivide_u64_branchfree_gen(d); return libdivide_u64_branchfree_do(n, &x); }
T int32_t target_s32_bf(int32_t n, int32_t d) { if (!d) return 0; struct libdivide_s32_branchfree_t x = libdivide_s32_branchfree_gen(d); return libdivide_s32_branchfree_do(n, &x); }
T int64_t target_s64_bf(int64_t n, int64_t d) { if (!d) return 0; struct libdivide_s64_branchfree_t x = libdivide_s64_branchfree_gen(d); return libdivide_s64_branchfree_do(n, &x); }
T uint32_t target_u32_recover(uint32_t d) { if (!d) return 0; struct libdivide_u32_t x = libdivide_u32_gen(d); return libdivide_u32_recover(&x); }
T uint64_t target_u64_recover(uint64_t d) { if (!d) return 0; struct libdivide_u64_t x = libdivide_u64_gen(d); return libdivide_u64_recover(&x); }
T int32_t target_s32_recover(int32_t d) { if (!d) return 0; struct libdivide_s32_t x = libdivide_s32_gen(d); return libdivide_s32_recover(&x); }
T int64_t target_s64_recover(int64_t d) { if (!d) return 0; struct libdivide_s64_t x = libdivide_s64_gen(d); return libdivide_s64_recover(&x); }
#endif
#if defined(LIBDIVIDE_AVX512)
#define VT __m512i
#define VS(x) x##_vec512
#elif defined(LIBDIVIDE_AVX2)
#define VT __m256i
#define VS(x) x##_vec256
#elif defined(LIBDIVIDE_SSE2)
#define VT __m128i
#define VS(x) x##_vec128
#endif
#ifdef VT
T VT target_vu32(VT n, uint32_t d) { if (!d) return n; struct libdivide_u32_t x = libdivide_u32_gen(d); return VS(libdivide_u32_do)(n, &x); }
T VT target_vs32(VT n, int32_t d) { if (!d) return n; struct libdivide_s32_t x = libdivide_s32_gen(d); return VS(libdivide_s32_do)(n, &x); }
T VT target_vu64(VT n, uint64_t d) { if (!d) return n; struct libdivide_u64_t x = libdivide_u64_gen(d); return VS(libdivide_u64_do)(n, &x); }
T VT target_vs64(VT n, int64_t d) { if (!d) return n; struct libdivide_s64_t x = libdivide_s64_gen(d); return VS(libdivide_s64_do)(n, &x); }
T VT target_vu32_bf(VT n, uint32_t d) { if (d < 2) return n; struct libdivide_u32_branchfree_t x = libdivide_u32_branchfree_gen(d); return VS(libdivide_u32_branchfree_do)(n, &x); }
T VT target_vs32_bf(VT n, int32_t d) { if (!d) return n; struct libdivide_s32_branchfree_t x = libdivide_s32_branchfree_gen(d); return VS(libdivide_s32_branchfree_do)(n, &x); }
T VT target_vu64_bf(VT n, uint64_t d) { if (d < 2) return n; struct libdivide_u64_branchfree_t x = libdivide_u64_branchfree_gen(d); return VS(libdivide_u64_branchfree_do)(n, &x); }
T VT target_vs64_bf(VT n, int64_t d) { if (!d) return n; struct libdivide_s64_branchfree_t x = libdivide_s64_branchfree_gen(d); return VS(libdivide_s64_branchfree_do)(n, &x); }
#endif
