// API level for changes in libdivide_128_div_64_to_64: 64-bit generators (+ do), d symbolic, d != 0.
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#undef __x86_64__   /* modeling assumption: disable divq inline asm (both sides) */
#include "libdivide.h"
#define T __attribute__((flatten))  /* wrapper-only: inline everything so Alive2 (intraprocedural) sees all code */
T uint64_t target_u64_gen_magic(uint64_t d) { if (d == 0) return 0; return libdivide_u64_gen(d).magic; }
T uint8_t target_u64_gen_more(uint64_t d) { if (d == 0) return 0; return libdivide_u64_gen(d).more; }
T int64_t target_s64_gen_magic(int64_t d) { if (d == 0) return 0; return libdivide_s64_gen(d).magic; }
T uint8_t target_s64_gen_more(int64_t d) { if (d == 0) return 0; return libdivide_s64_gen(d).more; }
T uint64_t target_u64_api(uint64_t n, uint64_t d) { if (d == 0) return 0; struct libdivide_u64_t x = libdivide_u64_gen(d); return libdivide_u64_do(n, &x); }
T int64_t target_s64_api(int64_t n, int64_t d) { if (d == 0) return 0; struct libdivide_s64_t x = libdivide_s64_gen(d); return libdivide_s64_do(n, &x); }
