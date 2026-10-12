#include <stdint.h>
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#define XXH_NO_INLINE_HINTS 1
#define XXH_VECTOR 0
#include "xxhash.h"

uint64_t target_64sec192_len256(const uint8_t *input, const uint8_t *secret)
{
    return XXH3_64bits_withSecret(input, 256, secret, 192);
}
