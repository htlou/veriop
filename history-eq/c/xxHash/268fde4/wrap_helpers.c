#include <stdint.h>
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"

/* Retain both changed helper bodies even when the child asks Clang to inline them. */
__attribute__((used)) static XXH64_hash_t (*keep64)(const void *, size_t, XXH64_hash_t,
                                                    const xxh_u8 *, size_t) =
    XXH3_hashLong_64b_withSecret;
__attribute__((used)) static XXH128_hash_t (*keep128)(const void *, size_t, XXH64_hash_t,
                                                      const void *, size_t) =
    XXH3_hashLong_128b_withSecret;
