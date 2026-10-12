public final class RoaringIterate {
  /*@ public normal_behavior
    @ requires array != null && 0 <= pos && pos <= length && length <= array.length;
    @ ensures \old(pos) <= \result && \result <= length;
    @ ensures \result == length || array[\result] >= min;
    @ ensures (\forall int i; \old(pos) <= i && i < \result; array[i] < min);
    @ assignable \nothing;
    @*/
  public static int iterateUntil(char[] array, int pos, int length, int min) {
    /*@ loop_invariant array != null && \old(pos) <= pos && pos <= length && length <= array.length;
      @ loop_invariant (\forall int i; \old(pos) <= i && i < pos; array[i] < min);
      @ loop_writes \nothing;
      @ decreases length - pos;
      @*/
    while (pos < length && (array[pos]) < min) {
      pos++;
    }
    return pos;
  }
}
