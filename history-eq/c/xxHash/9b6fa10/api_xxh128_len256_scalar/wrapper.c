#include <stdlib.h>
#include <string.h>
#include <stddef.h>
#include <assert.h>
#define noinline always_inline   /* force-inline XXH_NO_INLINE helpers (modeling: Alive2 treats calls as uninterpreted) */
#ifndef XXH_VECTOR
#define XXH_VECTOR 0
#endif
#include "xxh3.h"
#ifdef H128
void target_xxh128(const void* p, unsigned long long seed, XXH128_hash_t* out) { *out = XXH3_128bits_withSeed(p, LEN, seed); }
#else
unsigned long long target_xxh3_64(const void* p, unsigned long long seed) { return XXH3_64bits_withSeed(p, LEN, seed); }
#endif
