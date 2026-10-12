public final class ValueBoundaryRelation {
  /*@ public normal_behavior
    @ requires source != null;
    @ requires source.length <= newCapacity && newCapacity <= 500000;
    @ assignable \nothing;
    @ ensures \result.length == newCapacity;
    @ ensures (\forall int i; 0 <= i && i < source.length; \result[i] == source[i]);
    @*/
  public static Object[] copyPrefix(Object[] source, int newCapacity) {
    Object[] copied = new Object[newCapacity];
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
    @ requires values != null;
    @ requires 0 <= size && 0 <= extra && size + extra == values.length;
    @ requires values.length < 1024;
    @ requires 0 <= index && index < size;
    @ ensures \result;
    @*/
  public static boolean sameUsedValueAtSmallBoundary(Object[] values, int size, int extra, int index) {
    int newCapacity = 2 * (size + extra);
    Object[] oldValues = copyPrefix(values, newCapacity);
    Object[] newValues = values;
    return oldValues[index] == newValues[index]
        && oldValues.length >= size + extra && newValues.length >= size + extra;
  }

  /*@ public normal_behavior
    @ requires values != null;
    @ requires 0 <= size && 0 <= extra && size + extra == values.length;
    @ requires 1024 <= values.length && values.length <= 100000;
    @ requires 5 * values.length / 4 >= values.length;
    @ requires 0 <= index && index < size;
    @ ensures \result;
    @*/
  public static boolean sameUsedValueAtLargeBoundary(Object[] values, int size, int extra, int index) {
    int newCapacity = 5 * (size + extra) / 4;
    Object[] oldValues = copyPrefix(values, newCapacity);
    Object[] newValues = values;
    return oldValues[index] == newValues[index]
        && oldValues.length >= size + extra && newValues.length >= size + extra;
  }
}
