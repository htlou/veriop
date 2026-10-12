#include "xxh_harness.h"
#define XXH_INLINE_ALL
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
/* raw: XXH3_accumulate with symbolic nbStripes n <= 4 (loop; checked with --unroll). See wrap_raw.c. */
#ifdef XXH3_ACCUMULATE_TEMPLATE
#  define ACCN(acc,in,sec,n) XXH3_accumulate(acc,in,sec,n)
#else
#  define ACCN(acc,in,sec,n) XXH3_accumulate(acc,in,sec,n,XXH3_accumulate_512)
#endif
void target_acc_nsym(uint64_t* out, U8ARGS(a), const uint8_t* in, const uint8_t* sec, size_t n) {
  _Alignas(64) uint64_t acc[8]; U8FILL(acc,0,a);
  if (n > 4) n = 4;
  ACCN(acc, in, sec, n); memcpy(out, acc, 64); }
