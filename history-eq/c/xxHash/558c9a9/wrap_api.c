/* 558c9a9 api: XXH3 64/128 with seed, len 9..16 (9to16_128b lenContrib uses XXH_mult32to64; on i386 XXH_mult64to128/mul128_fold64 use it too) and len 1..16 */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* value-arg helpers: 16 B input, 64 B secret, copied to fresh local buffers */
#define IN16(b) _Alignas(64) unsigned char b[16]; memcpy(b, &in0, 8); memcpy(b + 8, &in1, 8)
#define SEC64(b) _Alignas(64) unsigned char b[64]; U8FILL(b, 0, s)
void target_api_128_seed_9to16(const uint8_t* p, size_t len, uint64_t seed, XXH128_hash_t* o) { if (len < 9 || len > 16) return; *o = XXH3_128bits_withSeed(p, len, seed); }
void target_api_128_9to16(const uint8_t* p, size_t len, XXH128_hash_t* o) { if (len < 9 || len > 16) return; *o = XXH3_128bits(p, len); }
uint64_t target_api_64_seed_0to16(const uint8_t* p, size_t len, uint64_t seed) { if (len > 16) return 0; return XXH3_64bits_withSeed(p, len, seed); }
