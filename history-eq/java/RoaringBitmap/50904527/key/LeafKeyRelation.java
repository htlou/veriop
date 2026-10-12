public final class LeafKeyRelation {
    /*@ public normal_behavior
      @ ensures \result;
      @ assignable \nothing;
      @*/
    public static boolean same(long key) {
        // Exact old LeafNode.getKey() expression.
        long oldKey = key >>> 16;
        // Exact new constructor field assignments and getKey() expression.
        int keyHigh = (int) (key >> 32);
        char keyLow = (char) (key >> 16);
        long newKey = (((long) keyHigh) & 0xFFFFFFFFL) << 16
                | (((long) keyLow) & 0xFFFFL);
        return oldKey == newKey;
    }
}
