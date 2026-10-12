public final class LongUtilsRelation {
    /*@ public normal_behavior
      @ requires high != null && high.length >= 6;
      @ ensures \result;
      @ assignable \nothing;
      @*/
    public static boolean same(byte[] high, char low) {
        byte byte6 = (byte) (low >>> 8 & 0xFFL);
        byte byte7 = (byte) low;
        long before = (high[0] & 0xFFL) << 56
            | (high[1] & 0xFFL) << 48
            | (high[2] & 0xFFL) << 40
            | (high[3] & 0xFFL) << 32
            | (high[4] & 0xFFL) << 24
            | (high[5] & 0xFFL) << 16
            | (byte6 & 0xFFL) << 8
            | (byte7 & 0xFFL);
        long highAsLong = (high[0] & 0xFFL) << 40
            | (high[1] & 0xFFL) << 32
            | (high[2] & 0xFFL) << 24
            | (high[3] & 0xFFL) << 16
            | (high[4] & 0xFFL) << 8
            | (high[5] & 0xFFL);
        long after = highAsLong << 16 | low;
        return before == after;
    }
}
