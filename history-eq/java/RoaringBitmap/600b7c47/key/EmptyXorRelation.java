public final class EmptyXorRelation {
    /*@ public normal_behavior
      @ requires leftSingleton == rightSingleton;
      @ ensures \result;
      @ assignable \nothing;
      @*/
    public static boolean differentAfterXorOfEqualSingletons(
            int leftSingleton, int rightSingleton) {
        // In the unchanged historical XOR branch, an equal-key result is
        // inserted even when the container XOR has cardinality zero.
        int xorCardinality = leftSingleton == rightSingleton ? 0 : 2;
        int storedContainerCount = 1;
        boolean oldIsEmpty = ((long) xorCardinality) == 0L;
        boolean newIsEmpty = storedContainerCount == 0;
        return oldIsEmpty != newIsEmpty;
    }
}
