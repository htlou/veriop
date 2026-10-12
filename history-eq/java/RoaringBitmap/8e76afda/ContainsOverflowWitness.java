import org.roaringbitmap.RoaringBitmap;
import org.roaringbitmap.buffer.MutableRoaringBitmap;

public final class ContainsOverflowWitness {
    public static void main(String[] args) {
        RoaringBitmap big = new RoaringBitmap();
        big.add(0L, 1L << 31);
        RoaringBitmap one = RoaringBitmap.bitmapOf(0);
        if (big.getLongCardinality() != 1L << 31 || big.getCardinality() != Integer.MIN_VALUE) {
            throw new AssertionError("unexpected 32-bit cardinality conversion");
        }
        if (!big.contains(0) || one.getLongCardinality() != 1 || !one.contains(0)) {
            throw new AssertionError("witness is not a singleton subset");
        }
        System.out.printf("roaring long=%d int=%d contains=%s%n",
                big.getLongCardinality(), big.getCardinality(), big.contains(one));

        MutableRoaringBitmap bufferedBig = new MutableRoaringBitmap();
        bufferedBig.add(0L, 1L << 31);
        MutableRoaringBitmap bufferedOne = MutableRoaringBitmap.bitmapOf(0);
        if (bufferedBig.getLongCardinality() != 1L << 31
                || bufferedBig.getCardinality() != Integer.MIN_VALUE) {
            throw new AssertionError("unexpected buffered 32-bit cardinality conversion");
        }
        if (!bufferedBig.contains(0) || bufferedOne.getLongCardinality() != 1
                || !bufferedOne.contains(0)) {
            throw new AssertionError("buffered witness is not a singleton subset");
        }
        System.out.printf("buffered long=%d int=%d contains=%s%n",
                bufferedBig.getLongCardinality(), bufferedBig.getCardinality(),
                bufferedBig.contains(bufferedOne));
    }
}
