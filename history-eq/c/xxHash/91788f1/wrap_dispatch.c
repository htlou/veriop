#include "xxh_harness.h"
/* xxh_x86dispatch.c also changed (passes XXH3_accumulate_<arch> instead of XXH3_accumulate_512_<arch>).
   Include it (compiled for baseline x86-64, as the file demands) and call its per-arch long-input variants
   directly (bypassing the cpuid dispatcher); each target carries the same target attribute as the callee
   so that it can be inlined. */
#include "xxh_x86dispatch.c"
#define TA2 __attribute__((__target__("avx2")))
#define TA5 __attribute__((__target__("avx512f")))
uint64_t target_d64_default_sse2_len256(const uint8_t* p) { return XXHL64_default_sse2(p, 256); }
TA2 uint64_t target_d64_default_avx2_len256(const uint8_t* p) { return XXHL64_default_avx2(p, 256); }
TA5 uint64_t target_d64_default_avx512_len256(const uint8_t* p) { return XXHL64_default_avx512(p, 256); }
TA2 uint64_t target_d64_seed_avx2_len256(const uint8_t* p, uint64_t s) { return XXHL64_seed_avx2(p, 256, s); }
TA2 uint64_t target_d64_secret_avx2_len256(const uint8_t* p, const uint8_t* sec) { return XXHL64_secret_avx2(p, 256, sec, 192); }
TA2 void target_d128_default_avx2_len256(uint64_t* out, const uint8_t* p) { XXH128_hash_t h = XXHL128_default_avx2(p, 256); out[0]=h.low64; out[1]=h.high64; }
