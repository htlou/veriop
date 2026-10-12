#ifndef STUB_SETJMP_H
#define STUB_SETJMP_H
typedef int jmp_buf[64]; int setjmp(jmp_buf); void longjmp(jmp_buf, int);
#endif
