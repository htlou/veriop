// ef645e2: LIBDIVIDE_INLINE (always_inline) added to libdivide_32_div_16_to_16,
// libdivide_128_div_64_to_64, libdivide_128_div_128_to_64. Exercise them through public API
// entry points (generators / recover) and also directly (static helpers, emitted in this TU).
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#ifdef NOASM
#undef __x86_64__   /* modeling assumption: disable divl/divq inline asm (both sides) */
#endif
#include "libdivide.h"
#ifdef FLATTEN
#define T __attribute__((flatten))  /* wrapper-only: force inlining so Alive2 (intraprocedural) sees all code */
#else
#define T
#endif
T uint16_t target_u16(uint16_t n, uint16_t d) { if (!d) return 0; struct libdivide_u16_t x = libdivide_u16_gen(d); return libdivide_u16_do(n, &x); }
T int16_t target_s16(int16_t n, int16_t d) { if (!d) return 0; struct libdivide_s16_t x = libdivide_s16_gen(d); return libdivide_s16_do(n, &x); }
T uint64_t target_u64(uint64_t n, uint64_t d) { if (!d) return 0; struct libdivide_u64_t x = libdivide_u64_gen(d); return libdivide_u64_do(n, &x); }
T int64_t target_s64(int64_t n, int64_t d) { if (!d) return 0; struct libdivide_s64_t x = libdivide_s64_gen(d); return libdivide_s64_do(n, &x); }
T uint64_t target_u64_recover(uint64_t d) { if (!d) return 0; struct libdivide_u64_t x = libdivide_u64_gen(d); return libdivide_u64_recover(&x); }
T int64_t target_s64_recover(int64_t d) { if (!d) return 0; struct libdivide_s64_t x = libdivide_s64_gen(d); return libdivide_s64_recover(&x); }
T uint16_t target_div_32_16(uint16_t u1, uint16_t u0, uint16_t v) { uint16_t r; uint16_t q = libdivide_32_div_16_to_16(u1, u0, v, &r); return q ^ r; }
T uint64_t target_div_128_64(uint64_t u1, uint64_t u0, uint64_t v) { uint64_t r; uint64_t q = libdivide_128_div_64_to_64(u1, u0, v, &r); return q ^ (r * 3); }
T uint64_t target_div_128_128(uint64_t uh, uint64_t ul, uint64_t vh, uint64_t vl) { uint64_t rh, rl; uint64_t q = libdivide_128_div_128_to_64(uh, ul, vh, vl, &rh, &rl); return q ^ (rh * 3) ^ (rl * 5); }
