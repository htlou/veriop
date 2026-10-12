/* minimal libc stub for cross-target IR generation (-nostdlibinc); declarations only */
#ifndef STUB_STDLIB_H
#define STUB_STDLIB_H
#include <stddef.h>
void* malloc(size_t); void free(void*); void* calloc(size_t, size_t); void* realloc(void*, size_t);
void abort(void); int posix_memalign(void**, size_t, size_t);
#ifdef _MSC_VER   /* MSVC CRT intrinsics declared by <stdlib.h>; clang treats them as builtins */
unsigned long _byteswap_ulong(unsigned long); unsigned long long _byteswap_uint64(unsigned long long);
unsigned int _rotl(unsigned int, int); unsigned long long _rotl64(unsigned long long, int);
#endif
#endif
