// b031fb3: unsigned branchfree: generator stores more & SHIFT_MASK, do drops the mask,
// recover re-adds ADD_MARKER. Build with -DLIBDIVIDE_USE_SSE2=1 to also emit the vector entry points.
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <immintrin.h>
#undef __x86_64__   /* modeling assumption: disable divl/divq inline asm in the generators (both sides) */
#include "libdivide.h"
#define T __attribute__((flatten))
// raw (internal contract of the struct changed): symbolic magic/more
T uint32_t target_u32_bf_do_raw(uint32_t n, uint32_t m, uint8_t more) { struct libdivide_u32_branchfree_t d = {m, more}; return libdivide_u32_branchfree_do(n, &d); }
T uint64_t target_u64_bf_do_raw(uint64_t n, uint64_t m, uint8_t more) { struct libdivide_u64_branchfree_t d = {m, more}; return libdivide_u64_branchfree_do(n, &d); }
T uint32_t target_u32_bf_recover_raw(uint32_t m, uint8_t more) { struct libdivide_u32_branchfree_t d = {m, more}; return libdivide_u32_branchfree_recover(&d); }
T uint64_t target_u64_bf_recover_raw(uint64_t m, uint8_t more) { struct libdivide_u64_branchfree_t d = {m, more}; return libdivide_u64_branchfree_recover(&d); }
// api: branchfree divider for d >= 2 (d == 1 unsupported by the branchfree algorithm)
T uint32_t target_u32_bf_api(uint32_t n, uint32_t d) { if (d < 2) return 0; struct libdivide_u32_branchfree_t x = libdivide_u32_branchfree_gen(d); return libdivide_u32_branchfree_do(n, &x); }
T uint64_t target_u64_bf_api(uint64_t n, uint64_t d) { if (d < 2) return 0; struct libdivide_u64_branchfree_t x = libdivide_u64_branchfree_gen(d); return libdivide_u64_branchfree_do(n, &x); }
T uint32_t target_u32_bf_recover_api(uint32_t d) { if (d < 2) return 0; struct libdivide_u32_branchfree_t x = libdivide_u32_branchfree_gen(d); return libdivide_u32_branchfree_recover(&x); }
T uint64_t target_u64_bf_recover_api(uint64_t d) { if (d < 2) return 0; struct libdivide_u64_branchfree_t x = libdivide_u64_branchfree_gen(d); return libdivide_u64_branchfree_recover(&x); }
T uint8_t target_u32_bf_gen_more(uint32_t d) { if (d < 2) return 0; return libdivide_u32_branchfree_gen(d).more; }
#if LIBDIVIDE_USE_SSE2
T __m128i target_u32_bf_vec_api(__m128i n, uint32_t d) { if (d < 2) return n; struct libdivide_u32_branchfree_t x = libdivide_u32_branchfree_gen(d); return libdivide_u32_branchfree_do_vector(n, &x); }
T __m128i target_u64_bf_vec_api(__m128i n, uint64_t d) { if (d < 2) return n; struct libdivide_u64_branchfree_t x = libdivide_u64_branchfree_gen(d); return libdivide_u64_branchfree_do_vector(n, &x); }
#endif
