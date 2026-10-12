/* b54708f raw: XXH3_len_4to8_128b (len 4..8) */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* value-arg helpers: 16 B input, 64 B secret, copied to fresh local buffers */
#define IN16(b) _Alignas(64) unsigned char b[16]; memcpy(b, &in0, 8); memcpy(b + 8, &in1, 8)
#define SEC64(b) _Alignas(64) unsigned char b[64]; U8FILL(b, 0, s)
void target_raw_len_4to8_128b(uint64_t in0, uint64_t in1, size_t len, U8ARGS(s), uint64_t seed, XXH128_hash_t* o) {
  if (len < 4 || len > 8) return; IN16(in); SEC64(sec); *o = XXH3_len_4to8_128b(in, len, sec, seed); }
