public final class IxorMutationRelation {
    /*@ public normal_behavior
      @ requires word != 0 && (word ^ word) == 0;
      @ ensures \result;
      @ assignable \nothing;
      @*/
    public static boolean parentAndChildDifferOnRetainedInput(long word) {
        long rightWord = word;
        long parentWord = word;
        long xorWord = parentWord ^ rightWord;
        // The standard Long.bitCount(0L) result is 0 on this equal-word path.
        int parentXorCardinality = 0;
        boolean parentReturnsArray = parentXorCardinality <= 4096;
        // In this branch, the historical parent fills a new ArrayContainer.
        long childWord = word;
        childWord ^= rightWord;
        int childXorCardinality = 0;
        boolean childReturnsArray = childXorCardinality <= 4096;
        return xorWord == 0 && childWord == 0 && parentReturnsArray && childReturnsArray
                && parentWord != childWord;
    }
}
