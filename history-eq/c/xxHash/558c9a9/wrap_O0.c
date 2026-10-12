/* 558c9a9 source-level check of the XXH_mult32to64 macro in UNOPTIMIZED IR (-O0 -disable-O0-optnone), where mask vs downcast/upcast are not canonicalised away */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* value-arg helpers: 16 B input, 64 B secret, copied to fresh local buffers */
#define IN16(b) _Alignas(64) unsigned char b[16]; memcpy(b, &in0, 8); memcpy(b + 8, &in1, 8)
#define SEC64(b) _Alignas(64) unsigned char b[64]; U8FILL(b, 0, s)
uint64_t target_raw_mult32to64_O0(uint64_t a, uint64_t b) { return XXH_mult32to64(a, b); }
uint64_t target_raw_mult32to64_u32args_O0(uint32_t a, uint32_t b) { return XXH_mult32to64(a, b); }
