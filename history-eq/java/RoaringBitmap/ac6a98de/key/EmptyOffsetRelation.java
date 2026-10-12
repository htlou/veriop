public final class EmptyOffsetRelation {
  /*@ public normal_behavior
    @ ensures \result;
    @ assignable \nothing;
    @*/
  public static boolean oldReturnsAndNewThrows() {
    int oldCardinality = 0;
    int oldLow = 0;
    int oldHigh = 0;
    for (int k = 0; k < oldCardinality; k++) {
      oldLow++;
    }
    boolean oldReturnsTwoEmpty = oldLow == 0 && oldHigh == 0;

    try {
      int newCardinality = 0;
      // The exact historical guard throws NoSuchElementException; RuntimeException
      // models the exceptional outcome because KeY's JDK lacks that subtype.
      if (newCardinality == 0) throw new RuntimeException();
      return false;
    } catch (RuntimeException expected) {
      return oldReturnsTwoEmpty;
    }
  }
}
