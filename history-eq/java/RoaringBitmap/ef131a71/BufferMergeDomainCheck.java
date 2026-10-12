package org.roaringbitmap.buffer;

import java.util.Arrays;
import org.roaringbitmap.MergeDomainCheck;

/** Same finite domain as MergeDomainCheck, through the buffer API. */
public final class BufferMergeDomainCheck {
  static MutableRoaringBitmap bitmap(int code, int[] keys) {
    MutableRoaringBitmap out = new MutableRoaringBitmap();
    for (int i = 0; i < 3; i++) {
      int bits = (code >>> (2 * i)) & 3;
      for (int low = 0; low < 2; low++) {
        if ((bits & (1 << low)) != 0) out.add((keys[i] << 16) | low);
      }
    }
    return out;
  }

  public static void main(String[] args) {
    int[][] families = {{0, 1, 2}, {0, 32768, 65535}};
    int checks = 0;
    for (int[] keys : families) {
      for (int left = 0; left < 64; left++) {
        for (int right = 0; right < 64; right++) {
          for (int op = 0; op < 3; op++) {
            MutableRoaringBitmap a = bitmap(left, keys);
            MutableRoaringBitmap b = bitmap(right, keys);
            if (op == 0) a.or(b);
            else if (op == 1) a.xor(b);
            else {
              a.naivelazyor(b);
              a.repairAfterLazy();
            }
            int[] want = MergeDomainCheck.expected(left, right, op, keys);
            if (!Arrays.equals(a.toArray(), want)
                || a.getCardinality() != want.length
                || !Arrays.equals(b.toArray(), MergeDomainCheck.expected(right, 0, 0, keys))) {
              throw new AssertionError("keys=" + Arrays.toString(keys) + " left=" + left
                  + " right=" + right + " op=" + op + " got=" + Arrays.toString(a.toArray())
                  + " want=" + Arrays.toString(want));
            }
            checks++;
          }
        }
      }
    }
    System.out.println("loaded=" + MutableRoaringBitmap.class.getProtectionDomain().getCodeSource().getLocation());
    System.out.println("checked=" + checks);
  }
}
