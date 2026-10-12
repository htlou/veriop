package parent;
public final class BitmapContainer {
  int cardinality;
  final long[] bitmap;
public BitmapContainer(long[] newBitmap, int newCardinality) {
    this.cardinality = newCardinality;
    this.bitmap = newBitmap;
  }
public PeekableCharIterator getReverseCharIterator() {
    return new ReverseBitmapContainerCharIterator(this.bitmap);
  }
}
