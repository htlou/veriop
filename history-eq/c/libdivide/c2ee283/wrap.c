// c2ee283: portable fallback of libdivide_count_leading_zeros32 (no-builtin configuration).
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
/* modeling assumption (both sides): emulate a compiler without __builtin_clz so that the
   portable fallback (the code changed by this commit) is compiled; also disable divl/divq asm. */
#undef __GNUC__
#undef __has_builtin
#undef __x86_64__
#include "libdivide.h"
#define T __attribute__((flatten))  /* wrapper-only: inline everything so Alive2 sees all code */
T int32_t target_clz32(uint32_t v) { return libdivide_count_leading_zeros32(v); }
T int32_t target_clz64(uint64_t v) { return libdivide_count_leading_zeros64(v); }
T uint32_t target_u32_api(uint32_t n, uint32_t d) { if (!d) return 0; struct libdivide_u32_t x = libdivide_u32_gen(d); return libdivide_u32_do(n, &x); }
T int32_t target_s32_api(int32_t n, int32_t d) { if (!d) return 0; struct libdivide_s32_t x = libdivide_s32_gen(d); return libdivide_s32_do(n, &x); }
T uint32_t target_u32_gen_magic(uint32_t d) { if (!d) return 0; return libdivide_u32_gen(d).magic; }
T uint8_t target_u32_gen_more(uint32_t d) { if (!d) return 0; return libdivide_u32_gen(d).more; }
T uint64_t target_u64_gen_magic(uint64_t d) { if (!d) return 0; return libdivide_u64_gen(d).magic; }
T uint8_t target_u64_gen_more(uint64_t d) { if (!d) return 0; return libdivide_u64_gen(d).more; }
