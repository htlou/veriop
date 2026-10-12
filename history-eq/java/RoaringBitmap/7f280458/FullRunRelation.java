public class FullRunRelation {
  /*@ public normal_behavior
    @ ensures \result;
    @*/
  public static boolean samePackedFullRun() {
    // Old full(): new RunContainer(1, new short[]{0, -1}).
    short oldStart = 0;
    short oldLength = -1;
    // New full(): new RunContainer(0, 1 << 16).
    short newStart = (short) 0;
    short newLength = -1; // Java constant value of (short) ((1 << 16) - 1 - 0)
    return oldStart == newStart && oldLength == newLength;
  }
}
