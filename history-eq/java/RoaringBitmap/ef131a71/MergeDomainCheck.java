package org.roaringbitmap;

import java.util.Arrays;

/** Exhausts 64 canonical three-key bitmaps per side with two low bits per key. */
public final class MergeDomainCheck {
  static RoaringBitmap bitmap(int code, int[] keys) {
    RoaringBitmap out = new RoaringBitmap();
    for (int i = 0; i < 3; i++) {
      int bits = (code >>> (2 * i)) & 3;
      for (int low = 0; low < 2; low++) {
        if ((bits & (1 << low)) != 0) out.add((keys[i] << 16) | low);
      }
    }
    return out;
  }

  public static int[] expected(int left, int right, int op, int[] keys) {
    int[] values = new int[6];
    int count = 0;
    for (int i = 0; i < 3; i++) {
      int a = (left >>> (2 * i)) & 3;
      int b = (right >>> (2 * i)) & 3;
      int bits = op == 1 ? a ^ b : a | b;
      for (int low = 0; low < 2; low++) {
        if ((bits & (1 << low)) != 0) values[count++] = (keys[i] << 16) | low;
      }
    }
    return Arrays.copyOf(values, count);
  }

  public static void main(String[] args) {
    int[][] families = {{0, 1, 2}, {0, 32768, 65535}};
    int checks = 0;
    for (int[] keys : families) {
      for (int left = 0; left < 64; left++) {
        for (int right = 0; right < 64; right++) {
          for (int op = 0; op < 3; op++) {
            RoaringBitmap a = bitmap(left, keys);
            RoaringBitmap b = bitmap(right, keys);
            if (op == 0) a.or(b);
            else if (op == 1) a.xor(b);
            else {
              a.naivelazyor(b);
              a.repairAfterLazy();
            }
            int[] want = expected(left, right, op, keys);
            if (!Arrays.equals(a.toArray(), want)
                || a.getCardinality() != want.length
                || !Arrays.equals(b.toArray(), expected(right, 0, 0, keys))) {
              throw new AssertionError("keys=" + Arrays.toString(keys) + " left=" + left
                  + " right=" + right + " op=" + op + " got=" + Arrays.toString(a.toArray())
                  + " want=" + Arrays.toString(want));
            }
            checks++;
          }
        }
      }
    }
    System.out.println("loaded=" + RoaringBitmap.class.getProtectionDomain().getCodeSource().getLocation());
    System.out.println("checked=" + checks);
  }
}
