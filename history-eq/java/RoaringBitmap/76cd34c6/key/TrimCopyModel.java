public final class TrimCopyModel {
    /*@ public normal_behavior
      @ requires keys != null && values != null;
      @ requires 0 <= size && size <= keys.length && size <= values.length;
      @ ensures \result;
      @*/
    public static boolean sameUsedPrefix(short[] keys, Object[] values, int size) {
        short[] copiedKeys = new short[size];
        Object[] copiedValues = new Object[size];
        int i = 0;
        /*@ loop_invariant 0 <= i && i <= size;
          @ loop_invariant (\forall int j; 0 <= j && j < i;
          @     copiedKeys[j] == keys[j] && copiedValues[j] == values[j]);
          @ assignable copiedKeys[*], copiedValues[*];
          @ decreases size - i;
          @*/
        while (i < size) {
            copiedKeys[i] = keys[i];
            copiedValues[i] = values[i];
            i++;
        }
        int j = 0;
        /*@ loop_invariant 0 <= j && j <= size;
          @ loop_invariant (\forall int k; 0 <= k && k < size;
          @     copiedKeys[k] == keys[k] && copiedValues[k] == values[k]);
          @ assignable \nothing;
          @ decreases size - j;
          @*/
        while (j < size) {
            if (copiedKeys[j] != keys[j] || copiedValues[j] != values[j]) return false;
            j++;
        }
        return copiedKeys.length == size && copiedValues.length == size;
    }
}
