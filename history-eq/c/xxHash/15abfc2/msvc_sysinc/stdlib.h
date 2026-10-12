/* MSVC-flavoured stdlib.h shim: cross_sysinc/stdlib.h + the MSVC byteswap library functions (clang treats them as builtins) */
#ifndef SHIM_MSVC_STDLIB_H
#define SHIM_MSVC_STDLIB_H
#include_next <stdlib.h>
unsigned short _byteswap_ushort(unsigned short);
unsigned long _byteswap_ulong(unsigned long);
unsigned long long _byteswap_uint64(unsigned long long);
#endif
