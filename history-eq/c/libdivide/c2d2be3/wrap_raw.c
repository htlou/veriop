// c2d2be3: remainder of portable libdivide_128_div_64_to_64 (asm path disabled on both sides).
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#undef __x86_64__   /* modeling assumption: select portable (non-divq) path on both sides */
#include "libdivide.h"
uint64_t target_rem(uint64_t hi, uint64_t lo, uint64_t den) {
  uint64_t r; (void)libdivide_128_div_64_to_64(hi, lo, den, &r); return r; }
uint64_t target_quot(uint64_t hi, uint64_t lo, uint64_t den) {
  uint64_t r; return libdivide_128_div_64_to_64(hi, lo, den, &r); }
#ifdef WITH_PRE
// precond: documented contract "the result must fit in 64 bits" (hi < den)
uint64_t target_pre_rem(uint64_t hi, uint64_t lo, uint64_t den) { if (!(hi < den)) return 0; uint64_t r; (void)libdivide_128_div_64_to_64(hi, lo, den, &r); return r; }
#endif
