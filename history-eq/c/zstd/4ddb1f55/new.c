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
static size_t FSE_count_simple(unsigned* count, unsigned* maxSymbolValuePtr,
                               const void* src, size_t srcSize)
{
    const BYTE* ip = (const BYTE*)src;
    const BYTE* const end = ip + srcSize;
    unsigned maxSymbolValue = *maxSymbolValuePtr;
    unsigned max=0;
    U32 s;

    memset(count, 0, (maxSymbolValue+1)*sizeof(*count));
    if (srcSize==0) { *maxSymbolValuePtr = 0; return 0; }

    while (ip<end) count[*ip++]++;

    while (!count[maxSymbolValue]) maxSymbolValue--;
    *maxSymbolValuePtr = maxSymbolValue;

    for (s=0; s<=maxSymbolValue; s++) if (count[s] > max) max = count[s];

    return (size_t)max;
}


static size_t FSE_count_parallel(unsigned* count, unsigned* maxSymbolValuePtr,
                                const void* source, size_t sourceSize,
                                unsigned checkMax)
{
    const BYTE* ip = (const BYTE*)source;
    const BYTE* const iend = ip+sourceSize;
    unsigned maxSymbolValue = *maxSymbolValuePtr;
    unsigned max=0;
    U32 s;

    U32 Counting1[256] = { 0 };
    U32 Counting2[256] = { 0 };
    U32 Counting3[256] = { 0 };
    U32 Counting4[256] = { 0 };

    /* safety checks */
    if (!sourceSize) {
        memset(count, 0, maxSymbolValue + 1);
        *maxSymbolValuePtr = 0;
        return 0;
    }
    if (!maxSymbolValue) maxSymbolValue = 255;            /* 0 == default */

    {   /* by stripes of 16 bytes */
        U32 cached = MEM_read32(ip); ip += 4;
        while (ip < iend-15) {
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
    while (ip<iend) Counting1[*ip++]++;

    if (checkMax) {   /* verify stats will fit into destination table */
        for (s=255; s>maxSymbolValue; s--)
        {
            Counting1[s] += Counting2[s] + Counting3[s] + Counting4[s];
            if (Counting1[s]) return ERROR(maxSymbolValue_tooSmall);
    }   }

    for (s=0; s<=maxSymbolValue; s++) {
        count[s] = Counting1[s] + Counting2[s] + Counting3[s] + Counting4[s];
        if (count[s] > max) max = count[s];
    }

    while (!count[maxSymbolValue]) maxSymbolValue--;
    *maxSymbolValuePtr = maxSymbolValue;
    return (size_t)max;
}

/* fast variant (unsafe : won't check if src contains values beyond count[] limit) */
size_t FSE_countFast(unsigned* count, unsigned* maxSymbolValuePtr,
                     const void* source, size_t sourceSize)
{
    if (sourceSize < 1500) return FSE_count_simple(count, maxSymbolValuePtr, source, sourceSize);
    return FSE_count_parallel(count, maxSymbolValuePtr, source, sourceSize, 0);
}

size_t FSE_count(unsigned* count, unsigned* maxSymbolValuePtr,
                 const void* source, size_t sourceSize)
{
    if (*maxSymbolValuePtr <255)
        return FSE_count_parallel(count, maxSymbolValuePtr, source, sourceSize, 1);
    *maxSymbolValuePtr = 255;
    return FSE_countFast(count, maxSymbolValuePtr, source, sourceSize);
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
