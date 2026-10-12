#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* public one-shot APIs at fixed lengths; input bytes from noundef scalar args copied into a local buffer
   (exercises every XXH_read32/XXH_read64/XXH_readLE* unaligned-read helper). */
#define BUF unsigned char buf[192]; U8FILL(buf,0,a); U8FILL(buf,64,b); U8FILL(buf,128,c);
#define T32(n) uint32_t target_xxh32_len##n(U8ARGS(a), U8ARGS(b), U8ARGS(c), uint32_t seed) { BUF return XXH32(buf+1, n, seed); }
#define T64(n) uint64_t target_xxh64_len##n(U8ARGS(a), U8ARGS(b), U8ARGS(c), uint64_t seed) { BUF return XXH64(buf+1, n, seed); }
#define T3(n) uint64_t target_xxh3_len##n(U8ARGS(a), U8ARGS(b), U8ARGS(c), uint64_t seed) { BUF return XXH3_64bits_withSeed(buf+1, n, seed); }
T32(3) T32(7) T32(16) T32(35)
T64(5) T64(12) T64(32) T64(45)
T3(3) T3(8) T3(16) T3(100) T3(129) T3(180)
void target_xxh128_len12(XXH128_hash_t* o, U8ARGS(a), U8ARGS(b), U8ARGS(c), uint64_t seed) { BUF *o = XXH3_128bits_withSeed(buf+1, 12, seed); }
