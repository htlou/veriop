public final class ExpansionPositionRelation {
  /*@ public normal_behavior
    @ requires 0 <= initialPosition && initialPosition < limit;
    @ ensures \result;
    @ assignable \nothing;
    @*/
  public static boolean differs(int initialPosition, int limit) {
    // Parent increaseCapacity rewinds the caller's buffer, then bulk put consumes it to limit.
    int oldPosition = 0;
    oldPosition = limit;
    // Child allocates a new destination and only reads the caller's buffer absolutely.
    int newPosition = initialPosition;
    return oldPosition != newPosition;
  }
}
