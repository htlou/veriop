public final class BitmapPrefixCopyRelation {
    /*@ public normal_behavior
      @ requires source != null && source.length == 1024;
      @ requires 0 <= usedwords && usedwords <= source.length;
      @ ensures \result;
      @*/
    public static boolean sameWords(long[] source, int usedwords) {
        long[] oldResult = new long[source.length];
        long[] newResult = new long[source.length];
        int i = 0;
        /*@ loop_invariant 0 <= i && i <= source.length;
          @ loop_invariant (\forall int j; 0 <= j && j < i; oldResult[j] == source[j]);
          @ loop_invariant (\forall int j; i <= j && j < source.length; oldResult[j] == 0);
          @ assignable oldResult[*];
          @ decreases source.length - i;
          @*/
        while (i < source.length) {
            oldResult[i] = source[i];
            i++;
        }

        int todelete = source.length - usedwords;
        int k = 0;
        /*@ loop_invariant 0 <= k && k <= todelete;
          @ loop_invariant (\forall int j; 0 <= j && j < source.length - k;
          @     oldResult[j] == source[j]);
          @ loop_invariant (\forall int j; source.length - k <= j && j < source.length;
          @     oldResult[j] == 0);
          @ assignable oldResult[*];
          @ decreases todelete - k;
          @*/
        while (k < todelete) {
            oldResult[oldResult.length - 1 - k] = 0;
            k++;
        }

        int p = 0;
        /*@ loop_invariant 0 <= p && p <= usedwords;
          @ loop_invariant (\forall int j; 0 <= j && j < p; newResult[j] == source[j]);
          @ loop_invariant (\forall int j; p <= j && j < source.length; newResult[j] == 0);
          @ assignable newResult[*];
          @ decreases usedwords - p;
          @*/
        while (p < usedwords) {
            newResult[p] = source[p];
            p++;
        }

        int q = 0;
        /*@ loop_invariant 0 <= q && q <= source.length;
          @ loop_invariant (\forall int j; 0 <= j && j < source.length;
          @     oldResult[j] == newResult[j]);
          @ assignable \nothing;
          @ decreases source.length - q;
          @*/
        while (q < source.length) {
            if (oldResult[q] != newResult[q]) return false;
            q++;
        }
        return true;
    }
}
