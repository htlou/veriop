/* api-level streaming harness for XXH3 (identical for old/new): stack XXH3_state_t (layout
   invisible), memset-initialised, reset -> update(s) with FIXED lengths (content symbolic) -> digest.
   To make block boundaries reachable with few stripes, several targets use
   XXH3_64bits_reset_withSecret(&s, sec, 136): minimum secret size -> secretLimit=72,
   nbStripesPerBlock=9 (block = 576 bytes); `sec` is a symbolic caller buffer.
   Select a target with -DT=<n>. */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
#ifndef T
#define T 0
#endif
#define SEL(n) (T == 0 || T == (n))
#define INIT(s) memset(&(s), 0, sizeof(s))
/* -DPIN: tell clang the (trivially true, on both sides) facts totalLen == L and extSecret == sec before
   digest, so that the infeasible short-input digest paths (which read the 192-byte XXH3_kSecret table,
   whose contents Alive2 does not model -> "approximation") are folded away. */
#ifdef PIN
#define PINS(s, L, sec) do { __builtin_assume((s).totalLen == (L)); __builtin_assume((s).extSecret == (const unsigned char*)(sec)); } while (0)
#else
#define PINS(s, L, sec) ((void)0)
#endif
/* 1: default secret, 100 + 200 bytes (crosses the 256-byte internal buffer) */
#if SEL(1)
uint64_t target_100_200(const uint8_t* p) {
    XXH3_state_t s; INIT(s);
    XXH3_64bits_reset(&s);
    XXH3_64bits_update(&s, p, 100);
    XXH3_64bits_update(&s, p + 100, 200);
    return XXH3_64bits_digest(&s);
}
#endif
/* 2: 136-byte secret (9 stripes/block), single update of 700 bytes (one full block + partial) */
#if SEL(2)
uint64_t target_sec136_700(const uint8_t* p, const uint8_t* sec) {
    XXH3_state_t s; INIT(s);
    if (sec == NULL) return 0;  /* documented: secret must be non-NULL */
    XXH3_64bits_reset_withSecret(&s, sec, 136);
    XXH3_64bits_update(&s, p, 700);
    PINS(s, 700, sec);
    return XXH3_64bits_digest(&s);
}
#endif
/* 3: 136-byte secret, single update of 1153 bytes = 18 full stripes + 1 byte (2 exact blocks) */
#if SEL(3)
uint64_t target_sec136_1153(const uint8_t* p, const uint8_t* sec) {
    XXH3_state_t s; INIT(s);
    if (sec == NULL) return 0;  /* documented: secret must be non-NULL */
    XXH3_64bits_reset_withSecret(&s, sec, 136);
    XXH3_64bits_update(&s, p, 1153);
    PINS(s, 1153, sec);
    return XXH3_64bits_digest(&s);
}
#endif
/* 4: 128-bit streaming, default secret, 100 + 200 */
#if SEL(4)
void target_128_100_200(const uint8_t* p, uint64_t* out) {
    XXH3_state_t s; INIT(s);
    XXH3_128bits_reset(&s);
    XXH3_128bits_update(&s, p, 100);
    XXH3_128bits_update(&s, p + 100, 200);
    XXH128_hash_t h = XXH3_128bits_digest(&s);
    out[0] = h.low64; out[1] = h.high64;
}
#endif
/* 5: 136-byte secret, 300 + 400 bytes (buffered prefix, then the large-input path) */
#if SEL(5)
uint64_t target_sec136_300_400(const uint8_t* p, const uint8_t* sec) {
    XXH3_state_t s; INIT(s);
    if (sec == NULL) return 0;  /* documented: secret must be non-NULL */
    XXH3_64bits_reset_withSecret(&s, sec, 136);
    XXH3_64bits_update(&s, p, 300);
    XXH3_64bits_update(&s, p + 300, 400);
    PINS(s, 700, sec);
    return XXH3_64bits_digest(&s);
}
#endif
/* 6: 136-byte secret, 1153 bytes, 128-bit */
#if SEL(6)
void target_128_sec136_1153(const uint8_t* p, const uint8_t* sec, uint64_t* out) {
    XXH3_state_t s; INIT(s);
    if (sec == NULL) { out[0] = out[1] = 0; return; }  /* documented: secret must be non-NULL */
    XXH3_128bits_reset_withSecret(&s, sec, 136);
    XXH3_128bits_update(&s, p, 1153);
    PINS(s, 1153, sec);
    XXH128_hash_t h = XXH3_128bits_digest(&s);
    out[0] = h.low64; out[1] = h.high64;
}
#endif
/* 7: 136-byte secret, 1100 bytes (17 stripes + 12 bytes: one exact block + 8 stripes; not the off-by-one case) */
#if SEL(7)
uint64_t target_sec136_1100(const uint8_t* p, const uint8_t* sec) {
    XXH3_state_t s; INIT(s);
    if (sec == NULL) return 0;  /* documented: secret must be non-NULL */
    XXH3_64bits_reset_withSecret(&s, sec, 136);
    XXH3_64bits_update(&s, p, 1100);
    PINS(s, 1100, sec);
    return XXH3_64bits_digest(&s);
}
#endif
