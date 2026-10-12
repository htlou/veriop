#include <stddef.h>
#include <stdint.h>

// The historical FSE table construction bounds offsetCode to 0..26.
// The unchanged BIT_readBits call is coupled as the same suffix on both sides.
size_t zstd_old_prefix(unsigned offsetCode, size_t suffix, size_t prevOffset) {
    if (offsetCode > 26) __builtin_unreachable();
    unsigned nbBits;
    size_t offset;
    nbBits = offsetCode - 1;
    if (offsetCode == 0) nbBits = 0;
    offset = ((size_t)1 << (nbBits & ((sizeof(offset)*8)-1))) + suffix;
    if (offsetCode == 0) offset = prevOffset;
    return offset;
}

size_t zstd_new_prefix(unsigned offsetCode, size_t suffix, size_t prevOffset) {
    if (offsetCode > 26) __builtin_unreachable();
    static const size_t offsetPrefix[27] = { 1, 1, 2, 4, 8, 16, 32, 64, 128, 256,
        512, 1024, 2048, 4096, 8192, 16384, 32768, 65536, 131072, 262144,
        524288, 1048576, 2097152, 4194304, 8388608, 16777216, 33554432 };
    unsigned nbBits;
    size_t offset;
    nbBits = offsetCode - 1;
    if (offsetCode == 0) nbBits = 0;
    offset = offsetPrefix[offsetCode] + suffix;
    if (offsetCode == 0) offset = prevOffset;
    return offset;
}
