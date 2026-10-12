extern "C" unsigned __int128 target(unsigned __int128 input,
        unsigned __int128 initial_dst, bool host_visible) {
    unsigned char src[16], dst[16], src_staging[8], dst_staging[8];
    __builtin_memcpy(src, &input, 16);
    __builtin_memcpy(dst, &initial_dst, 16);
    __builtin_memcpy(src_staging, src + 3, 8);
    if (host_visible) {
        __builtin_memcpy(dst + 5, src_staging, 8);
    } else {
        __builtin_memcpy(dst_staging, src_staging, 8);
        __builtin_memcpy(dst + 5, dst_staging, 8);
    }
    unsigned __int128 result;
    __builtin_memcpy(&result, dst, 16);
    return result;
}
