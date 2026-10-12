public class CapacityConstructorRelation {
  /*@ public normal_behavior
    @ requires 0 <= capacity && capacity <= 65536;
    @ requires 0 <= index;
    @ ensures \result;
    @*/
  public static boolean sameEmptyArray(int capacity, int index) {
    // Both historical call chains expand to the same RoaringArray(int) body.
    char[] oldKeys = new char[capacity];
    Object[] oldValues = new Object[capacity];
    int oldSize = 0;
    char[] newKeys = new char[capacity];
    Object[] newValues = new Object[capacity];
    int newSize = 0;
    boolean same = oldSize == newSize
        && oldKeys.length == newKeys.length
        && oldValues.length == newValues.length;
    if (index < capacity) {
      same = same && oldKeys[index] == newKeys[index]
          && oldValues[index] == newValues[index];
    }
    return same;
  }
}
