public final class ExpansionPositionRelation {
  /*@ public normal_behavior
    @ requires 0 <= initialPosition && initialPosition < limit;
    @ ensures \result;
    @ assignable \nothing;
    @*/
  public static boolean differs(int initialPosition, int limit) {
    // Parent ior expansion rewinds the caller's buffer, then bulk put consumes it to limit.
    int oldPosition = 0;
    oldPosition = limit;
    // Child unions into a new destination and leaves the caller's buffer position alone.
    int newPosition = initialPosition;
    return oldPosition != newPosition;
  }
}
