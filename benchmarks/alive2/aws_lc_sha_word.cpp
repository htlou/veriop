#include "crypto/internal.h"
#include <stdint.h>

extern "C" uint32_t aws_sha_word_bytes(uint8_t a, uint8_t b, uint8_t c, uint8_t d) {
  return (uint32_t(a) << 24) | (uint32_t(b) << 16) |
         (uint32_t(c) << 8) | uint32_t(d);
}

extern "C" uint32_t aws_sha_word_load(uint8_t a, uint8_t b, uint8_t c, uint8_t d) {
  const uint8_t in[4] = {a, b, c, d};
  return CRYPTO_load_u32_be(in);
}
