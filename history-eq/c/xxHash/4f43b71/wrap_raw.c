/* raw-level harness: the changed internal function XXH3_update(state, input, len, XXH3_accumulate, XXH3_scrambleAcc)
   (body of XXH3_64bits_update) on a SYMBOLIC state pointer (state layout is unchanged
   by this commit). Library invariants of a reset state are encoded as early-return guards:
   bufferedSize <= XXH3_INTERNALBUFFER_SIZE, default-secret geometry (secretLimit=128,
   nbStripesPerBlock=16), nbStripesSoFar < nbStripesPerBlock, input does not overlap the state
   (XXH_RESTRICT contract). Select a target with -DT=<n>. */
#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
#include <stdint.h>
#ifndef T
#define T 0
#endif
#define SEL(n) (T == 0 || T == (n))
static int overlaps(const XXH3_state_t* s, const uint8_t* p, size_t len) {
    uintptr_t a = (uintptr_t)p, b = (uintptr_t)s;
    return !(a + len <= b || b + sizeof(*s) <= a);
}
/* 1: symbolic len, restricted to the small-input path (len fits in the internal buffer): the changed early return */
#if SEL(1)
__attribute__((flatten)) int target_raw_small(XXH3_state_t* s, const uint8_t* p, size_t len) {
    if (s->bufferedSize > XXH3_INTERNALBUFFER_SIZE) return -1;
    if (len > XXH3_INTERNALBUFFER_SIZE - s->bufferedSize) return -1;
    if (overlaps(s, p, len)) return -1;
    return (int)XXH3_update(s, p, len, XXH3_accumulate, XXH3_scrambleAcc);
}
#endif
/* 2: large path, fixed geometry: bufferedSize=100, nbStripesSoFar=14, len=200 -> fills the buffer,
      consumes 4 stripes across a block boundary (scramble), buffers the remaining 44 bytes.
      acc / customSecret / buffer / totalLen / seed stay symbolic. */
#if SEL(2)
__attribute__((flatten)) int target_raw_large(XXH3_state_t* s, const uint8_t* p) {
    if (s->bufferedSize != 100 || s->nbStripesSoFar != 14 || s->nbStripesPerBlock != 16
        || s->secretLimit != 128 || s->extSecret != NULL) return -1;
    if (overlaps(s, p, 200)) return -1;
    return (int)XXH3_update(s, p, 200, XXH3_accumulate, XXH3_scrambleAcc);
}
#endif
