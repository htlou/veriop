/* 1456dc5 raw: XXH3_len_17to128_{64b,128b} (XXH_SIZE_OPT=1 loop) and XXH3_len_129to240_{64b,128b}, symbolic len; input pointer, secret = kSecret-sized pointer arg */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* value-arg helpers: 16 B input, 64 B secret, copied to fresh local buffers */
#define IN16(b) _Alignas(64) unsigned char b[16]; memcpy(b, &in0, 8); memcpy(b + 8, &in1, 8)
#define SEC64(b) _Alignas(64) unsigned char b[64]; U8FILL(b, 0, s)
uint64_t target_raw_17to128_64b(const uint8_t* p, size_t len, const uint8_t* sec, uint64_t seed) { if (len < 17 || len > 128) return 0; return XXH3_len_17to128_64b(p, len, sec, 136, seed); }
void target_raw_17to128_128b(const uint8_t* p, size_t len, const uint8_t* sec, uint64_t seed, XXH128_hash_t* o) { if (len < 17 || len > 128) return; *o = XXH3_len_17to128_128b(p, len, sec, 136, seed); }
uint64_t target_raw_129to240_64b(const uint8_t* p, size_t len, const uint8_t* sec, uint64_t seed) { if (len < 129 || len > 240) return 0; return XXH3_len_129to240_64b(p, len, sec, 136, seed); }
void target_raw_129to240_128b(const uint8_t* p, size_t len, const uint8_t* sec, uint64_t seed, XXH128_hash_t* o) { if (len < 129 || len > 240) return; *o = XXH3_len_129to240_128b(p, len, sec, 136, seed); }
