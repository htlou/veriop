// retry: only target_vs64_bf of wrap.c (identical definition)
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
T VT target_vs64_bf(VT n, int64_t d) { if (!d) return n; struct libdivide_s64_branchfree_t x = libdivide_s64_branchfree_gen(d); return VS(libdivide_s64_branchfree_do)(n, &x); }
#endif
