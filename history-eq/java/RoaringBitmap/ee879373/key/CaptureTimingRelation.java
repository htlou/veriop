public final class CaptureTimingRelation {
  /*@ public normal_behavior
    @ requires before != after;
    @ ensures \result;
    @ assignable \nothing;
    @*/
  public static boolean observedCapacitiesDiffer(int before, int after) {
    int initialCapacity = before;
    int captured = initialCapacity;
    initialCapacity = after;
    int oldObserved = initialCapacity;
    int newObserved = captured;
    return oldObserved != newObserved;
  }
}
