/* api: XXH3 64-bit public entry points, symbolic length bounded to the changed class (4..8) and to 0..16 */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
uint64_t target_api_64_4to8(const uint8_t* p, size_t len) { if (len < 4 || len > 8) return 0; return XXH3_64bits(p, len); }
uint64_t target_api_64_seed_4to8(const uint8_t* p, size_t len, uint64_t seed) { if (len < 4 || len > 8) return 0; return XXH3_64bits_withSeed(p, len, seed); }
uint64_t target_api_64_secret_4to8(const uint8_t* p, size_t len, const uint8_t* sec, size_t secSize) { if (len < 4 || len > 8 || secSize < 136) return 0; return XXH3_64bits_withSecret(p, len, sec, secSize); }
uint64_t target_api_64_seed_0to16(const uint8_t* p, size_t len, uint64_t seed) { if (len > 16) return 0; return XXH3_64bits_withSeed(p, len, seed); }
