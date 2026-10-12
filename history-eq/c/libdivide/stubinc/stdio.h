/* minimal stub (used only for non-host targets: i386 / windows-msvc / aarch64 without sysroot) */
#ifndef STUB_STDIO_H
#define STUB_STDIO_H
#include <stddef.h>
typedef struct _STUB_FILE FILE;
extern FILE *stderr;
int fprintf(FILE *, const char *, ...);
int printf(const char *, ...);
#endif
