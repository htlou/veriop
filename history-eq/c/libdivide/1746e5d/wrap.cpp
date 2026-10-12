// 1746e5d: new NEON vector entry points (new API, no pre-commit counterpart).
// Cross-API harness: NEW libdivide_*_do_vec128(NEON) vs OLD scalar API applied lane by lane.
// Build: --target=aarch64-linux-gnu -DLIBDIVIDE_NEON, compiled as C++ (libdivide NEON code uses static_cast)
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <arm_neon.h>
#include "side.h"
#include "libdivide.h"
using namespace libdivide;
#define T extern "C" __attribute__((flatten))
#if defined(LIBDIVIDE_SIDE_OLD)
#define LANES(ty, V, sty, lo, kind) \
T V target_##ty##kind##_lanewise(V n, sty dv) { if (dv == 0 || dv == lo) return n; \
  struct libdivide_##ty##kind##_t d = libdivide_##ty##kind##_gen(dv); sty a[sizeof(V)/sizeof(sty)]; memcpy(a, &n, sizeof(V)); \
  for (unsigned i = 0; i < sizeof(V)/sizeof(sty); i++) a[i] = libdivide_##ty##kind##_do(a[i], &d); V r; memcpy(&r, a, sizeof(V)); return r; }
#else
#define LANES(ty, V, sty, lo, kind) \
T V target_##ty##kind##_lanewise(V n, sty dv) { if (dv == 0 || dv == lo) return n; \
  struct libdivide_##ty##kind##_t d = libdivide_##ty##kind##_gen(dv); return libdivide_##ty##kind##_do_vec128(n, &d); }
#endif
LANES(u32, uint32x4_t, uint32_t, 0, ) LANES(s32, int32x4_t, int32_t, 0, ) LANES(u64, uint64x2_t, uint64_t, 0, ) LANES(s64, int64x2_t, int64_t, 0, )
LANES(u32, uint32x4_t, uint32_t, 1, _branchfree) LANES(s32, int32x4_t, int32_t, 0, _branchfree) LANES(u64, uint64x2_t, uint64_t, 1, _branchfree) LANES(s64, int64x2_t, int64_t, 0, _branchfree)
