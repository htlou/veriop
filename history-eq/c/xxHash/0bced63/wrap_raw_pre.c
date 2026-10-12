#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* DIAGNOSTIC precond (NOT library-guaranteed): seed != 2^63, i.e. exclude the input on which the new
   `-(xxh_i64)seed64` overflows (signed-overflow UB found by the unconstrained check). */
void target_initsec_pre(uint8_t* out, uint64_t seed) {
  __builtin_assume(seed != 0x8000000000000000ULL);
  _Alignas(64) unsigned char sec[XXH_SECRET_DEFAULT_SIZE];
  XXH3_initCustomSecret(sec, seed);
  memcpy(out, sec, XXH_SECRET_DEFAULT_SIZE);
}
