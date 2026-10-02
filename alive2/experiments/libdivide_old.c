#include "libdivide.h"

uint32_t target_u32(uint32_t n, uint32_t magic, uint8_t more) {
    return libdivide_u32_do_raw(n, magic, more);
}

uint64_t target_u64(uint64_t n, uint64_t magic, uint8_t more) {
    return libdivide_u64_do_raw(n, magic, more);
}
