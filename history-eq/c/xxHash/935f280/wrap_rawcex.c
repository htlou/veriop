/* 935f280 raw counterexample search: XXH3_len_4to8_128b with fixed len, secret = 64 zero bytes (a concrete valid secret), input+seed symbolic (value args) */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* value-arg helpers: 16 B input, 64 B secret, copied to fresh local buffers */
#define IN16(b) _Alignas(64) unsigned char b[16]; memcpy(b, &in0, 8); memcpy(b + 8, &in1, 8)
#define SEC64(b) _Alignas(64) unsigned char b[64]; U8FILL(b, 0, s)
void target_rawcex_XXH3_len_4to8_128b_len4(uint64_t in0, uint64_t in1, uint64_t seed, XXH128_hash_t* o) { IN16(in); _Alignas(64) unsigned char sec[64] = {0}; *o = XXH3_len_4to8_128b(in, 4, sec, seed); }
void target_rawcex_XXH3_len_4to8_128b_len8(uint64_t in0, uint64_t in1, uint64_t seed, XXH128_hash_t* o) { IN16(in); _Alignas(64) unsigned char sec[64] = {0}; *o = XXH3_len_4to8_128b(in, 8, sec, seed); }
