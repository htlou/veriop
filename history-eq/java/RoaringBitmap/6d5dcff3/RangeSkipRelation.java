public final class RangeSkipRelation {
    /*@ public normal_behavior
      @ ensures \result;
      @ assignable \nothing;
      @*/
    public static boolean same(long value, long containerMask, long mask) {
        long before = (~value & ~containerMask) & mask;
        long after = ~(value | containerMask) & mask;
        return before == after;
    }
}
