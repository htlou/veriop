import org.roaringbitmap.ArrayContainer;
import org.roaringbitmap.Container;
import org.roaringbitmap.RunContainer;

public final class DiffSearch {
  public static void main(String[] args) {
    long cases = 0;
    for (int am = 0; am < 256; am++) {
      for (int rm = 0; rm < 256; rm++) {
        ArrayContainer a = new ArrayContainer();
        RunContainer r = new RunContainer();
        for (int v = 0; v < 8; v++) {
          if ((am & (1 << v)) != 0) a = (ArrayContainer) a.add((short)v);
          if ((rm & (1 << v)) != 0) r = (RunContainer) r.add((short)v);
        }
        Container out = a.andNot(r);
        int expected = am & ~rm;
        if (out.getCardinality() != Integer.bitCount(expected)) {
          System.out.println("FAIL a=" + am + " r=" + rm + " card=" + out.getCardinality() + " expected=" + Integer.bitCount(expected));
          return;
        }
        for (int v = 0; v < 8; v++) {
          if (out.contains((short)v) != ((expected & (1 << v)) != 0)) {
            System.out.println("FAIL a=" + am + " r=" + rm + " v=" + v);
            return;
          }
        }
        cases++;
      }
    }
    System.out.println("PASS " + cases);
  }
}
