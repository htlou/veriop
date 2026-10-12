#include <altivec.h>
typedef __vector unsigned int xxh_u32x4;
typedef __vector unsigned long long xxh_u64x2;
static inline xxh_u64x2 XXH_vec_mule(xxh_u32x4 a, xxh_u32x4 b)
{
    xxh_u64x2 result;
    __asm__("vmuleuw %0, %1, %2" : "=v" (result) : "v" (a), "v" (b));
    return result;
}
xxh_u64x2 target(xxh_u32x4 a, xxh_u32x4 b) { return XXH_vec_mule(a,b); }
