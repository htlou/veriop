#include <stdint.h>

#define XXH_PRIME64_1 0x9E3779B185EBCA87ULL
#define XXH_PRIME64_2 0xC2B2AE3D27D4EB4FULL
#define XXH_rotl64(x, r) (((x) << (r)) | ((x) >> (64 - (r))))
#define XXH_COMPILER_GUARD(var) __asm__("" : "+r" (var))

uint64_t xxh_old_round(uint64_t acc, uint64_t input) {
    acc += input * XXH_PRIME64_2;
    acc = XXH_rotl64(acc, 31);
    acc *= XXH_PRIME64_1;
    return acc;
}

uint64_t xxh_new_round(uint64_t acc, uint64_t input) {
    acc += input * XXH_PRIME64_2;
    acc = XXH_rotl64(acc, 31);
    acc *= XXH_PRIME64_1;
#if defined(__AVX512F__) && !defined(XXH_ENABLE_AUTOVECTORIZE)
    XXH_COMPILER_GUARD(acc);
#endif
    return acc;
}
