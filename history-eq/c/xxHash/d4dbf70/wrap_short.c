#include <stddef.h>
#include <stdint.h>

#include "xxh_x86dispatch.c"

uint64_t target_short_hash(const uint8_t *input, size_t len)
{
    __builtin_assume(len <= 240);
    return XXH3_64bits_dispatch(input, len);
}
