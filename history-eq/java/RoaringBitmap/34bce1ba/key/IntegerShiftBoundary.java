public final class IntegerShiftBoundary {
  /*@ public normal_behavior
    @ ensures \result == 1;
    @*/
  public static int invalidCountBoundary() {
    int arrayLength = 4;
    int pos = 4;
    int count = 0;
    int sourcePosition = pos + 1;
    boolean oldArraycopyRejects = sourcePosition > arrayLength;

    int v = 0x11223344;
    if (count != 0) {
      int shiftToLeft = (4 - count) << 3;
      int shiftToRight = shiftToLeft - (pos << 3);
      int maskShifted = 0xFFFFFFFF >>> shiftToLeft << shiftToRight;
      v = (v & ~maskShifted) | (v << 8 & maskShifted);
    }
    return oldArraycopyRejects && v == 0x11223344 ? 1 : 0;
  }
}
