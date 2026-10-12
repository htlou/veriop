#include <stddef.h>
#define XXH_STATIC_LINKING_ONLY
#include "xxhash.h"
size_t target_stripes_offset(void) { return offsetof(XXH3_state_t, nbStripesPerBlock); }
size_t target_total_offset(void) { return offsetof(XXH3_state_t, totalLen); }
size_t target_state_size(void) { return sizeof(XXH3_state_t); }
