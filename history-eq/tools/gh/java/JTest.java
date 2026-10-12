import java.util.*;
public class JTest {
    public static void main(String[] a) {
        Random r = new Random(1); long bad = 0;
        long[] edge = {0, 1, -1, Long.MIN_VALUE, Long.MAX_VALUE, 0xffffffffL, 0x80000000L};
        for (int it = 0; it < 3000000; it++) {
            long x = it < edge.length ? edge[it] : (r.nextInt(3) == 0 ? r.nextLong() >> r.nextInt(64) : r.nextLong() << r.nextInt(64));
            int y = (int) x; int d = r.nextInt(100) - 30;
            if (J.Integer_bitCount(y) != Integer.bitCount(y) || J.Integer_numberOfLeadingZeros(y) != Integer.numberOfLeadingZeros(y)
              || J.Integer_numberOfTrailingZeros(y) != Integer.numberOfTrailingZeros(y) || J.Integer_highestOneBit(y) != Integer.highestOneBit(y)
              || J.Integer_lowestOneBit(y) != Integer.lowestOneBit(y) || J.Integer_signum(y) != Integer.signum(y) || J.Integer_rotateLeft(y, d) != Integer.rotateLeft(y, d)
              || J.Integer_rotateRight(y, d) != Integer.rotateRight(y, d) || J.Integer_reverseBytes(y) != Integer.reverseBytes(y)
              || J.Long_bitCount(x) != Long.bitCount(x) || J.Long_numberOfLeadingZeros(x) != Long.numberOfLeadingZeros(x)
              || J.Long_numberOfTrailingZeros(x) != Long.numberOfTrailingZeros(x) || J.Long_highestOneBit(x) != Long.highestOneBit(x)
              || J.Long_lowestOneBit(x) != Long.lowestOneBit(x) || J.Long_signum(x) != Long.signum(x) || J.Long_rotateLeft(x, d) != Long.rotateLeft(x, d)
              || J.Long_rotateRight(x, d) != Long.rotateRight(x, d)) { bad++; System.out.println("MISMATCH " + x); }
            if (y != 0 && J.Math_floorMod(d, y) != Math.floorMod(d, y)) { bad++; System.out.println("floorMod"); }
            if (y != 0 && J.Math_floorDiv(d, y) != Math.floorDiv(d, y)) { bad++; System.out.println("floorDiv"); }
        }
        System.out.println("bad=" + bad);
    }
}
