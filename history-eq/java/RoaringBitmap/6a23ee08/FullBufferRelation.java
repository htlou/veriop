public final class FullBufferRelation {
  /*@ public normal_behavior
    @ requires oldValues != null && newValues != null && oldValues != newValues;
    @ requires oldValues.length == newValues.length && oldValues.length >= 1;
    @ requires (\forall int i; 0 <= i && i < oldValues.length;
    @                       oldValues[i] == newValues[i]);
    @ ensures (\forall int i; 0 <= i && i < oldValues.length;
    @                      oldValues[i] == newValues[i]);
    @ assignable oldValues[0], newValues[0];
    @*/
  public static void sameBufferAfterDecrement(char[] oldValues, char[] newValues) {
    int index = 0;
    oldValues[2 * index] = (char) (oldValues[2 * index] - 1);
    newValues[0] = (char) (newValues[0] - 1);
  }
}
