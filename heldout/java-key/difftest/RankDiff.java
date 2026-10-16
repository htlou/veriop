import java.lang.reflect.*;
import java.net.*;
import java.util.*;

/** Differential test: base vs cand BitmapContainer.rank(char) for every char on random containers. */
public class RankDiff {
  public static void main(String[] a) throws Exception {
    ClassLoader lb = new URLClassLoader(new URL[]{new java.io.File(a[0]).toURI().toURL()}, null);
    ClassLoader lc = new URLClassLoader(new URL[]{new java.io.File(a[1]).toURI().toURL()}, null);
    Class<?> cb = lb.loadClass("org.roaringbitmap.BitmapContainer"), cc = lc.loadClass("org.roaringbitmap.BitmapContainer");
    Constructor<?> kb = cb.getConstructor(long[].class, int.class), kc = cc.getConstructor(long[].class, int.class);
    Method rb = cb.getMethod("rank", char.class), rc = cc.getMethod("rank", char.class);
    Random r = new Random(Long.parseLong(a[2]));
    int trials = Integer.parseInt(a[3]); long checks = 0;
    double[] dens = {0, 1e-4, 0.001, 0.01, 0.1, 0.5, 0.9, 0.999, 1.0};
    for (int t = 0; t < trials; t++) {
      long[] w = new long[1024];
      int mode = t % 4; double d = dens[r.nextInt(dens.length)];
      for (int i = 0; i < 65536; i++) {
        boolean set = mode == 3 ? ((i >>> 6) % 7 == 0) : r.nextDouble() < d; // mode 3: structured gaps
        if (mode == 2) set = set && i >= 32768; // upper half only
        if (set) w[i >>> 6] |= 1L << i;
      }
      if (t % 13 == 0) w[r.nextInt(1024)] = -1L;
      int card = 0; for (long x : w) card += Long.bitCount(x);
      int cardArg = (t % 5 == 4) ? -1 : card;  // also exercise the lazily-invalidated cardinality (-1)
      Object ob = kb.newInstance(w.clone(), cardArg), oc = kc.newInstance(w.clone(), cardArg);
      for (int c = 0; c < 65536; c++) {
        int x = (Integer) rb.invoke(ob, (char) c), y = (Integer) rc.invoke(oc, (char) c);
        if (x != y) throw new AssertionError("mismatch trial " + t + " lowbits " + c + ": " + x + " vs " + y);
        checks++;
      }
    }
    System.out.println("OK trials=" + trials + " rank checks=" + checks);
  }
}
