#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* implementation level: attributes on (inlined) API functions; fixed lengths */
/* XXH32 targets take the input bytes by value (U8ARGS): with SSE4.1 the XXH32_round asm guard becomes freeze,
   and freeze of possibly-poison loaded bytes makes Alive2 time out even on identical IR */
uint32_t target_xxh32_len20(U8ARGS(a), uint32_t seed) { uint8_t buf[64]; U8FILL(buf, 0, a); return XXH32(buf, 20, seed); }
uint64_t target_xxh64_len40(const uint8_t* p, uint64_t seed) { return XXH64(p, 40, seed); }
uint64_t target_xxh3_len20(const uint8_t* p) { return XXH3_64bits(p, 20); }
uint64_t target_xxh3_len200(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 200, seed); }
uint64_t target_xxh128_len20_lo(const uint8_t* p) { return XXH3_128bits(p, 20).low64; }
uint32_t target_s32_10_10(U8ARGS(a), uint32_t seed) { uint8_t buf[64]; U8FILL(buf, 0, a); XXH32_state_t s; XXH32_reset(&s, seed); XXH32_update(&s, buf, 10); XXH32_update(&s, buf+10, 10); return XXH32_digest(&s); }
uint64_t target_canon64(const uint8_t* p) { XXH64_canonical_t c; memcpy(&c, p, 8); return XXH64_hashFromCanonical(&c); }
unsigned target_version(void) { return XXH_versionNumber(); }
