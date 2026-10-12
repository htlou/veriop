public class RunOffsetRelationNegative {
  /*@ public normal_behavior
    @ requires 4 <= size && size <= 65536;
    @ requires 0 <= k && k < size;
    @ ensures \result;
    @*/
  public static boolean sameOffsetAddress(boolean hasRun, int size, int k) {
    int oldAddress = hasRun
        ? 4 + 4 * size + (size + 7) / 8 + 4 * k
        : 8 + 4 * size + 4 * k;
    int newAddress = hasRun
        ? 5 + 4 * size + (size + 7) / 8 + 4 * k
        : 8 + 4 * size + 4 * k;
    return oldAddress == newAddress;
  }
}
