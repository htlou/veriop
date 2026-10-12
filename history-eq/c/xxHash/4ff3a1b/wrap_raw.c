#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* raw level: internal length-class functions called OUTSIDE their asserted preconditions
   (len unconstrained), to compare the UB domains of `if(!(c)) __builtin_unreachable()` (old) vs
   `__builtin_assume(c)` (new). */
uint64_t target_raw_len_1to3(const uint8_t* p, size_t len, uint64_t seed) { return XXH3_len_1to3_64b(p, len, XXH3_kSecret, seed); }
uint64_t target_raw_len_4to8(const uint8_t* p, size_t len, uint64_t seed) { return XXH3_len_4to8_64b(p, len, XXH3_kSecret, seed); }
uint64_t target_raw_len_9to16(const uint8_t* p, size_t len, uint64_t seed) { return XXH3_len_9to16_64b(p, len, XXH3_kSecret, seed); }
uint64_t target_raw_len_0to16(const uint8_t* p, size_t len, uint64_t seed) { return XXH3_len_0to16_64b(p, len, XXH3_kSecret, seed); }
