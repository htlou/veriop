public final class NettyMathUtil {
    public static int findNextPositivePowerOfTwo(final int value) {
        assert value > Integer.MIN_VALUE && value < 0x40000000;
        return 1 << (32 - Integer.numberOfLeadingZeros(value - 1));
    }

    /*@ public normal_behavior
      @ requires value <= 0 || value >= 0x40000000;
      @ ensures value <= 0 ==> \result == 1;
      @ ensures value >= 0x40000000 ==> \result == 0x40000000;
      @ assignable \nothing;
      @*/
    public static int safeFindNextPositivePowerOfTwo(final int value) {
        return value <= 0 ? 1 : value >= 0x40000000 ? 0x40000000 : findNextPositivePowerOfTwo(value);
    }
}
