// Fixed-width aliases keep the historical function bodies intact while
// avoiding a host C++ standard-library dependency in the LLVM 20 toolchain.
namespace std {
using uint32_t = unsigned int;
using uint64_t = unsigned long long;
}
static_assert(sizeof(std::uint32_t) == 4 && sizeof(std::uint64_t) == 8);

struct uint128 { std::uint64_t high, low; };

inline std::uint64_t umul64(std::uint32_t x, std::uint32_t y) noexcept {
  return x * std::uint64_t(y);
}

extern "C" uint128 old_umul128(std::uint64_t x, std::uint64_t y) noexcept {
  const std::uint32_t a = std::uint32_t(x >> 32);
  const std::uint32_t b = std::uint32_t(x);
  const std::uint32_t c = std::uint32_t(y >> 32);
  const std::uint32_t d = std::uint32_t(y);
  const std::uint64_t ac = umul64(a, c);
  const std::uint64_t bc = umul64(b, c);
  const std::uint64_t ad = umul64(a, d);
  const std::uint64_t bd = umul64(b, d);
  const std::uint64_t intermediate =
      (bd >> 32) + std::uint32_t(ad) + std::uint32_t(bc);
  return {ac + (intermediate >> 32) + (ad >> 32) + (bc >> 32),
          (intermediate << 32) + std::uint32_t(bd)};
}

extern "C" uint128 new_umul128(std::uint64_t x, std::uint64_t y) noexcept {
  const __uint128_t p = static_cast<__uint128_t>(x)*y;
  return {std::uint64_t(p>>64), std::uint64_t(p)};
}

extern "C" std::uint64_t old_umul128_upper64(std::uint64_t x, std::uint64_t y) noexcept {
  const std::uint32_t a = std::uint32_t(x >> 32);
  const std::uint32_t b = std::uint32_t(x);
  const std::uint32_t c = std::uint32_t(y >> 32);
  const std::uint32_t d = std::uint32_t(y);
  const std::uint64_t ac = umul64(a, c);
  const std::uint64_t bc = umul64(b, c);
  const std::uint64_t ad = umul64(a, d);
  const std::uint64_t bd = umul64(b, d);
  const std::uint64_t intermediate =
      (bd >> 32) + std::uint32_t(ad) + std::uint32_t(bc);
  return ac + (intermediate >> 32) + (ad >> 32) + (bc >> 32);
}

extern "C" std::uint64_t new_umul128_upper64(std::uint64_t x, std::uint64_t y) noexcept {
  return std::uint64_t((static_cast<__uint128_t>(x)*y)>>64);
}

extern "C" std::uint64_t old_umul128_low(std::uint64_t x, std::uint64_t y) noexcept {
  return old_umul128(x, y).low;
}

extern "C" std::uint64_t new_umul128_low(std::uint64_t x, std::uint64_t y) noexcept {
  return new_umul128(x, y).low;
}
