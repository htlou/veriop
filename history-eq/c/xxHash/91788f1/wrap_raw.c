#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* raw: the stripe loop XXH3_accumulate over n stripes.
   old: XXH3_accumulate(acc,in,sec,n,f_acc512) (generic loop, f_acc512 = XXH3_accumulate_512 of the selected arch)
   new: XXH3_accumulate == XXH3_accumulate_<arch>(acc,in,sec,n) (per-arch template).
   Only the call spelling differs (#if on the new XXH3_ACCUMULATE_TEMPLATE macro); acc passed by value,
   input/secret read-only pointers. */
#ifdef XXH3_ACCUMULATE_TEMPLATE
#  define ACCN(acc,in,sec,n) XXH3_accumulate(acc,in,sec,n)
#else
#  define ACCN(acc,in,sec,n) XXH3_accumulate(acc,in,sec,n,XXH3_accumulate_512)
#endif
#define T(N) void target_acc_n##N(uint64_t* out, U8ARGS(a), const uint8_t* in, const uint8_t* sec) { \
  _Alignas(64) uint64_t acc[8]; U8FILL(acc,0,a); ACCN(acc, in, sec, N); memcpy(out, acc, 64); }
T(1)
T(2)
T(4)
