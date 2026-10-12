#include <altivec.h>
typedef __vector unsigned int xxh_u32x4;
typedef __vector unsigned long long xxh_u64x2;
#  define XXH_vec_mulo vec_mulo
xxh_u64x2 target(xxh_u32x4 a, xxh_u32x4 b) { return XXH_vec_mulo(a,b); }
