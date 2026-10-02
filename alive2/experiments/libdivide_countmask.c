#include "libdivide.h"

uint32_t target_u32(uint32_t n, uint32_t magic, uint8_t more) {
    if (!magic) return n >> more;
    uint32_t q = libdivide_mullhi_u32(n, magic);
    uint32_t flag = (more >> 6) & 1;
    q += ((n - q) >> 1) & (0U - flag);
    return q >> (more & ~(flag * 0xe0U));
}

uint64_t target_u64(uint64_t n, uint64_t magic, uint8_t more) {
    if (!magic) return n >> more;
    uint64_t q = libdivide_mullhi_u64(n, magic);
    uint64_t flag = (more >> 6) & 1;
    q += ((n - q) >> 1) & (0ULL - flag);
    return q >> (more & ~(flag * 0xc0U));
}
