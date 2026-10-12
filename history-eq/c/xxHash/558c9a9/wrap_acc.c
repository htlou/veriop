/* 558c9a9 raw: scalar XXH3_accumulate_512 (compile with -DXXH_VECTOR=0); acc/input/secret by value */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* value-arg helpers: 16 B input, 64 B secret, copied to fresh local buffers */
#define IN16(b) _Alignas(64) unsigned char b[16]; memcpy(b, &in0, 8); memcpy(b + 8, &in1, 8)
#define SEC64(b) _Alignas(64) unsigned char b[64]; U8FILL(b, 0, s)
void target_raw_accumulate_512(U8ARGS(a), U8ARGS(i), U8ARGS(s), int w, uint64_t* out) {
  if (w != 0 && w != 1) return;
  _Alignas(64) uint64_t acc[8]; U8FILL(acc, 0, a);
  _Alignas(64) unsigned char in[64]; U8FILL(in, 0, i);
  _Alignas(64) unsigned char sec[64]; U8FILL(sec, 0, s);
  XXH3_accumulate_512(acc, in, sec, (XXH3_accWidth_e)w);
  memcpy(out, acc, 64);
}
