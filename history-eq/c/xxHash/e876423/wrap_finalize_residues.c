#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"

#define CHECK_TAIL(N) \
    xxh_u64 target_unaligned_##N(xxh_u64 hash, const xxh_u8 *ptr) { \
        return XXH64_finalize(hash, ptr, N, XXH_unaligned); \
    } \
    xxh_u64 target_aligned_##N(xxh_u64 hash, const xxh_u8 *ptr) { \
        __builtin_assume(((size_t)ptr & 7) == 0); \
        return XXH64_finalize(hash, ptr, N, XXH_aligned); \
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
CHECK_TAIL(16)
CHECK_TAIL(17)
CHECK_TAIL(18)
CHECK_TAIL(19)
CHECK_TAIL(20)
CHECK_TAIL(21)
CHECK_TAIL(22)
CHECK_TAIL(23)
CHECK_TAIL(24)
CHECK_TAIL(25)
CHECK_TAIL(26)
CHECK_TAIL(27)
CHECK_TAIL(28)
CHECK_TAIL(29)
CHECK_TAIL(30)
CHECK_TAIL(31)
