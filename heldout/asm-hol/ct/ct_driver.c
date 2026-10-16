// Constant-time trace driver: calls bignum_normalize(k, z) once on a fixed
// buffer address with input pattern selected by argv[2]; run under
// valgrind --tool=lackey --trace-mem=yes and compare the instruction/data
// address traces between patterns (values are not traced, only addresses).
#include <stdint.h>
#include <stdlib.h>
#include <string.h>
extern uint64_t bignum_normalize(uint64_t k, uint64_t *z);
static uint64_t buf[64];
int main(int argc, char **argv) {
  uint64_t k = (uint64_t) atoi(argv[1]); int pat = atoi(argv[2]);
  for (uint64_t i = 0; i < k; i++) {
    switch (pat) {
      case 0: buf[i] = 0; break;                                   // zero input
      case 1: buf[i] = ~0ULL; break;                               // already normalized
      case 2: buf[i] = (i == 0) ? 1 : 0; break;                    // maximal shift
      case 3: buf[i] = (i < k / 2) ? 0x0123456789abcdefULL * (i + 1) : 0; break; // half
      case 4: buf[i] = (i + 1 == k) ? 0x10 : 0x5555aaaa5555aaaaULL; break;      // bit shift only
      default: buf[i] = (i * 0x9e3779b97f4a7c15ULL) >> (i % 64); break;
    }
  }
  volatile uint64_t r = bignum_normalize(k, buf);
  (void) r;
  return 0;
}
