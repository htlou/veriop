#include <stddef.h>
#include <stdint.h>
#include <string.h>
typedef unsigned char BYTE;
typedef uint32_t U32;
#define FSE_MAX_SYMBOL_VALUE 255
#define FSE_FUNCTION_TYPE BYTE
#define FSE_FUNCTION_EXTENSION
#define FSE_CAT(X,Y) X##Y
#define FSE_FUNCTION_NAME(X,Y) FSE_CAT(X,Y)
#define ERROR(X) ((size_t)-1)
static U32 MEM_read32(const void* p) { U32 v; memcpy(&v, p, 4); return v; }
size_t FSE_count_generic(unsigned* count, unsigned* maxSymbolValuePtr, const FSE_FUNCTION_TYPE* source, size_t sourceSize, unsigned safe)
{
    const FSE_FUNCTION_TYPE* ip = source;
    const FSE_FUNCTION_TYPE* const iend = ip+sourceSize;
    unsigned maxSymbolValue = *maxSymbolValuePtr;
    unsigned max=0;
    int s;

    U32 Counting1[FSE_MAX_SYMBOL_VALUE+1] = { 0 };
    U32 Counting2[FSE_MAX_SYMBOL_VALUE+1] = { 0 };
    U32 Counting3[FSE_MAX_SYMBOL_VALUE+1] = { 0 };
    U32 Counting4[FSE_MAX_SYMBOL_VALUE+1] = { 0 };

    /* safety checks */
    if (!sourceSize)
    {
        memset(count, 0, (maxSymbolValue + 1) * sizeof(FSE_FUNCTION_TYPE));
        *maxSymbolValuePtr = 0;
        return 0;
    }
    if (maxSymbolValue > FSE_MAX_SYMBOL_VALUE) return ERROR(GENERIC);   /* maxSymbolValue too large : unsupported */
    if (!maxSymbolValue) maxSymbolValue = FSE_MAX_SYMBOL_VALUE;            /* 0 == default */

    if ((safe) || (sizeof(FSE_FUNCTION_TYPE)>1))
    {
        /* check input values, to avoid count table overflow */
        while (ip < iend-3)
        {
            if (*ip>maxSymbolValue) return ERROR(GENERIC); Counting1[*ip++]++;
            if (*ip>maxSymbolValue) return ERROR(GENERIC); Counting2[*ip++]++;
            if (*ip>maxSymbolValue) return ERROR(GENERIC); Counting3[*ip++]++;
            if (*ip>maxSymbolValue) return ERROR(GENERIC); Counting4[*ip++]++;
        }
    }
    else
    {
        U32 cached = MEM_read32(ip); ip += 4;
        while (ip < iend-15)
        {
            U32 c = cached; cached = MEM_read32(ip); ip += 4;
            Counting1[(BYTE) c     ]++;
            Counting2[(BYTE)(c>>8) ]++;
            Counting3[(BYTE)(c>>16)]++;
            Counting4[       c>>24 ]++;
            c = cached; cached = MEM_read32(ip); ip += 4;
            Counting1[(BYTE) c     ]++;
            Counting2[(BYTE)(c>>8) ]++;
            Counting3[(BYTE)(c>>16)]++;
            Counting4[       c>>24 ]++;
            c = cached; cached = MEM_read32(ip); ip += 4;
            Counting1[(BYTE) c     ]++;
            Counting2[(BYTE)(c>>8) ]++;
            Counting3[(BYTE)(c>>16)]++;
            Counting4[       c>>24 ]++;
            c = cached; cached = MEM_read32(ip); ip += 4;
            Counting1[(BYTE) c     ]++;
            Counting2[(BYTE)(c>>8) ]++;
            Counting3[(BYTE)(c>>16)]++;
            Counting4[       c>>24 ]++;
        }
        ip-=4;
    }

    /* finish last symbols */
    while (ip<iend) { if ((safe) && (*ip>maxSymbolValue)) return ERROR(GENERIC); Counting1[*ip++]++; }

    for (s=0; s<=(int)maxSymbolValue; s++)
    {
        count[s] = Counting1[s] + Counting2[s] + Counting3[s] + Counting4[s];
        if (count[s] > max) max = count[s];
    }

    while (!count[maxSymbolValue]) maxSymbolValue--;
    *maxSymbolValuePtr = maxSymbolValue;
    return (size_t)max;
}

/* hidden fast variant (unsafe) */
size_t FSE_FUNCTION_NAME(FSE_countFast, FSE_FUNCTION_EXTENSION)
(unsigned* count, unsigned* maxSymbolValuePtr, const FSE_FUNCTION_TYPE* source, size_t sourceSize)
{
    return FSE_count_generic(count, maxSymbolValuePtr, source, sourceSize, 0);
}

size_t FSE_FUNCTION_NAME(FSE_count, FSE_FUNCTION_EXTENSION)
(unsigned* count, unsigned* maxSymbolValuePtr, const FSE_FUNCTION_TYPE* source, size_t sourceSize)
{
    if ((sizeof(FSE_FUNCTION_TYPE)==1) && (*maxSymbolValuePtr >= 255))
    {
        *maxSymbolValuePtr = 255;
        return FSE_count_generic(count, maxSymbolValuePtr, source, sourceSize, 0);
    }
    return FSE_count_generic(count, maxSymbolValuePtr, source, sourceSize, 1);
}



/* count[] has the documented 256 unsigned cells. The single-byte source
 * provides a valid pointer even though its declared length is zero. */
uint64_t target_zero_count(void) {
    unsigned count[256] = {0};
    unsigned maxSymbolValue = 255;
    const BYTE source[1] = {0};
    count[64] = 0xA5A5A5A5U;
    size_t result = FSE_count(count, &maxSymbolValue, source, 0);
    return ((uint64_t)(uint32_t)result << 48) |
           ((uint64_t)maxSymbolValue << 32) | count[64];
}
