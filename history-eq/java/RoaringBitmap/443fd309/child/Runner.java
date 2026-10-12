package child;
public final class Runner {
  public static String run() {
    long[] rankBitmap = new long[1024];
    rankBitmap[0] = 1L;
    rankBitmap[1] = 1L;
    BitmapContainerCharRankIterator iterator =
        new BitmapContainerCharRankIterator(rankBitmap);
    iterator.advanceIfNeeded((char) 64);
    long[] bitmap = new long[1024];
    bitmap[0] = 2L;
    PeekableCharIterator reverse =
        new BitmapContainer(bitmap, 1).getReverseCharIterator();
    reverse.advanceIfNeeded((char) 0);
    return (int) iterator.peekNext() + ":" + iterator.peekNextRank()
        + "|" + reverse.hasNext();
  }
  public static boolean reverseHasNext() {
    long[] bitmap = new long[1024];
    bitmap[0] = 2L;
    PeekableCharIterator reverse =
        new BitmapContainer(bitmap, 1).getReverseCharIterator();
    reverse.advanceIfNeeded((char) 0);
    return reverse.hasNext();
  }
}
