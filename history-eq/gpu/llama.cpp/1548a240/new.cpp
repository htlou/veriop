using u64 = unsigned long long;
extern "C" u64 target(u64 ne, u64 j, u64 offset) {
    if (ne < 32 || ne > 2147483647ULL || j >= ne || offset > (1ULL<<63))
        __builtin_unreachable();
    u64 n4 = ne / 4;
    u64 item = j / 4;
    u64 lane = j % 4;
    if (item < n4) return offset + 4*(4*item + lane);
    if (item == n4) return offset + 4*j;
    return ~u64(0);
}
