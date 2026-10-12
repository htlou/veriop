/* shim (IR generation only) */
#ifndef SHIM_SETJMP_H
#define SHIM_SETJMP_H
typedef struct { unsigned long long b[32]; } jmp_buf[1];
#endif
