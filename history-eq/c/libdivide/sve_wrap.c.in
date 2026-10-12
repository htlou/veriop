// SVE entry points (aarch64). Build: --target=aarch64-linux-gnu -march=armv8-a+sve[2] -DLIBDIVIDE_SVE[2]
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include "libdivide.h"
#define T __attribute__((flatten))
#define RAW(ty, V, mty) \
T V target_##ty##_raw(V n, mty m, uint8_t more) { struct libdivide_##ty##_t d = {m, more}; return libdivide_##ty##_do_sve(n, &d); } \
T V target_##ty##_bf_raw(V n, mty m, uint8_t more) { struct libdivide_##ty##_branchfree_t d = {m, more}; return libdivide_##ty##_branchfree_do_sve(n, &d); }
#define API(ty, V, sty, lo) \
T V target_##ty##_api(V n, sty dv) { if (dv == 0) return n; struct libdivide_##ty##_t d = libdivide_##ty##_gen(dv); return libdivide_##ty##_do_sve(n, &d); } \
T V target_##ty##_bf_api(V n, sty dv) { if (dv == 0 || dv == lo) return n; struct libdivide_##ty##_branchfree_t d = libdivide_##ty##_branchfree_gen(dv); return libdivide_##ty##_branchfree_do_sve(n, &d); }
#ifdef WITH_UNSIGNED
RAW(u16, svuint16_t, uint16_t) RAW(u32, svuint32_t, uint32_t) RAW(u64, svuint64_t, uint64_t)
API(u16, svuint16_t, uint16_t, 1) API(u32, svuint32_t, uint32_t, 1) API(u64, svuint64_t, uint64_t, 1)
#endif
RAW(s16, svint16_t, int16_t) RAW(s32, svint32_t, int32_t) RAW(s64, svint64_t, int64_t)
API(s16, svint16_t, int16_t, 0) API(s32, svint32_t, int32_t, 0) API(s64, svint64_t, int64_t, 0)
