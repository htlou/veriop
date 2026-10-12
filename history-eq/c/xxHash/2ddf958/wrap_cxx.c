#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* compiled as C++ (-x c++): XXH_RESTRICT was empty in C++ before this commit, __restrict after */
#ifdef __cplusplus
extern "C" {
#endif
uint64_t target_xxh3_len200(const uint8_t* p) { return XXH3_64bits(p, 200); }
uint64_t target_xxh3_len300(const uint8_t* p) { return XXH3_64bits(p, 300); }
uint64_t target_xxh3_seed_len300(const uint8_t* p, uint64_t seed) { return XXH3_64bits_withSeed(p, 300, seed); }
uint64_t target_xxh3_secret_len300(const uint8_t* p, const uint8_t* sec) { return XXH3_64bits_withSecret(p, 300, sec, 192); }
uint64_t target_xxh128_len300_hi(const uint8_t* p) { return XXH3_128bits(p, 300).high64; }
#ifdef __cplusplus
}
#endif
