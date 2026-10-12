/* 6456c04 raw: XXH3_len_0to16_64b per length subclass excluding len 8 + len 8 alone; input (16 B) and secret (64 B) by value */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* value-arg helpers: 16 B input, 64 B secret, copied to fresh local buffers */
#define IN16(b) _Alignas(64) unsigned char b[16]; memcpy(b, &in0, 8); memcpy(b + 8, &in1, 8)
#define SEC64(b) _Alignas(64) unsigned char b[64]; U8FILL(b, 0, s)
uint64_t target_raw_len_0to16_64b_0to0(uint64_t in0, uint64_t in1, size_t len, U8ARGS(s), uint64_t seed) { if (len < 0 || len > 0) return 0; IN16(in); SEC64(sec); return XXH3_len_0to16_64b(in, len, sec, seed); }
uint64_t target_raw_len_0to16_64b_1to3(uint64_t in0, uint64_t in1, size_t len, U8ARGS(s), uint64_t seed) { if (len < 1 || len > 3) return 0; IN16(in); SEC64(sec); return XXH3_len_0to16_64b(in, len, sec, seed); }
uint64_t target_raw_len_0to16_64b_4to7(uint64_t in0, uint64_t in1, size_t len, U8ARGS(s), uint64_t seed) { if (len < 4 || len > 7) return 0; IN16(in); SEC64(sec); return XXH3_len_0to16_64b(in, len, sec, seed); }
uint64_t target_raw_len_0to16_64b_9to16(uint64_t in0, uint64_t in1, size_t len, U8ARGS(s), uint64_t seed) { if (len < 9 || len > 16) return 0; IN16(in); SEC64(sec); return XXH3_len_0to16_64b(in, len, sec, seed); }
uint64_t target_raw_len_0to16_64b_8to8(uint64_t in0, uint64_t in1, size_t len, U8ARGS(s), uint64_t seed) { if (len < 8 || len > 8) return 0; IN16(in); SEC64(sec); return XXH3_len_0to16_64b(in, len, sec, seed); }
