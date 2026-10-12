// c2d2be3: generator outputs (magic, more) directly.
#include <stdint.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#undef __x86_64__   /* modeling assumption: select portable (non-divq) path on both sides */
#include "libdivide.h"
uint64_t target_u64_gen_magic(uint64_t d) { if (d == 0) return 0; return libdivide_u64_gen(d).magic; }
uint8_t target_u64_gen_more(uint64_t d) { if (d == 0) return 0; return libdivide_u64_gen(d).more; }
int64_t target_s64_gen_magic(int64_t d) { if (d == 0) return 0; return libdivide_s64_gen(d).magic; }
uint8_t target_s64_gen_more(int64_t d) { if (d == 0) return 0; return libdivide_s64_gen(d).more; }
