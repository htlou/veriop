#ifndef STUB_STDLIB_H
#define STUB_STDLIB_H
#include <stddef.h>
void abort(void) __attribute__((noreturn));
void exit(int) __attribute__((noreturn));
#endif
#ifndef STUB_STDLIB_MALLOC
#define STUB_STDLIB_MALLOC
void *malloc(size_t);
void free(void *);
int posix_memalign(void **, size_t, size_t);
#endif
