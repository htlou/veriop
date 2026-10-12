#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* XXH32_finalize (rerolled loop vs switch) is reached by every XXH32 call; it processes len&15 tail bytes.
   One-shot at fixed lengths 0..31 (tails 0..15, with and without a full stripe) + streaming digest (aligned
   finalize path) at lengths 0..15. Inputs are noundef scalar args copied into a local buffer. */
#define BUF unsigned char buf[64]; U8FILL(buf,0,a);
#define T(n) uint32_t target_xxh32_len##n(U8ARGS(a), uint32_t seed) { BUF return XXH32(buf, n, seed); }
#define S(n) uint32_t target_xxh32_stream_len##n(U8ARGS(a), uint32_t seed) { BUF XXH32_state_t st; XXH32_reset(&st, seed); XXH32_update(&st, buf, n); return XXH32_digest(&st); }
T(0) T(1) T(2) T(3) T(4) T(5) T(6) T(7) T(8) T(9) T(10) T(11) T(12) T(13) T(14) T(15)
T(16) T(17) T(18) T(19) T(20) T(21) T(22) T(23) T(24) T(25) T(26) T(27) T(28) T(29) T(30) T(31)
S(0) S(1) S(3) S(4) S(5) S(7) S(8) S(11) S(12) S(15)
