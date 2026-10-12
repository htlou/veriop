/* 558c9a9 raw: the XXH_mult32to64 macro itself (u64 operands, as at its call sites) */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* value-arg helpers: 16 B input, 64 B secret, copied to fresh local buffers */
#define IN16(b) _Alignas(64) unsigned char b[16]; memcpy(b, &in0, 8); memcpy(b + 8, &in1, 8)
#define SEC64(b) _Alignas(64) unsigned char b[64]; U8FILL(b, 0, s)
uint64_t target_raw_mult32to64(uint64_t a, uint64_t b) { return XXH_mult32to64(a, b); }
/* portable 64x64->128 multiply (uses XXH_mult32to64 four times when no __int128, e.g. i386) */
void target_raw_mult64to128(uint64_t a, uint64_t b, XXH128_hash_t* o) { *o = XXH_mult64to128(a, b); }
