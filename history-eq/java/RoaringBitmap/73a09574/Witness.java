import org.roaringbitmap.RoaringBitmap;

class Witness {
  public static void main(String[] args) {
    RoaringBitmap left = RoaringBitmap.bitmapOf(0x00010001, 0x00020001);
    RoaringBitmap right = RoaringBitmap.bitmapOf(0x00020001);
    System.out.printf("left=%d right=%d difference=%d%n",
        left.getCardinality(), right.getCardinality(),
        RoaringBitmap.andNotCardinality(left, right));
  }
}
