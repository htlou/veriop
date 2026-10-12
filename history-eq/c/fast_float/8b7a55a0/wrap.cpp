#include "fast_float/fast_float.h"

extern "C" bool target_rounds_to_nearest() {
  return fast_float::detail::rounds_to_nearest();
}
