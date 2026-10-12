/* 1456dc5 api (XXH_SIZE_OPT=1 config): 17to128 64b/128b loop path, symbolic len 17..128 */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* value-arg helpers: 16 B input, 64 B secret, copied to fresh local buffers */
#define IN16(b) _Alignas(64) unsigned char b[16]; memcpy(b, &in0, 8); memcpy(b + 8, &in1, 8)
#define SEC64(b) _Alignas(64) unsigned char b[64]; U8FILL(b, 0, s)
uint64_t target_api_64_seed_17to128(const uint8_t* p, size_t len, uint64_t seed) { if (len < 17 || len > 128) return 0; return XXH3_64bits_withSeed(p, len, seed); }
void target_api_128_seed_17to128(const uint8_t* p, size_t len, uint64_t seed, XXH128_hash_t* o) { if (len < 17 || len > 128) return; *o = XXH3_128bits_withSeed(p, len, seed); }
