public final class SwapReferenceRelation {
  /*@ public normal_behavior
    @ ensures \result;
    @ assignable \nothing;
    @*/
  public static boolean twoPassesRestoreCallerArray(int[] data, int[] copy) {
    int[] primary = data;
    int[] secondary = copy;
    int[] tmp = primary;
    primary = secondary;
    secondary = tmp;
    tmp = primary;
    primary = secondary;
    secondary = tmp;
    return primary == data && secondary == copy;
  }
}
