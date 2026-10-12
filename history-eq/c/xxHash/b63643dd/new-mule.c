#include <s390intrin.h>
typedef __vector unsigned int U32x4;
typedef __vector unsigned long long U64x2;
#  define XXH_vec_mule vec_mule
U64x2 target(U32x4 a,U32x4 b) { return XXH_vec_mule(a,b); }
