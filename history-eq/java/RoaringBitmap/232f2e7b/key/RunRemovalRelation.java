public final class RunRemovalRelation {
    /*@ public normal_behavior
      @ requires oldCardinality >= 1 && oldCardinality <= 65536;
      @ requires contains ? newCardinality == oldCardinality - 1
      @                   : newCardinality == oldCardinality;
      @ ensures \result;
      @ assignable \nothing;
      @*/
    public static boolean sameResultAndStorageDecision(
            int oldCardinality, int newCardinality, boolean contains) {
        // Parent: compare cardinalities after remove().
        boolean oldRemoved = newCardinality != oldCardinality;
        boolean oldKeepContainer = newCardinality > 0;
        // Child: contains() gates remove(), then isEmpty() decides storage.
        boolean newRemoved = contains;
        boolean newKeepContainer = newCardinality != 0;
        return oldRemoved == newRemoved
                && (!newRemoved || oldKeepContainer == newKeepContainer);
    }
}
