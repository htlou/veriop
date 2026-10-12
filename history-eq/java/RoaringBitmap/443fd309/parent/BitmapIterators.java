package parent;
import static java.lang.Long.bitCount;
import static java.lang.Long.numberOfTrailingZeros;
class BitmapContainerCharIterator implements PeekableCharIterator {

  long w;
  int x;

  long[] bitmap;

  BitmapContainerCharIterator() {

  }

  BitmapContainerCharIterator(long[] p) {
    wrap(p);
  }

  @Override
  public PeekableCharIterator clone() {
    try {
      return (PeekableCharIterator) super.clone();
    } catch (CloneNotSupportedException e) {
      return null;// will not happen
    }
  }

  @Override
  public boolean hasNext() {
    return x < bitmap.length;
  }

  @Override
  public char next() {
    char answer = (char) (x * 64 + numberOfTrailingZeros(w));
    w &= (w - 1);
    while (w == 0) {
      ++x;
      if (x == bitmap.length) {
        break;
      }
      w = bitmap[x];
    }
    return answer;
  }



  @Override
  public int nextAsInt() {
    return (next());
  }

  @Override
  public void remove() {
    // TODO: implement
    throw new RuntimeException("unsupported operation: remove");
  }


  public void wrap(long[] b) {
    bitmap = b;
    for (x = 0; x < bitmap.length; ++x) {
      if ((w = bitmap[x]) != 0) {
        break;
      }
    }
  }

  @Override
  public void advanceIfNeeded(char minval) {
    if ((minval) >= (x + 1) * 64) {
      x = (minval) / 64;
      w = bitmap[x];
      while (w == 0) {
        ++x;
        if (x == bitmap.length) {
          return;
        }
        w = bitmap[x];
      }
    }
    while (hasNext() && ((peekNext()) < (minval))) {
      next(); // could be optimized
    }
  }

  @Override
  public char peekNext() {
    return (char) (x * 64 + numberOfTrailingZeros(w));
  }
}

class BitmapContainerCharRankIterator extends BitmapContainerCharIterator
    implements PeekableCharRankIterator {
  private int nextRank = 1;

  BitmapContainerCharRankIterator(long[] p) {
    super(p);
  }

  @Override
  public int peekNextRank() {
    return nextRank;
  }

  @Override
  public char next() {
    ++nextRank;
    return super.next();
  }

  @Override
  public void advanceIfNeeded(char minval) {
    if ((minval) >= (x + 1) * 64) {

      int nextX = (minval) / 64;
      nextRank += bitCount(w);
      for(x = x + 1; x < nextX; ++x) {
        w = bitmap[x];
        nextRank += bitCount(w);
      }

      x = nextX;
      w = bitmap[x];

      while (w == 0) {
        ++x;
        if (x == bitmap.length) {
          return;
        }
        w = bitmap[x];
      }
    }
    while (hasNext() && ((peekNext()) < (minval))) {
      next(); // could be optimized
    }
  }

  @Override
  public PeekableCharRankIterator clone() {
    return (PeekableCharRankIterator) super.clone();
  }
}

class ReverseBitmapContainerCharIterator implements PeekableCharIterator {

  long word;
  int position;

  long[] bitmap;

  ReverseBitmapContainerCharIterator() {

  }

  ReverseBitmapContainerCharIterator(long[] bitmap) {
    wrap(bitmap);
  }

  @Override
  public PeekableCharIterator clone() {
    try {
      return (PeekableCharIterator) super.clone();
    } catch (CloneNotSupportedException e) {
      return null;
    }
  }

  @Override
  public boolean hasNext() {
    return position >= 0;
  }

  @Override
  public char next() {
    int shift = Long.numberOfLeadingZeros(word) + 1;
    char answer = (char)((position + 1) * 64 - shift);
    word &= (0xFFFFFFFFFFFFFFFEL >>> shift);
    while (word == 0) {
      --position;
      if (position < 0) {
        break;
      }
      word = bitmap[position];
    }
    return answer;
  }

  @Override
  public int nextAsInt() {
    return next();
  }
  
  @Override
  public void advanceIfNeeded(char maxval) {
    if ((maxval) <= (position - 1) * 64) {
      position = (maxval) / 64;
      word = bitmap[position];
      while (word == 0) {
        --position;
        if (position == 0) {
          break;
        }
        word = bitmap[position];
      }
    }
    while (hasNext() && ((peekNext()) > (maxval))) {
      next(); // could be optimized
    }
  }

  @Override
  public char peekNext() {
    int shift = Long.numberOfLeadingZeros(word) + 1;
    return (char) ((position + 1) * 64 - shift);
  }

  @Override
  public void remove() {
    // TODO: implement
    throw new RuntimeException("unsupported operation: remove");
  }

  void wrap(long[] b) {
    bitmap = b;
    for (position = bitmap.length - 1; position >= 0; --position) {
      if ((word = bitmap[position]) != 0) {
        break;
      }
    }
  }
}
