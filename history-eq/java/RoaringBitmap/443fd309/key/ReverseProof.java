public final class ReverseProof {
  static class Old {
    long word;
    int position;
    long[] bitmap;
public boolean hasNext() {
    return position >= 0;
  }
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
public char peekNext() {
    int shift = Long.numberOfLeadingZeros(word) + 1;
    return (char) ((position + 1) * 64 - shift);
  }
  }

  static class New {
    long word;
    int position;
    long[] bitmap;
public boolean hasNext() {
    return position >= 0;
  }
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
public void advanceIfNeeded(char maxval) {
    if (maxval < (position + 1) * 64) {
      if (maxval < position * 64) {
        position = maxval / 64;
      }
      long currentWord = bitmap[position];
      currentWord &= ~0L >>> (63 - (maxval & 63));
      if (position > 0) {
        while (currentWord == 0) {
          position--;
          if (position == 0) {
            break;
          }
          currentWord = bitmap[position];
        }
      }
      word = currentWord;
    }
  }
public char peekNext() {
    int shift = Long.numberOfLeadingZeros(word) + 1;
    return (char) ((position + 1) * 64 - shift);
  }
  }
  /*@ public normal_behavior
    @ ensures \result;
    @*/
  public static boolean differs() {
    Old old = new Old();
    old.bitmap = new long[1024]; old.bitmap[0] = 2L;
    old.position = 0; old.word = 2L;
    New updated = new New();
    updated.bitmap = new long[1024]; updated.bitmap[0] = 2L;
    updated.position = 0; updated.word = 2L;
    old.advanceIfNeeded((char) 0);
    updated.advanceIfNeeded((char) 0);
    return !old.hasNext() && updated.hasNext();
  }
}
