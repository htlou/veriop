#include <s390intrin.h>
typedef __vector unsigned int U32x4;
typedef __vector unsigned long long U64x2;
static inline U64x2 XXH_vec_mulo(U32x4 a, U32x4 b)
{
    U64x2 result;
    __asm__("vmulouw %0, %1, %2" : "=v" (result) : "v" (a), "v" (b));
    return result;
}
U64x2 target(U32x4 a,U32x4 b) { return XXH_vec_mulo(a,b); }
