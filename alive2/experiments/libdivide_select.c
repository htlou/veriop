#include "libdivide.h"

uint32_t target_u32(uint32_t n, uint32_t magic, uint8_t more) {
    if (!magic) return n >> more;
    uint32_t q = libdivide_mullhi_u32(n, magic);
    q += (more & LIBDIVIDE_ADD_MARKER) ? (n - q) >> 1 : 0;
    return q >> ((more & LIBDIVIDE_ADD_MARKER) ? more & LIBDIVIDE_32_SHIFT_MASK : more);
}

uint64_t target_u64(uint64_t n, uint64_t magic, uint8_t more) {
    if (!magic) return n >> more;
    uint64_t q = libdivide_mullhi_u64(n, magic);
    q += (more & LIBDIVIDE_ADD_MARKER) ? (n - q) >> 1 : 0;
    return q >> ((more & LIBDIVIDE_ADD_MARKER) ? more & LIBDIVIDE_64_SHIFT_MASK : more);
}
