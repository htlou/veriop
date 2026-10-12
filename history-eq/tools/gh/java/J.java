/** Loop-free reference implementations of JDK 21 bit-twiddling statics (same semantics as the intrinsics). */
final class J {
    static int Integer_bitCount(int i) {
        i = i - ((i >>> 1) & 0x55555555);
        i = (i & 0x33333333) + ((i >>> 2) & 0x33333333);
        i = (i + (i >>> 4)) & 0x0f0f0f0f;
        i = i + (i >>> 8);
        i = i + (i >>> 16);
        return i & 0x3f;
    }
    static int Integer_numberOfLeadingZeros(int i) {
        if (i <= 0) return i == 0 ? 32 : 0;
        int n = 31;
        if (i >= 1 << 16) { n -= 16; i >>>= 16; }
        if (i >= 1 << 8) { n -= 8; i >>>= 8; }
        if (i >= 1 << 4) { n -= 4; i >>>= 4; }
        if (i >= 1 << 2) { n -= 2; i >>>= 2; }
        return n - (i >>> 1);
    }
    static int Integer_numberOfTrailingZeros(int i) {
        i = ~i & (i - 1);
        if (i <= 0) return i & 32;
        int n = 1;
        if (i > 1 << 16) { n += 16; i >>>= 16; }
        if (i > 1 << 8) { n += 8; i >>>= 8; }
        if (i > 1 << 4) { n += 4; i >>>= 4; }
        if (i > 1 << 2) { n += 2; i >>>= 2; }
        return n + (i >>> 1);
    }
    static int Integer_highestOneBit(int i) { return i & (0x80000000 >>> Integer_numberOfLeadingZeros(i)); }
    static int Integer_lowestOneBit(int i) { return i & -i; }
    static int Integer_signum(int i) { return (i >> 31) | (-i >>> 31); }
    static int Integer_rotateLeft(int i, int d) { return (i << d) | (i >>> -d); }
    static int Integer_rotateRight(int i, int d) { return (i >>> d) | (i << -d); }
    static int Integer_compare(int x, int y) { return (x < y) ? -1 : ((x == y) ? 0 : 1); }
    static int Integer_sum(int a, int b) { return a + b; }
    static int Integer_max(int a, int b) { return a >= b ? a : b; }
    static int Integer_min(int a, int b) { return a <= b ? a : b; }
    static int Integer_reverseBytes(int i) { return (i << 24) | ((i & 0xff00) << 8) | ((i >>> 8) & 0xff00) | (i >>> 24); }
    static int Integer_toUnsignedLong_dummy() { return 0; }
    static long Integer_toUnsignedLong(int x) { return ((long) x) & 0xffffffffL; }

    static int Long_bitCount(long i) {
        i = i - ((i >>> 1) & 0x5555555555555555L);
        i = (i & 0x3333333333333333L) + ((i >>> 2) & 0x3333333333333333L);
        i = (i + (i >>> 4)) & 0x0f0f0f0f0f0f0f0fL;
        i = i + (i >>> 8);
        i = i + (i >>> 16);
        i = i + (i >>> 32);
        return (int) i & 0x7f;
    }
    static int Long_numberOfLeadingZeros(long i) {
        int x = (int) (i >>> 32);
        return x == 0 ? 32 + Integer_numberOfLeadingZeros((int) i) : Integer_numberOfLeadingZeros(x);
    }
    static int Long_numberOfTrailingZeros(long i) {
        int x = (int) i;
        return x == 0 ? 32 + Integer_numberOfTrailingZeros((int) (i >>> 32)) : Integer_numberOfTrailingZeros(x);
    }
    static long Long_highestOneBit(long i) { return i & (0x8000000000000000L >>> Long_numberOfLeadingZeros(i)); }
    static long Long_lowestOneBit(long i) { return i & -i; }
    static int Long_signum(long i) { return (int) ((i >> 63) | (-i >>> 63)); }
    static long Long_rotateLeft(long i, int d) { return (i << d) | (i >>> -d); }
    static long Long_rotateRight(long i, int d) { return (i >>> d) | (i << -d); }
    static int Long_compare(long x, long y) { return (x < y) ? -1 : ((x == y) ? 0 : 1); }
    static long Long_max(long a, long b) { return a >= b ? a : b; }
    static long Long_min(long a, long b) { return a <= b ? a : b; }

    static int Math_min(int a, int b) { return a <= b ? a : b; }
    static int Math_max(int a, int b) { return a >= b ? a : b; }
    static long Math_min(long a, long b) { return a <= b ? a : b; }
    static long Math_max(long a, long b) { return a >= b ? a : b; }
    static int Math_abs(int a) { return a < 0 ? -a : a; }
    static long Math_abs(long a) { return a < 0 ? -a : a; }
    static long Math_floorMod_dummy() { return 0; }
    static int Math_floorMod(int x, int y) { int m = x % y; if ((m ^ y) < 0 && m != 0) m += y; return m; }
    static int Math_floorDiv(int x, int y) { int q = x / y; if ((x ^ y) < 0 && (q * y != x)) q--; return q; }
    static int Math_toIntExact(long v) { if ((int) v != v) throw new ArithmeticException("integer overflow"); return (int) v; }
    static int Math_addExact(int x, int y) { int r = x + y; if (((x ^ r) & (y ^ r)) < 0) throw new ArithmeticException("integer overflow"); return r; }
    static int Math_multiplyExact_dummy() { return 0; }

    static int Character_toUpperCase_dummy() { return 0; }
}
