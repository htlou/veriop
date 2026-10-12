/* minimal shim for clang's mm_malloc.h on the MSVC triple (IR generation only) */
#ifndef SHIM_MALLOC_H
#define SHIM_MALLOC_H
#include <stddef.h>
void *malloc(size_t); void free(void *);
void *_aligned_malloc(size_t, size_t); void _aligned_free(void *);
#endif
