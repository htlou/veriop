public final class RetainedStateRelation {
  /*@ public normal_behavior
    @ ensures \result;
    @ assignable \nothing;
    @*/
  public static boolean changedMethodsMutateRetainedInput() {
    // Valid two-element ArrayContainer [1,5] and one-run RunContainer [5,6).
    int oldAndCardinality = 2;
    int newAndFirst = 1;
    int newAndSecond = 5;
    int andRemoved = 0;
    if (newAndFirst != 5) andRemoved++;
    if (newAndSecond == 5) newAndFirst = newAndSecond;
    int newAndCardinality = 2 - andRemoved;

    int oldAndNotCardinality = 2;
    int newAndNotFirst = 1;
    int newAndNotSecond = 5;
    int andNotRemoved = 0;
    if (newAndNotFirst != 5) newAndNotFirst = 1;
    if (newAndNotSecond == 5) andNotRemoved++;
    int newAndNotCardinality = 2 - andNotRemoved;

    return oldAndCardinality == 2 && newAndCardinality == 1 && newAndFirst == 5
        && oldAndNotCardinality == 2 && newAndNotCardinality == 1 && newAndNotFirst == 1;
  }

  /*@ public normal_behavior
    @ ensures \result;
    @ assignable \nothing;
    @*/
  public static boolean emptyRunIteratorFalseMatchAtZero() {
    // Both historical empty-run iterators leave base, maxlength, and le at zero.
    int base = 0;
    int maxlength = 0;
    int le = 0;
    int pos = 0;
    int nbrruns = 0;
    char minval = 0;
    if (base + maxlength < minval) return false;
    if (base > minval) return false;
    le = minval - base;
    return pos >= nbrruns && (char) (base + le) == minval;
  }
}
