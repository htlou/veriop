#include "x.h"
#include <stdint.h>
#ifdef NEW
uint64_t target_f(uint64_t x){ x*=3; return x+1; }
#else
uint64_t target_f(uint64_t x){ x*=3; __asm__ __volatile__("" : "+r"(x)); return x+1; }
#endif
uint64_t target_g(uint64_t x){ x*=3; __asm__ __volatile__("" : "+r"(x)); return x+1; }
