#include <stdint.h>
uint64_t target_f(uint64_t x){ x*=3; __asm__ __volatile__("" : "+r"(x)); return x+1; }
