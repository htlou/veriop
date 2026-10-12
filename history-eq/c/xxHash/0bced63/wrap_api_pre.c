#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* DIAGNOSTIC precond (NOT library-guaranteed): seed != 2^63 (see wrap_raw_pre.c). */
uint64_t target_64seed_len300_pre(const uint8_t* p, uint64_t seed) { __builtin_assume(seed != 0x8000000000000000ULL); return XXH3_64bits_withSeed(p, 300, seed); }
void target_128seed_len300_pre(uint64_t* out, const uint8_t* p, uint64_t seed) { __builtin_assume(seed != 0x8000000000000000ULL); XXH128_hash_t h = XXH3_128bits_withSeed(p, 300, seed); out[0]=h.low64; out[1]=h.high64; }
