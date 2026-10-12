#include <assert.h>
typedef unsigned int U32;
#define ZSTD_ROWSIZE 16
static __attribute__((always_inline)) void old_reduceTable (U32* const table, U32 const size, U32 const reducerValue)
{
    U32 u;
    for (u=0 ; u < size ; u++) {
        if (table[u] < reducerValue) table[u] = 0;
        else table[u] -= reducerValue;
    }
}

static __attribute__((always_inline)) void new_reduceTable_internal (U32* const table, int const nbRows, U32 const reducerValue)
{
    int cellNb = 0;
    int rowNb;
    for (rowNb=0 ; rowNb < nbRows ; rowNb++) {
        int column;
        for (column=0; column<ZSTD_ROWSIZE; column++) {
            if (table[cellNb] < reducerValue) table[cellNb] = 0;
            else table[cellNb] -= reducerValue;
            cellNb++;
    }   }
}

static __attribute__((always_inline)) void new_reduceTable (U32* const table, U32 const size, U32 const reducerValue)
{
    assert((size & (ZSTD_ROWSIZE-1)) == 0);  /* multiple of ZSTD_ROWSIZE */
    assert(size < (1U<<31));   /* can be casted to int */
    new_reduceTable_internal(table, size/ZSTD_ROWSIZE, reducerValue);
}
void old16(U32* table, U32 reducerValue) { old_reduceTable(table, 16, reducerValue); }
void new16(U32* table, U32 reducerValue) { new_reduceTable(table, 16, reducerValue); }
void old32(U32* table, U32 reducerValue) { old_reduceTable(table, 32, reducerValue); }
void new32(U32* table, U32 reducerValue) { new_reduceTable(table, 32, reducerValue); }
void new16_bad(U32* table, U32 reducerValue) { new_reduceTable(table, 16, reducerValue); table[0]++; }
