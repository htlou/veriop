#include <stdint.h>
#include <arm_neon.h>
#define fastfloat_really_inline inline
#define FASTFLOAT_SIMD_DISABLE_WARNINGS
#define FASTFLOAT_SIMD_RESTORE_WARNINGS
namespace fast_float {


fastfloat_really_inline
uint64_t simd_read8_to_u64(const uint16x8_t data) {
FASTFLOAT_SIMD_DISABLE_WARNINGS
  uint8x8_t utf8_packed = vmovn_u16(data);
  vget_lane_u64(vreinterpret_u64_u8(utf8_packed), 0);
FASTFLOAT_SIMD_RESTORE_WARNINGS
}

fastfloat_really_inline
uint64_t simd_read8_to_u64(const char16_t* chars) {
FASTFLOAT_SIMD_DISABLE_WARNINGS
  return simd_read8_to_u64(vld1q_u16(reinterpret_cast<const uint16_t*>(values)));
FASTFLOAT_SIMD_RESTORE_WARNINGS
}


}
