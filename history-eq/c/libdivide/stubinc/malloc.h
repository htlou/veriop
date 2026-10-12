#ifndef STUB_MALLOC_H
#define STUB_MALLOC_H
#include <stddef.h>
void *malloc(size_t);
void free(void *);
void *_aligned_malloc(size_t, size_t);
void _aligned_free(void *);
#endif
