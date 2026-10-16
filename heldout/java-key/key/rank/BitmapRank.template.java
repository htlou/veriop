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
  // COMPUTE_CARDINALITY

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
  // RANK_OLD

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
  // RANK_NEW

}
