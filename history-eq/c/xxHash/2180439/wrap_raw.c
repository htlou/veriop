/* 2180439 raw: XXH3_len_17to128_64b, len 17..128 symbolic; input (128 B) and secret (first 128 B of a 192 B buffer, rest 0) by value */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* value-arg helpers: 16 B input, 64 B secret, copied to fresh local buffers */
#define IN16(b) _Alignas(64) unsigned char b[16]; memcpy(b, &in0, 8); memcpy(b + 8, &in1, 8)
#define SEC64(b) _Alignas(64) unsigned char b[64]; U8FILL(b, 0, s)
uint64_t target_raw_len_17to128_64b(U8ARGS(a), U8ARGS(b), size_t len, U8ARGS(s), U8ARGS(t), uint64_t seed) {
  if (len < 17 || len > 128) return 0;
  _Alignas(64) unsigned char in[128]; U8FILL(in, 0, a); U8FILL(in, 64, b);
  _Alignas(64) unsigned char sec[192]; memset(sec, 0, sizeof sec); U8FILL(sec, 0, s); U8FILL(sec, 64, t);
  return XXH3_len_17to128_64b(in, len, sec, sizeof sec, seed);
}
