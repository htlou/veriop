import org.roaringbitmap.FastAggregation;
import org.roaringbitmap.RoaringBitmap;
import org.roaringbitmap.buffer.BufferFastAggregation;
import org.roaringbitmap.buffer.MutableRoaringBitmap;

public final class Witness {
  public static void main(String[] args) {
    if (args[0].equals("array")) {
      RoaringBitmap r = RoaringBitmap.bitmapOf(1);
      System.out.println(FastAggregation.workShyAnd(r, r, r).contains(1));
    } else {
      MutableRoaringBitmap r = MutableRoaringBitmap.bitmapOf(1);
      System.out.println(BufferFastAggregation.workShyAnd(r, r, r).contains(1));
    }
  }
}
