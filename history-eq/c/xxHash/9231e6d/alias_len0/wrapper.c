#include <stdlib.h>
#include <string.h>
#include <stddef.h>
#include "mode.h"
#include "xxhash.h"

#ifndef LEN
#define LEN 16
#endif

unsigned target_xxh32(const void *input, unsigned seed) {
    return XXH32(input, LEN, seed);
}

unsigned long long target_xxh64(const void *input, unsigned long long seed) {
    return XXH64(input, LEN, seed);
}
