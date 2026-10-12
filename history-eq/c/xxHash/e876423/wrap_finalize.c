#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"

xxh_u64 target_unaligned(xxh_u64 hash, const xxh_u8 *ptr, size_t len) {
    return XXH64_finalize(hash, ptr, len, XXH_unaligned);
}

xxh_u64 target_aligned(xxh_u64 hash, const xxh_u8 *ptr, size_t len) {
    __builtin_assume(((size_t)ptr & 7) == 0);
    return XXH64_finalize(hash, ptr, len, XXH_aligned);
}
