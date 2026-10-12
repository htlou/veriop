/* 6456c04 raw: XXH3_len_0to16_64b dispatch (XXH_likely hints + len==8 rerouted 4to8 -> 9to16) */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* value-arg helpers: 16 B input, 64 B secret, copied to fresh local buffers */
#define IN16(b) _Alignas(64) unsigned char b[16]; memcpy(b, &in0, 8); memcpy(b + 8, &in1, 8)
#define SEC64(b) _Alignas(64) unsigned char b[64]; U8FILL(b, 0, s)
uint64_t target_raw_len_0to16_64b(uint64_t in0, uint64_t in1, size_t len, U8ARGS(s), uint64_t seed) {
  if (len > 16) return 0; IN16(in); SEC64(sec); return XXH3_len_0to16_64b(in, len, sec, seed); }
/* same, excluding len==8 (the only length whose routing changed): isolates the XXH_likely branch hints */
uint64_t target_raw_len_0to16_64b_not8(uint64_t in0, uint64_t in1, size_t len, U8ARGS(s), uint64_t seed) {
  if (len > 16 || len == 8) return 0; IN16(in); SEC64(sec); return XXH3_len_0to16_64b(in, len, sec, seed); }
