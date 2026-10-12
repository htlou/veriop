/* minimal shim so clang's intrin.h can be included for *-windows-msvc targets (xxHash study) */
#ifndef SHIM_SETJMP_H
#define SHIM_SETJMP_H
typedef int jmp_buf[64];
int setjmp(jmp_buf);
#endif
