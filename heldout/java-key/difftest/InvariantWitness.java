import java.lang.reflect.*;
import java.net.*;

/** Shows old and new rank differ on a container built through the PUBLIC constructor
 *  BitmapContainer(long[] newBitmap, int newCardinality) with a cardinality that does not match
 *  the words (a state that BitmapContainer.validate() rejects). */
public class InvariantWitness {
  public static void main(String[] a) throws Exception {
    ClassLoader lb = new URLClassLoader(new URL[]{new java.io.File(a[0]).toURI().toURL()}, null);
    ClassLoader lc = new URLClassLoader(new URL[]{new java.io.File(a[1]).toURI().toURL()}, null);
    long[] w = new long[1024];
    for (int i = 0; i < 1024; i++) w[i] = -1L;          // all 65536 bits set
    int bogus = 5000;                                     // real popcount is 65536
    for (ClassLoader l : new ClassLoader[]{lb, lc}) {
      Class<?> c = l.loadClass("org.roaringbitmap.BitmapContainer");
      Object o = c.getConstructor(long[].class, int.class).newInstance(w.clone(), bogus);
      int r = (Integer) c.getMethod("rank", char.class).invoke(o, (char) 60000);
      Object v = c.getMethod("validate").invoke(o);
      System.out.println((l == lb ? "old" : "new") + " rank(60000) = " + r + "   validate() = " + v);
    }
  }
}
