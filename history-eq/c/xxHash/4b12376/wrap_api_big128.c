#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
void target_128_len1100(uint64_t* out, const uint8_t* p) { XXH128_hash_t h = XXH3_128bits(p, 1100); out[0]=h.low64; out[1]=h.high64; }
