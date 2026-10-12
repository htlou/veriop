// libdivide_128_div_64_to_64 (portable path; inline-asm path disabled identically on both sides).
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#undef __x86_64__   /* modeling assumption: disable divq inline asm (both sides) */
#include "libdivide.h"
#define T __attribute__((flatten))  /* wrapper-only: inline everything so Alive2 (intraprocedural) sees all code */
// raw: all inputs symbolic
T uint64_t target_raw_quot(uint64_t hi, uint64_t lo, uint64_t den) { uint64_t r; return libdivide_128_div_64_to_64(hi, lo, den, &r); }
T uint64_t target_raw_rem(uint64_t hi, uint64_t lo, uint64_t den) { uint64_t r; (void)libdivide_128_div_64_to_64(hi, lo, den, &r); return r; }
// precond: documented contract "the result must fit in 64 bits" i.e. hi < den (implies den != 0)
T uint64_t target_pre_quot(uint64_t hi, uint64_t lo, uint64_t den) { if (!(hi < den)) return 0; uint64_t r; return libdivide_128_div_64_to_64(hi, lo, den, &r); }
T uint64_t target_pre_rem(uint64_t hi, uint64_t lo, uint64_t den) { if (!(hi < den)) return 0; uint64_t r; (void)libdivide_128_div_64_to_64(hi, lo, den, &r); return r; }
