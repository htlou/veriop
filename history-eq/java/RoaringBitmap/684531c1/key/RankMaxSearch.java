public final class RankMaxSearch {
  /*@ public normal_behavior
    @ requires array != null && begin == 0 && 0 <= end && end <= 32 && end <= array.length;
    @ requires k == 65535;
    @ requires (\forall int i; 0 <= i && i + 1 < end; array[i] < array[i + 1]);
    @ ensures end == 0 || array[end - 1] < k ? \result == -end - 1 : \result == end - 1;
    @ assignable \nothing;
    @*/
  public static int hybridUnsignedBinarySearch(
      final char[] array, final int begin, final int end, final char k) {
    if ((end > 0) && ((array[end - 1]) < (int) k)) {
      return -end - 1;
    }
    int low = begin;
    int high = end - 1;
    while (low + 32 <= high) {
      final int middleIndex = (low + high) >>> 1;
      final int middleValue = (array[middleIndex]);
      if (middleValue < (int) k) {
        low = middleIndex + 1;
      } else if (middleValue > (int) k) {
        high = middleIndex - 1;
      } else {
        return middleIndex;
      }
    }
    int x = low;
    /*@ loop_invariant array != null && 0 < end && end <= 32 && end <= array.length;
      @ loop_invariant k == 65535 && array[end - 1] == k;
      @ loop_invariant (\forall int i; 0 <= i && i + 1 < end; array[i] < array[i + 1]);
      @ loop_invariant 0 <= x && x <= end && high == end - 1;
      @ loop_invariant (\forall int i; 0 <= i && i < x; array[i] < k);
      @ loop_assignable \nothing;
      @ decreases end - x;
      @*/
    for (; x <= high; ++x) {
      final int val = (array[x]);
      if (val >= (int) k) {
        if (val == (int) k) {
          return x;
        }
        break;
      }
    }
    return -(x + 1);
  }
}
