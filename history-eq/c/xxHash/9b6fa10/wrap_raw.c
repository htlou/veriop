#include <stdlib.h>
#include <string.h>
#include <stddef.h>
#include <assert.h>
#define XXH_VECTOR 0   /* scalar path (the changed code), identical on both sides */
#include "xxh3.h"
void target_acc512_64(unsigned long long* XXH_RESTRICT acc, const void* XXH_RESTRICT in, const void* XXH_RESTRICT sec)
{ XXH3_accumulate_512(acc, in, sec, XXH3_acc_64bits); }
void target_acc512_128(unsigned long long* XXH_RESTRICT acc, const void* XXH_RESTRICT in, const void* XXH_RESTRICT sec)
{ XXH3_accumulate_512(acc, in, sec, XXH3_acc_128bits); }
