/* raw: XXH3_len_4to8_64b (class len 4..8: XXH3_len_0to16_64b routes len>8 to 9to16 (the len<8 assert in 4to8 is stale)).
   input (16 B) and secret (64 B) passed by value, copied into fresh local buffers. */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
uint64_t target_raw_len_4to8_64b(uint64_t in0, uint64_t in1, size_t len, U8ARGS(s), uint64_t seed) {
  if (len < 4 || len > 8) return 0;
  _Alignas(64) unsigned char in[16]; memcpy(in, &in0, 8); memcpy(in + 8, &in1, 8);
  _Alignas(64) unsigned char sec[64]; U8FILL(sec, 0, s);
  return XXH3_len_4to8_64b(in, len, sec, seed);
}
