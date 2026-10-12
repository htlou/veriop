/* 0a5f34f raw: changed small-input internals (4to8_64b = perf claim; 0to16_64b covers 1to3/4to8/9to16/len0 + avalanche) */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* value-arg helpers: 16 B input, 64 B secret, copied to fresh local buffers */
#define IN16(b) _Alignas(64) unsigned char b[16]; memcpy(b, &in0, 8); memcpy(b + 8, &in1, 8)
#define SEC64(b) _Alignas(64) unsigned char b[64]; U8FILL(b, 0, s)
uint64_t target_raw_len_4to8_64b(uint64_t in0, uint64_t in1, size_t len, U8ARGS(s), uint64_t seed) {
  if (len < 4 || len > 8) return 0; IN16(in); SEC64(sec); return XXH3_len_4to8_64b(in, len, sec, seed); }
uint64_t target_raw_len_0to16_64b(uint64_t in0, uint64_t in1, size_t len, U8ARGS(s), uint64_t seed) {
  if (len > 16) return 0; IN16(in); SEC64(sec); return XXH3_len_0to16_64b(in, len, sec, seed); }
