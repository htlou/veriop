#include <stdint.h>
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"

uint64_t target_midrange_64_len80(const uint8_t *input, uint64_t seed) {
    return XXH3_len_17to128_64b(input, 80, XXH3_kSecret, sizeof(XXH3_kSecret), seed);
}

uint64_t target_midrange_64_len17(const uint8_t *input, uint64_t seed) {
    return XXH3_len_17to128_64b(input, 17, XXH3_kSecret, sizeof(XXH3_kSecret), seed);
}

uint64_t target_midrange_64_len33(const uint8_t *input, uint64_t seed) {
    return XXH3_len_17to128_64b(input, 33, XXH3_kSecret, sizeof(XXH3_kSecret), seed);
}

uint64_t target_midrange_64_len128(const uint8_t *input, uint64_t seed) {
    return XXH3_len_17to128_64b(input, 128, XXH3_kSecret, sizeof(XXH3_kSecret), seed);
}

void target_midrange_128_len100(uint64_t *out, const uint8_t *input, uint64_t seed) {
    XXH128_hash_t h = XXH3_len_17to128_128b(input, 100, XXH3_kSecret,
                                               sizeof(XXH3_kSecret), seed);
    out[0] = h.low64;
    out[1] = h.high64;
}
