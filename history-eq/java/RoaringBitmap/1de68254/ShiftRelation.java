public final class ShiftRelation {
    /*@ public normal_behavior
      @ ensures \result;
      @ assignable \nothing;
      @*/
    public static boolean same0(long v) {
        return (byte) (v >> 56) == (byte) (v >>> 56);
    }
}
