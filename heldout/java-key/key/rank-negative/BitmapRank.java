/**
 * KeY model of org.roaringbitmap.BitmapContainer for the rank(char) equivalence proof.
 * Fields mirror BitmapContainer (bitmap, cardinality). Method bodies are generated from the
 * real sources by gen_key.py (see provenance.json).
 *
 * Class invariant of BitmapContainer used as precondition (INV):
 *   bitmap != null && bitmap.length == 1024 (= MAX_CAPACITY / 64)
 *   cardinality < 0 (lazily invalidated) || cardinality == sum of bitCount over all 1024 words
 *   cardinality <= 65536 (implied by the previous line since bitCount <= 64)
 */
public final class BitmapRank {
  public long[] bitmap;
  public int cardinality;

  /*@ public normal_behavior
    @ requires bitmap != null && 1024 <= bitmap.length && bitmap.length <= 1048576;
    @ requires (\forall int i; 0 <= i && i < bitmap.length; \dl_inLong(bitmap[i]));
    @ ensures cardinality == (\sum int i; 0 <= i && i < bitmap.length; PopCount.pc(bitmap[i]));
    @ assignable cardinality;
    @*/
  void computeCardinality() {
    this.cardinality = 0;
    /*@ loop_invariant 0 <= k && k <= this.bitmap.length
      @   && this.cardinality == (\sum int i; 0 <= i && i < k; PopCount.pc(bitmap[i]))
      @   && 0 <= this.cardinality && this.cardinality <= 64 * k;
      @ decreasing this.bitmap.length - k;
      @ assignable this.cardinality;
      @*/
    for (int k = 0; k < this.bitmap.length; k++) {
      this.cardinality += PopCount.bitCount(this.bitmap[k]);
    }
  }

  /* SPEC: complete functional contract; it determines both the result and the final heap,
     so any two methods satisfying it are equivalent on all INV states. */
  /*@ public normal_behavior
    @ requires bitmap != null && 1024 <= bitmap.length && bitmap.length <= 1048576;
    @ requires (\forall int i; 0 <= i && i < bitmap.length; \dl_inLong(bitmap[i]));
    @ requires cardinality < 0 || cardinality == (\sum int i; 0 <= i && i < bitmap.length; PopCount.pc(bitmap[i]));
    @ requires cardinality <= 65536;
    @ requires lowbits != 65535;
    @ ensures \result == (\sum int i; 0 <= i && i < ((lowbits + 1) / 64); PopCount.pc(bitmap[i]))
    @     + (\dl_javaBitwiseAndInt(\dl_javaAddInt(lowbits, 1), 63) != 0
    @          ? PopCount.pc(\dl_javaShiftLeftLong(
    @                bitmap[\dl_javaUnsignedShiftRightInt(\dl_javaAddInt(lowbits, 1), 6)],
    @                \dl_javaSubInt(64, \dl_javaBitwiseAndInt(\dl_javaAddInt(lowbits, 1), 63)))) : 0);
    @ assignable \strictly_nothing;
    @ also
    @ public normal_behavior
    @ requires bitmap != null && 1024 <= bitmap.length && bitmap.length <= 1048576;
    @ requires (\forall int i; 0 <= i && i < bitmap.length; \dl_inLong(bitmap[i]));
    @ requires cardinality < 0 || cardinality == (\sum int i; 0 <= i && i < bitmap.length; PopCount.pc(bitmap[i]));
    @ requires cardinality <= 65536;
    @ requires lowbits == 65535;
    @ ensures \result == (\sum int i; 0 <= i && i < bitmap.length; PopCount.pc(bitmap[i]));
    @ ensures cardinality == (\sum int i; 0 <= i && i < bitmap.length; PopCount.pc(bitmap[i]));
    @ assignable cardinality;
    @*/
  public int rankOld(char lowbits) {
    // rank(65535) is the full cardinality (see Container.rank javadoc).
    // Avoid scanning all 1024 words when the cached cardinality is available.
    if (lowbits == 65535) {
      if (cardinality < 0) {
        computeCardinality();
      }
      return cardinality;
    }
    int leftover = (lowbits + 1) & 63;
    int answer = 0;
    /*@ loop_invariant 0 <= k && k <= ((lowbits + 1) / 64)
      @   && answer == (\sum int i; 0 <= i && i < k; PopCount.pc(bitmap[i]))
      @   && 0 <= answer && answer <= 64 * k;
      @ decreasing ((lowbits + 1) / 64) - k;
      @ assignable \strictly_nothing;
      @*/
    for (int k = 0; k < (lowbits + 1) >>> 6; ++k) {
      answer += PopCount.bitCount(bitmap[k]);
    }
    if (leftover != 0) {
      answer += PopCount.bitCount(bitmap[(lowbits + 1) >>> 6] << (64 - leftover));
    }
    return answer;
  }

  /*@ public normal_behavior
    @ requires bitmap != null && 1024 <= bitmap.length && bitmap.length <= 1048576;
    @ requires (\forall int i; 0 <= i && i < bitmap.length; \dl_inLong(bitmap[i]));
    @ requires cardinality < 0 || cardinality == (\sum int i; 0 <= i && i < bitmap.length; PopCount.pc(bitmap[i]));
    @ requires cardinality <= 65536;
    @ requires lowbits != 65535;
    @ ensures \result == (\sum int i; 0 <= i && i < ((lowbits + 1) / 64); PopCount.pc(bitmap[i]))
    @     + (\dl_javaBitwiseAndInt(\dl_javaAddInt(lowbits, 1), 63) != 0
    @          ? PopCount.pc(\dl_javaShiftLeftLong(
    @                bitmap[\dl_javaUnsignedShiftRightInt(\dl_javaAddInt(lowbits, 1), 6)],
    @                \dl_javaSubInt(64, \dl_javaBitwiseAndInt(\dl_javaAddInt(lowbits, 1), 63)))) : 0);
    @ assignable \strictly_nothing;
    @ also
    @ public normal_behavior
    @ requires bitmap != null && 1024 <= bitmap.length && bitmap.length <= 1048576;
    @ requires (\forall int i; 0 <= i && i < bitmap.length; \dl_inLong(bitmap[i]));
    @ requires cardinality < 0 || cardinality == (\sum int i; 0 <= i && i < bitmap.length; PopCount.pc(bitmap[i]));
    @ requires cardinality <= 65536;
    @ requires lowbits == 65535;
    @ ensures \result == (\sum int i; 0 <= i && i < bitmap.length; PopCount.pc(bitmap[i]));
    @ ensures cardinality == (\sum int i; 0 <= i && i < bitmap.length; PopCount.pc(bitmap[i]));
    @ assignable cardinality;
    @*/
  public int rankNew(char lowbits) {
    // rank(65535) is the full cardinality (see Container.rank javadoc).
    // Avoid scanning all 1024 words when the cached cardinality is available.
    if (lowbits == 65535) {
      if (cardinality < 0) {
        computeCardinality();
      }
      return cardinality;
    }
    int leftover = (lowbits + 1) & 63;
    int end = (lowbits + 1) >>> 6;
    int answer;
    if (end > 512 && cardinality >= 0) {
      // the upper half is shorter: subtract the bits in words end.. from the cached cardinality
      answer = cardinality;
      /*@ loop_invariant end + 1 <= k && k <= bitmap.length
        @   && answer == cardinality - (\sum int i; end + 1 <= i && i < k; PopCount.pc(bitmap[i]))
        @   && 0 <= cardinality - answer && cardinality - answer <= 64 * (k - end - 1);
        @ decreasing bitmap.length - k;
        @ assignable \strictly_nothing;
        @*/
      for (int k = end + 1; k < bitmap.length; ++k) {
        answer -= PopCount.bitCount(bitmap[k]);
      }
    } else {
      answer = 0;
      /*@ loop_invariant 0 <= k && k <= end
        @   && answer == (\sum int i; 0 <= i && i < k; PopCount.pc(bitmap[i]))
        @   && 0 <= answer && answer <= 64 * k;
        @ decreasing end - k;
        @ assignable \strictly_nothing;
        @*/
      for (int k = 0; k < end; ++k) {
        answer += PopCount.bitCount(bitmap[k]);
      }
    }
    if (leftover != 0) {
      answer += PopCount.bitCount(bitmap[(lowbits + 1) >>> 6] << (64 - leftover));
    }
    return answer;
  }

}
