using u64 = unsigned long long;
extern "C" u64 target(u64 ne, u64 j, u64 offset) {
    if (ne < 32 || ne > 2147483647ULL || j >= ne || offset > (1ULL<<63))
        __builtin_unreachable();
    return offset + 4*j;
}
