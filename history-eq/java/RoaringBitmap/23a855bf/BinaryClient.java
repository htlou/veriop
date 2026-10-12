import org.roaringbitmap.longlong.LongUtils;

public class BinaryClient {
  public static void main(String[] args) {
    if (args[0].equals("compare")) {
      System.out.println(LongUtils.compareHigh(new byte[] {1}, new byte[] {2}));
    } else if (args[0].equals("max")) {
      System.out.println(LongUtils.isMaxHigh(new byte[] {-1, -1, -1, -1, -1, -1}));
    } else {
      throw new IllegalArgumentException(args[0]);
    }
  }
}
