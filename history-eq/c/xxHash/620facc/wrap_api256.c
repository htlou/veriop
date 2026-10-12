#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
uint64_t target_api64_len256(const uint8_t* p) { return XXH3_64bits(p, 256); }
