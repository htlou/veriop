import java.util.BitSet;
import java.util.Random;
import org.roaringbitmap.ArrayContainer;
import org.roaringbitmap.Container;
import org.roaringbitmap.RunContainer;

public final class RandomSearch {
  public static void main(String[] args) {
    Random rng = new Random(7420);
    for (int trial = 0; trial < 20000; trial++) {
      ArrayContainer a = new ArrayContainer();
      RunContainer r = new RunContainer();
      BitSet expected = new BitSet(65536);
      BitSet removed = new BitSet(65536);
      int ac = rng.nextInt(80), rc = rng.nextInt(80);
      for (int i = 0; i < ac; i++) {
        int v = rng.nextBoolean() ? rng.nextInt(256) : 65535 - rng.nextInt(256);
        a = (ArrayContainer) a.add((short)v);
        expected.set(v);
      }
      for (int i = 0; i < rc; i++) {
        int v = rng.nextBoolean() ? rng.nextInt(256) : 65535 - rng.nextInt(256);
        r = (RunContainer) r.add((short)v);
        removed.set(v);
      }
      expected.andNot(removed);
      Container out = a.andNot(r);
      BitSet actual = new BitSet(65536);
      for (short value : out) {
        actual.set(value & 0xFFFF);
      }
      if (!actual.equals(expected) || out.getCardinality() != expected.cardinality()) {
        System.out.println("FAIL trial=" + trial);
        return;
      }
    }
    System.out.println("PASS 20000");
  }
}
