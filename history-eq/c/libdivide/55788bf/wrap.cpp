// 55788bf: C++ libdivide::divider default constructor no longer initializes the divider
// (previously divider by 1). Harness: default-constructed divider used for division, and
// default-construct-then-assign (the intended array use case).
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#undef __x86_64__   /* modeling assumption: disable divl/divq inline asm in the generators (both sides) */
#include "libdivide.h"
#define T __attribute__((flatten))
extern "C" {
T uint32_t target_default_then_divide(uint32_t x) { libdivide::divider<uint32_t> d; return d.perform_divide(x); }
T int64_t target_default_then_divide_s64(int64_t x) { libdivide::divider<int64_t> d; return d.perform_divide(x); }
T uint32_t target_default_then_assign(uint32_t x, uint32_t dv) { if (!dv) return 0; libdivide::divider<uint32_t> d; d = libdivide::divider<uint32_t>(dv); return d.perform_divide(x); }
T uint64_t target_array_init(uint64_t x, uint64_t dv) { if (!dv) return 0; libdivide::divider<uint64_t> a[2]; a[1] = libdivide::divider<uint64_t>(dv); return a[1].perform_divide(x); }
}
