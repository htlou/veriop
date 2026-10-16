#include "libdivide.h"

int32_t target_s32(int32_t n, int32_t magic, uint8_t more) {
    return libdivide_s32_do_raw(n, magic, more);
}

int64_t target_s64(int64_t n, int64_t magic, uint8_t more) {
    return libdivide_s64_do_raw(n, magic, more);
}
