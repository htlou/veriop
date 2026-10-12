#include <stdint.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
typedef unsigned char BYTE;
typedef struct { size_t litLength, offset, matchLength; } seq_t;
#define dstSize_tooSmall 1
#define corruption_detected 2
#define ERROR(x) ((size_t)-(x))
static void   ZSTD_copy4(void* dst, const void* src) { memcpy(dst, src, 4); }
static void   ZSTD_copy8(void* dst, const void* src) { memcpy(dst, src, 8); }
#define COPY8(d,s) { ZSTD_copy8(d,s); d+=8; s+=8; }
static void ZSTD_wildcopy(void* dst, const void* src, size_t length)
{
    const BYTE* ip = (const BYTE*)src;
    BYTE* op = (BYTE*)dst;
    BYTE* const oend = op + length;
    do COPY8(op, ip) while (op < oend);
}
static size_t ZSTD_execSequence(BYTE* op,
                                seq_t sequence,
                                const BYTE** litPtr, const BYTE* const litLimit,
                                BYTE* const base, BYTE* const oend)
{
    static const int dec32table[] = {0, 1, 2, 1, 4, 4, 4, 4};   /* added */
    static const int dec64table[] = {8, 8, 8, 7, 8, 9,10,11};   /* substracted */
    const BYTE* const ostart = op;
    const size_t litLength = sequence.litLength;   /* for some reason, doing the same with matchLength decreases speed ... */
    BYTE* const oMatchEnd = op + litLength + sequence.matchLength;   /* risk : address space overflow (32-bits) */
    const BYTE* const litEnd = *litPtr + litLength;

    /* check */
    if (oMatchEnd > oend) return ERROR(dstSize_tooSmall);   /* overwrite beyond dst buffer */
    if (litEnd > litLimit) return ERROR(corruption_detected);

    /* copy Literals */
    if (op+litLength > oend-8)   /* ZSTD_wildcopy() risks overwrite */
        memmove(op, *litPtr, litLength);
    else
        ZSTD_wildcopy(op, *litPtr, litLength);
    op += litLength;
    *litPtr = litEnd;   /* update for next sequence */

    /* check : last match must be at a minimum distance of 8 from end of dst buffer */
    if (oend-op < 8) return ERROR(dstSize_tooSmall);

    /* copy Match */
    {
        const BYTE* match = op - sequence.offset;

        /* check */
        if (match < base) return ERROR(corruption_detected);
        if (match > op) return ERROR(corruption_detected);   /* address space overflow test */

        /* close range match, overlap */
        if (sequence.offset < 8)
        {
            const int dec64 = dec64table[sequence.offset];
            op[0] = match[0];
            op[1] = match[1];
            op[2] = match[2];
            op[3] = match[3];
            match += dec32table[sequence.offset];
            ZSTD_copy4(op+4, match);
            match -= dec64;
        } else { ZSTD_copy8(op, match); }
        op += 8; match += 8;

        if (oMatchEnd > oend-12)
        {
            if (op < oend-8)
            {
                ZSTD_wildcopy(op, match, (oend-8) - op);
                match += (oend-8) - op;
                op = oend-8;
            }
            while (op < oMatchEnd) *op++ = *match++;
        }
        else
        {
            ZSTD_wildcopy(op, match, sequence.matchLength-8);   /* works even if matchLength < 8 */
        }
    }

    return oMatchEnd - ostart;
}

int main(void) {
 BYTE arena[40];
 for (size_t i=0;i<40;i++) arena[i]=(BYTE)(i+1);
 BYTE *op=arena+8;
 const BYTE *lit=arena+40;
 seq_t s={0,8,8};
 size_t n=ZSTD_execSequence(op,s,&lit,arena+40,arena,arena+24);
 printf("n=%zu first=%u last=%u\n",n,op[0],op[7]);
 return 0;
}
