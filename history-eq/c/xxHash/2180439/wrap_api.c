/* 2180439 api: XXH3_64bits / _withSeed / _withSecret, len 17..128 symbolic (17to128_64b is loop-free in the default XXH_SIZE_OPT=0 config); 128-bit variant unchanged (control) */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* value-arg helpers: 16 B input, 64 B secret, copied to fresh local buffers */
#define IN16(b) _Alignas(64) unsigned char b[16]; memcpy(b, &in0, 8); memcpy(b + 8, &in1, 8)
#define SEC64(b) _Alignas(64) unsigned char b[64]; U8FILL(b, 0, s)
uint64_t target_api_64_17to128(const uint8_t* p, size_t len) { if (len < 17 || len > 128) return 0; return XXH3_64bits(p, len); }
uint64_t target_api_64_seed_17to128(const uint8_t* p, size_t len, uint64_t seed) { if (len < 17 || len > 128) return 0; return XXH3_64bits_withSeed(p, len, seed); }
uint64_t target_api_64_secret_17to128(const uint8_t* p, size_t len, const uint8_t* sec, size_t secSize) { if (len < 17 || len > 128 || secSize < 136) return 0; return XXH3_64bits_withSecret(p, len, sec, secSize); }
