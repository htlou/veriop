#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"

#define CHECK_TAIL(N) \
    xxh_u32 target_tail_##N(const xxh_u8 *p, xxh_u32 h) { \
        return XXH32_finalize(h, p, N, XXH_unaligned); \
    }

#define CHECK_ALIGNED(N) \
    xxh_u32 target_aligned_##N(const xxh_u8 *p, xxh_u32 h) { \
        __builtin_assume(((size_t)p & 3u) == 0); \
        return XXH32_finalize(h, p, N, XXH_aligned); \
    }

CHECK_TAIL(0)
CHECK_TAIL(1)
CHECK_TAIL(2)
CHECK_TAIL(3)
CHECK_TAIL(4)
CHECK_TAIL(5)
CHECK_TAIL(6)
CHECK_TAIL(7)
CHECK_TAIL(8)
CHECK_TAIL(9)
CHECK_TAIL(10)
CHECK_TAIL(11)
CHECK_TAIL(12)
CHECK_TAIL(13)
CHECK_TAIL(14)
CHECK_TAIL(15)

CHECK_ALIGNED(0)
CHECK_ALIGNED(1)
CHECK_ALIGNED(2)
CHECK_ALIGNED(3)
CHECK_ALIGNED(4)
CHECK_ALIGNED(5)
CHECK_ALIGNED(6)
CHECK_ALIGNED(7)
CHECK_ALIGNED(8)
CHECK_ALIGNED(9)
CHECK_ALIGNED(10)
CHECK_ALIGNED(11)
CHECK_ALIGNED(12)
CHECK_ALIGNED(13)
CHECK_ALIGNED(14)
CHECK_ALIGNED(15)
