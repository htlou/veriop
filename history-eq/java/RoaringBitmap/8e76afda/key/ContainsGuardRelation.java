public final class ContainsGuardRelation {
    /*@ public normal_behavior
      @ requires receiverCardinality == -2147483648 && subsetCardinality == 1 && scanResult;
      @ ensures \result;
      @ assignable \nothing;
      @*/
    public static boolean different(int receiverCardinality, int subsetCardinality,
                                    boolean scanResult) {
        boolean oldResult = subsetCardinality > receiverCardinality ? false : scanResult;
        boolean newResult = scanResult;
        return oldResult != newResult;
    }
}
