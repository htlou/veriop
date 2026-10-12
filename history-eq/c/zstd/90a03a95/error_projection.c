#include <stdint.h>

#ifndef CHILD
#error Define CHILD as 0 or 1.
#endif

uint64_t target_internal(int fse_failed, uint64_t header_size,
                         uint64_t generic_error, uint64_t corruption_error) {
  if (!fse_failed) return header_size;
#if CHILD
  return corruption_error;
#else
  return generic_error;
#endif
}

uint64_t target_decode_seq_headers(int fse_failed, uint64_t header_size,
                                   uint64_t generic_error,
                                   uint64_t corruption_error,
                                   uint64_t error_boundary) {
  __builtin_assume(generic_error >= error_boundary);
  __builtin_assume(corruption_error >= error_boundary);
  uint64_t bh_size = target_internal(fse_failed, header_size,
                                     generic_error, corruption_error);
  if (bh_size >= error_boundary) return corruption_error;
  return bh_size;
}
