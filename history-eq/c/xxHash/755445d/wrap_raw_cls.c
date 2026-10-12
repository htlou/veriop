/* 755445d raw: XXH3_len_129to240_{64b,128b} with symbolic len split by 2nd-loop trip count; input and secret pointers (read-only), secretSize=136 */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* value-arg helpers: 16 B input, 64 B secret, copied to fresh local buffers */
#define IN16(b) _Alignas(64) unsigned char b[16]; memcpy(b, &in0, 8); memcpy(b + 8, &in1, 8)
#define SEC64(b) _Alignas(64) unsigned char b[64]; U8FILL(b, 0, s)
uint64_t target_raw_129to240_64b_129to143(const uint8_t* p, size_t len, const uint8_t* sec, uint64_t seed) { if (len < 129 || len > 143) return 0; return XXH3_len_129to240_64b(p, len, sec, 136, seed); }
uint64_t target_raw_129to240_64b_144to159(const uint8_t* p, size_t len, const uint8_t* sec, uint64_t seed) { if (len < 144 || len > 159) return 0; return XXH3_len_129to240_64b(p, len, sec, 136, seed); }
uint64_t target_raw_129to240_64b_160to175(const uint8_t* p, size_t len, const uint8_t* sec, uint64_t seed) { if (len < 160 || len > 175) return 0; return XXH3_len_129to240_64b(p, len, sec, 136, seed); }
uint64_t target_raw_129to240_64b_176to191(const uint8_t* p, size_t len, const uint8_t* sec, uint64_t seed) { if (len < 176 || len > 191) return 0; return XXH3_len_129to240_64b(p, len, sec, 136, seed); }
uint64_t target_raw_129to240_64b_192to207(const uint8_t* p, size_t len, const uint8_t* sec, uint64_t seed) { if (len < 192 || len > 207) return 0; return XXH3_len_129to240_64b(p, len, sec, 136, seed); }
uint64_t target_raw_129to240_64b_208to223(const uint8_t* p, size_t len, const uint8_t* sec, uint64_t seed) { if (len < 208 || len > 223) return 0; return XXH3_len_129to240_64b(p, len, sec, 136, seed); }
uint64_t target_raw_129to240_64b_224to239(const uint8_t* p, size_t len, const uint8_t* sec, uint64_t seed) { if (len < 224 || len > 239) return 0; return XXH3_len_129to240_64b(p, len, sec, 136, seed); }
uint64_t target_raw_129to240_64b_240to240(const uint8_t* p, size_t len, const uint8_t* sec, uint64_t seed) { if (len < 240 || len > 240) return 0; return XXH3_len_129to240_64b(p, len, sec, 136, seed); }
void target_raw_129to240_128b_129to159(const uint8_t* p, size_t len, const uint8_t* sec, uint64_t seed, XXH128_hash_t* o) { if (len < 129 || len > 159) return; *o = XXH3_len_129to240_128b(p, len, sec, 136, seed); }
void target_raw_129to240_128b_160to191(const uint8_t* p, size_t len, const uint8_t* sec, uint64_t seed, XXH128_hash_t* o) { if (len < 160 || len > 191) return; *o = XXH3_len_129to240_128b(p, len, sec, 136, seed); }
void target_raw_129to240_128b_192to223(const uint8_t* p, size_t len, const uint8_t* sec, uint64_t seed, XXH128_hash_t* o) { if (len < 192 || len > 223) return; *o = XXH3_len_129to240_128b(p, len, sec, 136, seed); }
void target_raw_129to240_128b_224to240(const uint8_t* p, size_t len, const uint8_t* sec, uint64_t seed, XXH128_hash_t* o) { if (len < 224 || len > 240) return; *o = XXH3_len_129to240_128b(p, len, sec, 136, seed); }
