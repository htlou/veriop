import java.util.Arrays;

public final class TrimPrefixRelation {
    /*@ public normal_behavior
      @ requires keys != null && values != null;
      @ requires 0 <= size && size <= keys.length && size <= values.length;
      @ ensures \result;
      @ assignable \nothing;
      @*/
    public static boolean same(short[] keys, Object[] values, int size) {
        short[] newKeys = Arrays.copyOf(keys, size);
        Object[] newValues = Arrays.copyOf(values, size);
        if (newKeys.length != size || newValues.length != size) return false;
        int i = 0;
        /*@ loop_invariant 0 <= i && i <= size;
          @ loop_invariant (\forall int j; 0 <= j && j < i;
          @     newKeys[j] == keys[j] && newValues[j] == values[j]);
          @ assignable \nothing;
          @ decreases size - i;
          @*/
        while (i < size) {
            if (newKeys[i] != keys[i] || newValues[i] != values[i]) return false;
            i++;
        }
        return true;
    }
}
