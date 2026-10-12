/* minimal freestanding shim for cross-target IR generation (xxHash-2020on) */
#ifndef SHIM_STRING_H
#define SHIM_STRING_H
#include <stddef.h>
void *memcpy(void *, const void *, size_t);
void *memset(void *, int, size_t);
void *memmove(void *, const void *, size_t);
int memcmp(const void *, const void *, size_t);
#endif
