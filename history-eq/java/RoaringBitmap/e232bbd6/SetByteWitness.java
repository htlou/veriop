import org.roaringbitmap.longlong.IntegerUtil;

public final class SetByteWitness {
  public static void main(String[] args) {
    check(0x11223344, (byte) 0x7f, 0);
    check(0x11223344, (byte) 0x7f, 3);
    check(0x11223344, (byte) 0x7f, 4);
    check(0x11223344, (byte) 0x7f, -1);
  }

  private static void check(int value, byte replacement, int position) {
    try {
      int result = IntegerUtil.setByte(value, replacement, position);
      System.out.printf("pos=%d result=%08x%n", position, result);
    } catch (RuntimeException error) {
      System.out.printf("pos=%d exception=%s%n", position, error.getClass().getSimpleName());
    }
  }
}
