import org.roaringbitmap.longlong.IntegerUtil;

public final class IntegerShiftWitness {
  public static void main(String[] args) {
    check(0x11223344, 0, 3);
    check(0x11223344, 0, 4);
    check(0x11223344, 4, 0);
  }

  private static void check(int value, int position, int count) {
    try {
      int result = IntegerUtil.shiftLeftFromSpecifiedPosition(value, position, count);
      System.out.printf("pos=%d count=%d result=%08x%n", position, count, result);
    } catch (RuntimeException error) {
      System.out.printf("pos=%d count=%d exception=%s%n", position, count,
          error.getClass().getSimpleName());
    }
  }
}
