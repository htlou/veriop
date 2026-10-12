import org.roaringbitmap.longlong.Roaring64Bitmap;

public final class XorEmptyWitness {
    public static void main(String[] args) {
        Roaring64Bitmap left = Roaring64Bitmap.bitmapOf(42L);
        Roaring64Bitmap right = Roaring64Bitmap.bitmapOf(42L);
        Roaring64Bitmap result = Roaring64Bitmap.xor(left, right);
        System.out.println("singleton cardinality=" + result.getLongCardinality()
                + " isEmpty=" + result.isEmpty());

        Roaring64Bitmap leftRange = new Roaring64Bitmap();
        Roaring64Bitmap rightRange = new Roaring64Bitmap();
        leftRange.addRange(100L, 1100L);
        rightRange.addRange(100L, 1100L);
        Roaring64Bitmap rangeResult = Roaring64Bitmap.xor(leftRange, rightRange);
        System.out.println("range cardinality=" + rangeResult.getLongCardinality()
                + " isEmpty=" + rangeResult.isEmpty());
    }
}
