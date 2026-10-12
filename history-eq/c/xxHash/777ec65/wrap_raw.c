/* 777ec65 raw: the memory-read primitives (changed under XXH_FORCE_MEMORY_ACCESS==3) */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* value-arg helpers: 16 B input, 64 B secret, copied to fresh local buffers */
#define IN16(b) _Alignas(64) unsigned char b[16]; memcpy(b, &in0, 8); memcpy(b + 8, &in1, 8)
#define SEC64(b) _Alignas(64) unsigned char b[64]; U8FILL(b, 0, s)
uint32_t target_raw_readLE32(const uint8_t* p) { return XXH_readLE32(p); }
uint32_t target_raw_readBE32(const uint8_t* p) { return XXH_readBE32(p); }
uint64_t target_raw_readLE64(const uint8_t* p) { return XXH_readLE64(p); }
uint64_t target_raw_readBE64(const uint8_t* p) { return XXH_readBE64(p); }
