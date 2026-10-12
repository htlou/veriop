#include <stdint.h>
#define XXH_STATIC_LINKING_ONLY
#define XXH_INLINE_ALL
#include "xxhash.h"
uint64_t target_hash_long(const uint8_t *p, const uint8_t *secret) {
    return XXH3_hashLong_64b_internal(p, 256, secret, 192, XXH3_accumulate_512, XXH3_scrambleAcc);
}
