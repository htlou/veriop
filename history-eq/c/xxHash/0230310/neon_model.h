/* NEON widening-multiply model (identical on old/new sides; modeling assumption).
   Alive2 does not interpret llvm.aarch64.neon.umull / llvm.arm.neon.vmullu (it treats them as unknown
   calls and then cannot conclude). We replace the widening-multiply intrinsics with their architectural
   semantics (ARM ARM: UMULL/UMLAL = zero-extend both 32-bit lanes, 64-bit multiply, [accumulate]),
   expressed as generic vector IR. All other NEON intrinsics used by xxHash (vld1q, veorq, vaddq, vextq,
   vuzpq, vzipq, vget_low/high, vreinterpret, vshrn, vmovn, vdupq...) already lower to generic IR. */
#if defined(__ARM_NEON) || defined(__ARM_NEON__) || defined(__aarch64__)
#include <arm_neon.h>
#define XXHM_ZX(v) __builtin_convertvector((v), uint64x2_t)
#undef vmull_u32
#undef vmlal_u32
#undef vmull_high_u32
#undef vmlal_high_u32
#define vmull_u32(a,b) (XXHM_ZX(a) * XXHM_ZX(b))
#define vmlal_u32(acc,a,b) ((acc) + XXHM_ZX(a) * XXHM_ZX(b))
#define vmull_high_u32(a,b) (XXHM_ZX(vget_high_u32(a)) * XXHM_ZX(vget_high_u32(b)))
#define vmlal_high_u32(acc,a,b) ((acc) + XXHM_ZX(vget_high_u32(a)) * XXHM_ZX(vget_high_u32(b)))
#endif
