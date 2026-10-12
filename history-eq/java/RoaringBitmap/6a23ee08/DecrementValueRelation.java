public final class DecrementValueRelation {
  /*@ public normal_behavior
    @ requires oldValues != null && newValues != null && oldValues != newValues;
    @ requires oldValues.length >= 1 && newValues.length >= 1;
    @ requires oldValues[0] == newValues[0];
    @ ensures oldValues[0] == newValues[0];
    @ assignable oldValues[0], newValues[0];
    @*/
  public static void sameFirstValueAfterDecrement(char[] oldValues, char[] newValues) {
    int index = 0; // Exact historical call is decrementValue(0).
    oldValues[2 * index] = (char) (oldValues[2 * index] - 1);
    newValues[0] = (char) (newValues[0] - 1);
  }
}
