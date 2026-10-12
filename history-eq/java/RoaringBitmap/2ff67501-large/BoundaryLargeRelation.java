public final class BoundaryLargeRelation {
  /*@ public normal_behavior
    @ requires source != null;
    @ requires source.length <= newCapacity && newCapacity <= 500000;
    @ assignable \nothing;
    @ ensures \result.length == newCapacity;
    @ ensures (\forall int i; 0 <= i && i < source.length; \result[i] == source[i]);
    @*/
  public static char[] copyPrefix(char[] source, int newCapacity) {
    char[] copied = new char[newCapacity];
    /*@ loop_invariant 0 <= i && i <= source.length;
      @ loop_invariant source != null;
      @ loop_invariant source.length <= newCapacity && newCapacity <= 500000;
      @ loop_invariant copied.length == newCapacity;
      @ loop_invariant copied != source;
      @ loop_invariant (\forall int j; 0 <= j && j < i; copied[j] == source[j]);
      @ loop_assignable copied[*];
      @ decreases source.length - i;
      @*/
    for (int i = 0; i < source.length; i++) {
      copied[i] = source[i];
    }
    return copied;
  }

  /*@ public normal_behavior
    @ requires keys != null;
    @ requires 0 <= size && 0 <= extra && size + extra == keys.length;
    @ requires 1024 <= keys.length && keys.length <= 100000;
    @ requires 5 * keys.length / 4 >= keys.length;
    @ requires 5 * keys.length / 4 <= 500000;
    @ requires 0 <= index && index < size;
    @ ensures \result;
    @*/
  public static boolean sameUsedKeyAtBoundary(char[] keys, int size, int extra, int index) {
    int newCapacity;
    if (keys.length < 1024) {
      newCapacity = 2 * (size + extra);
    } else {
      newCapacity = 5 * (size + extra) / 4;
    }
    char[] oldKeys = copyPrefix(keys, newCapacity);
    char[] newKeys = keys;
    return oldKeys[index] == newKeys[index]
        && oldKeys.length >= size + extra && newKeys.length >= size + extra;
  }
}
