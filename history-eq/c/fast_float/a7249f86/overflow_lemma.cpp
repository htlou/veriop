#include <cstdint>
#include <limits>
#include "fast_float/float_common.h"

template <int Base> bool check_overflow(uint64_t lead, uint64_t suffix) {
  const uint64_t ms = fast_float::min_safe_u64(Base);
  if (lead == 0 || lead >= Base || suffix >= ms) return false;
  const unsigned __int128 exact =
      (unsigned __int128)lead * ms + suffix;
#ifdef HISTORICAL_OLD
  return exact > (std::numeric_limits<uint64_t>::max)();
#else
  const uint64_t wrapped = uint64_t(exact);
  const uint64_t dmax = (std::numeric_limits<uint64_t>::max)() / ms;
  return lead > dmax || (lead == dmax && wrapped < dmax * ms);
#endif
}

#define TARGET(Base)                                                            \
  extern "C" bool target_base##Base##_overflow(uint64_t lead, uint64_t suffix) { \
    return check_overflow<Base>(lead, suffix);                                 \
  }

TARGET(2)
TARGET(3)
TARGET(4)
TARGET(5)
TARGET(6)
TARGET(7)
TARGET(8)
TARGET(9)
TARGET(10)
TARGET(11)
TARGET(12)
TARGET(13)
TARGET(14)
TARGET(15)
TARGET(16)
TARGET(17)
TARGET(18)
TARGET(19)
TARGET(20)
TARGET(21)
TARGET(22)
TARGET(23)
TARGET(24)
TARGET(25)
TARGET(26)
TARGET(27)
TARGET(28)
TARGET(29)
TARGET(30)
TARGET(31)
TARGET(32)
TARGET(33)
TARGET(34)
TARGET(35)
TARGET(36)
