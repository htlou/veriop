/** Exhaustive check of the Bits.andM4 contract against Java's `x & -4`:
 *  for every int x >= 0:  0 <= (x & -4) <= x  and  (x & -4) % 4 == 0. */
public class AndM4Check {
  public static void main(String[] a) {
    long n = 0;
    for (int x = 0; ; x++) {
      int r = x & -4;
      if (!(0 <= r && r <= x && r % 4 == 0)) throw new AssertionError("fails at x=" + x);
      n++;
      if (x == Integer.MAX_VALUE) break;
    }
    System.out.println("AndM4Check OK: " + n + " values (all int x >= 0)");
  }
}
