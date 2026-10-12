#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* IR-identity probe: all one-shot public hash entry points with symbolic len (not for Alive2). */
uint32_t target_xxh32(const void* p, size_t len, uint32_t seed) { return XXH32(p, len, seed); }
uint64_t target_xxh64(const void* p, size_t len, uint64_t seed) { return XXH64(p, len, seed); }
uint64_t target_xxh3_64_seed(const void* p, size_t len, uint64_t seed) { return XXH3_64bits_withSeed(p, len, seed); }
uint64_t target_xxh3_64_secret(const void* p, size_t len, const void* s, size_t sl) { if (sl < 136) return 0; return XXH3_64bits_withSecret(p, len, s, sl); }
void target_xxh3_128_seed(XXH128_hash_t* o, const void* p, size_t len, uint64_t seed) { *o = XXH3_128bits_withSeed(p, len, seed); }
