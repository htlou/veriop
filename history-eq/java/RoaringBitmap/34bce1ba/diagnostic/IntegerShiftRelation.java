public final class IntegerShiftRelation {
  private static byte[] toBDBytes(int v) {
    byte[] bytes = new byte[4];
    bytes[0] = (byte) (v >> 24);
    bytes[1] = (byte) (v >> 16);
    bytes[2] = (byte) (v >> 8);
    bytes[3] = (byte) v;
    return bytes;
  }

  private static int fromBDBytes(byte[] bytes) {
    return (bytes[0] & 0xFF) << 24
        | (bytes[1] & 0xFF) << 16
        | (bytes[2] & 0xFF) << 8
        | bytes[3] & 0xFF;
  }

  private static int oldShift(int v, int pos, int count) {
    byte[] initialVal = toBDBytes(v);
    System.arraycopy(initialVal, pos + 1, initialVal, pos, count);
    return fromBDBytes(initialVal);
  }

  private static int newShift(int v, int pos, int count) {
    if (count != 0) {
      int shiftToLeft = (4 - count) << 3;
      int shiftToRight = shiftToLeft - (pos << 3);
      int maskShifted = 0xFFFFFFFF >>> shiftToLeft << shiftToRight;
      v = (v & ~maskShifted) | (v << 8 & maskShifted);
    }
    return v;
  }

  /*@ public normal_behavior
    @ ensures \result == 1;
    @*/
  public static int invalidCountWitness() {
    boolean oldThrows = false;
    try {
      oldShift(0x11223344, 0, 4);
    } catch (ArrayIndexOutOfBoundsException e) {
      oldThrows = true;
    }
    return oldThrows && newShift(0x11223344, 0, 4) == 0x22334400 ? 1 : 0;
  }
}
