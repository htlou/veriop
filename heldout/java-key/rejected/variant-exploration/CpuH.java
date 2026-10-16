import java.lang.management.*;
import org.roaringbitmap.bitmapcontainer.SelectBenchmark;
public class CpuH {
  public static void main(String[] a) throws Exception {
    SelectBenchmark b = new SelectBenchmark(); b.valuesCount = Integer.parseInt(a[0]); b.setup();
    ThreadMXBean t = ManagementFactory.getThreadMXBean();
    long acc = 0; double best = 0; double[] v = new double[30];
    for (int it = 0; it < 40; it++) {
      long c0 = t.getCurrentThreadCpuTime(); long n = 0;
      while (t.getCurrentThreadCpuTime() - c0 < 300_000_000L) { acc += b.bitmapContainer_selectBothSides(); n++; }
      double ops = n / ((t.getCurrentThreadCpuTime() - c0) / 1e6);
      if (it >= 10) v[it-10] = ops;
    }
    java.util.Arrays.sort(v);
    System.out.printf("%s vc=%s cpu-median=%.3f max=%.3f ops/ms (%d)%n", a[1], a[0], v[15], v[29], acc & 1);
  }
}
