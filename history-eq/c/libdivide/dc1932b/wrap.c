// libdivide_128_div_128_to_64 (__uint128_t path) and its public caller libdivide_u64_recover.
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#undef __x86_64__   /* modeling assumption: disable divq inline asm in libdivide_u64_gen (both sides) */
#include "libdivide.h"
#define T __attribute__((flatten))  /* wrapper-only: inline everything so Alive2 sees all code */
// raw: all inputs symbolic (quotient/remainder)
T uint64_t target_raw_q(uint64_t uh, uint64_t ul, uint64_t vh, uint64_t vl) { uint64_t rh, rl; return libdivide_128_div_128_to_64(uh, ul, vh, vl, &rh, &rl); }
T uint64_t target_raw_rlo(uint64_t uh, uint64_t ul, uint64_t vh, uint64_t vl) { uint64_t rh, rl; (void)libdivide_128_div_128_to_64(uh, ul, vh, vl, &rh, &rl); return rl; }
T uint64_t target_raw_rhi(uint64_t uh, uint64_t ul, uint64_t vh, uint64_t vl) { uint64_t rh, rl; (void)libdivide_128_div_128_to_64(uh, ul, vh, vl, &rh, &rl); return rh; }
// precond: v != 0 and the quotient fits in 64 bits (documented: "128 / 128 -> 64 bit division")
#define PRE if (!((vh != 0) || (vl != 0 && uh < vl))) return 0;
T uint64_t target_pre_q(uint64_t uh, uint64_t ul, uint64_t vh, uint64_t vl) { PRE uint64_t rh, rl; return libdivide_128_div_128_to_64(uh, ul, vh, vl, &rh, &rl); }
T uint64_t target_pre_rlo(uint64_t uh, uint64_t ul, uint64_t vh, uint64_t vl) { PRE uint64_t rh, rl; (void)libdivide_128_div_128_to_64(uh, ul, vh, vl, &rh, &rl); return rl; }
T uint64_t target_pre_rhi(uint64_t uh, uint64_t ul, uint64_t vh, uint64_t vl) { PRE uint64_t rh, rl; (void)libdivide_128_div_128_to_64(uh, ul, vh, vl, &rh, &rl); return rh; }
// api
T uint64_t target_u64_recover_api(uint64_t d) { if (!d) return 0; struct libdivide_u64_t x = libdivide_u64_gen(d); return libdivide_u64_recover(&x); }
T int64_t target_s64_recover_api(int64_t d) { if (!d) return 0; struct libdivide_s64_t x = libdivide_s64_gen(d); return libdivide_s64_recover(&x); }
