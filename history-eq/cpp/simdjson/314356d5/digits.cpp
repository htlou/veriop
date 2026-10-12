using uint64_t = unsigned long long;
static_assert(sizeof(uint64_t) == 8, "requires 64-bit unsigned long long");
#define memcpy __builtin_memcpy

extern "C" bool old_eight_digits(uint64_t word) {
  char chars[8];
  memcpy(chars, &word, 8);
  return (chars[0] >= '0' && chars[0] <= '9') &&
         (chars[1] >= '0' && chars[1] <= '9') &&
         (chars[2] >= '0' && chars[2] <= '9') &&
         (chars[3] >= '0' && chars[3] <= '9') &&
         (chars[4] >= '0' && chars[4] <= '9') &&
         (chars[5] >= '0' && chars[5] <= '9') &&
         (chars[6] >= '0' && chars[6] <= '9') &&
         (chars[7] >= '0' && chars[7] <= '9');
}

// Exact new historical helper body, except for the function's exported name.
extern "C" bool new_eight_digits(const char *chars) {
  uint64_t val;
  memcpy(&val, chars, 8);
  return (((val & 0xF0F0F0F0F0F0F0F0) |
           (((val + 0x0606060606060606) & 0xF0F0F0F0F0F0F0F0) >> 4)) ==
          0x3333333333333333);
}

extern "C" bool new_eight_digits_word(uint64_t word) {
  return new_eight_digits(reinterpret_cast<const char *>(&word));
}
