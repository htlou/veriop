public final class RangeSignRelation {
  /*@ public normal_behavior
    @ ensures \result;
    @ assignable \nothing;
    @*/
  public static boolean oldTrueNewFalseAtBit63() {
    long word = 1L << 63;
    int start = 63;
    int end = 64;
    boolean oldContains = (word & (1L << start)) != 0;
    boolean newRangeNonempty =
        (word & ((~0L << start) & (~0L >>> -end))) > 0;
    return oldContains && !newRangeNonempty;
  }
}
