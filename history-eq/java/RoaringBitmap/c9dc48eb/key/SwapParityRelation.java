public final class SwapParityRelation {
  /*@ public normal_behavior
    @ ensures \result;
    @ assignable \nothing;
    @*/
  public static boolean sameTwoPassBuffers(int first0, int first1, int second0, int second1) {
    int[] oldData = new int[2];
    int[] oldCopy = new int[2];
    int[] newData = new int[2];
    int[] newCopy = new int[2];
    int[] primary = newData;
    int[] secondary = newCopy;

    oldCopy[0] = first0;
    oldCopy[1] = first1;
    oldData[0] = oldCopy[0];
    oldData[1] = oldCopy[1];
    secondary[0] = first0;
    secondary[1] = first1;
    int[] tmp = primary;
    primary = secondary;
    secondary = tmp;

    oldCopy[0] = second0;
    oldCopy[1] = second1;
    oldData[0] = oldCopy[0];
    oldData[1] = oldCopy[1];
    secondary[0] = second0;
    secondary[1] = second1;
    tmp = primary;
    primary = secondary;
    secondary = tmp;

    return primary == newData && oldData[0] == newData[0] && oldData[1] == newData[1];
  }
}
