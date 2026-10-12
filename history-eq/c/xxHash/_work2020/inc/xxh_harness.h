/* Shared harness helpers for xxHash-2020on checks (included by wrappers, identical on both sides).
   Inputs are passed as noundef scalar arguments and copied into fresh local buffers, so that
   (a) no poison/uninitialized bytes reach the hash code (C callers cannot pass poison), and
   (b) buffers never alias each other (the library requires XXH_RESTRICT non-aliasing). */
#ifndef XXH_HARNESS_H
#define XXH_HARNESS_H
#include <stdint.h>
#include <stddef.h>
#include <string.h>
#define U8ARGS(p)  uint64_t p##0, uint64_t p##1, uint64_t p##2, uint64_t p##3, uint64_t p##4, uint64_t p##5, uint64_t p##6, uint64_t p##7
#define U8FILL(buf, off, p) do { uint64_t t_[8] = {p##0,p##1,p##2,p##3,p##4,p##5,p##6,p##7}; memcpy((unsigned char*)(buf)+(off), t_, 64); } while (0)
#endif
