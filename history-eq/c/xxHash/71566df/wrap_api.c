#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* api, long inputs (len 300 > 240 -> hashLong): XXH3_64bits/XXH3_128bits now call the new hashLong_*_default
   (perf fix #398); XXH3_128bits_withSecret now calls hashLong_128b_withSecret instead of _defaultSecret (bug fix).
   Custom secret (192 bytes) passed by value. */
#define SECARGS U8ARGS(s0), U8ARGS(s1), U8ARGS(s2)
#define SECFILL(b) U8FILL(b,0,s0); U8FILL(b,64,s1); U8FILL(b,128,s2)
uint64_t target_64_len300(const uint8_t* p) { return XXH3_64bits(p, 300); }
void target_128_len300(uint64_t* out, const uint8_t* p) { XXH128_hash_t h = XXH3_128bits(p, 300); out[0]=h.low64; out[1]=h.high64; }
uint64_t target_64sec_len300(const uint8_t* p, SECARGS) { unsigned char s[192]; SECFILL(s); return XXH3_64bits_withSecret(p, 300, s, 192); }
void target_128sec_len300(uint64_t* out, const uint8_t* p, SECARGS) { unsigned char s[192]; SECFILL(s); XXH128_hash_t h = XXH3_128bits_withSecret(p, 300, s, 192); out[0]=h.low64; out[1]=h.high64; }
