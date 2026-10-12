#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* api-level targets; the commit only changes XXH_FORCE_INLINE / XXH_NO_INLINE definitions */
/* XXH32 targets take input bytes by value (U8ARGS): the SSE4.1 XXH32_round asm guard becomes freeze, and
   freeze of possibly-poison loaded bytes makes Alive2 time out even on identical IR */
uint32_t target_xxh32_len20(U8ARGS(a), uint32_t seed) { uint8_t buf[64]; U8FILL(buf, 0, a); return XXH32(buf, 20, seed); }
uint64_t target_xxh64_len40(const uint8_t* p, uint64_t seed) { return XXH64(p, 40, seed); }
uint64_t target_xxh3_len20(const uint8_t* p) { return XXH3_64bits(p, 20); }
uint64_t target_xxh3_len100(const uint8_t* p) { return XXH3_64bits(p, 100); }
uint64_t target_xxh3_len200(const uint8_t* p) { return XXH3_64bits(p, 200); }
uint64_t target_xxh3_len300(const uint8_t* p) { return XXH3_64bits(p, 300); }
uint64_t target_xxh128_len20_lo(const uint8_t* p) { return XXH128(p, 20, 0).low64; }
