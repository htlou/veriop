#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"

uint64_t target_acc64(const uint8_t *input) {
    XXH_ALIGN(64) uint64_t acc[8] = {0};
    XXH3_accumulate(acc, input, kSecret, 1, XXH3_acc_64bits);
    return acc[0] ^ acc[1] ^ acc[2] ^ acc[3];
}

uint64_t target_acc128(const uint8_t *input) {
    XXH_ALIGN(64) uint64_t acc[8] = {0};
    XXH3_accumulate(acc, input, kSecret, 1, XXH3_acc_128bits);
    return acc[0] ^ acc[1] ^ acc[2] ^ acc[3];
}

uint64_t target_api64(const uint8_t *input) {
    return XXH3_64bits(input, 256);
}

uint64_t target_api128(const uint8_t *input) {
    XXH128_hash_t h = XXH3_128bits(input, 256);
    return h.low64 ^ h.high64;
}

uint64_t target_long64_internal(const uint8_t *input) {
    return XXH3_hashLong_64b_internal(input, 256, kSecret, sizeof(kSecret));
}

uint64_t target_long128_internal(const uint8_t *input) {
    XXH128_hash_t h = XXH3_hashLong_128b_internal(input, 256, kSecret, sizeof(kSecret));
    return h.low64 ^ h.high64;
}
