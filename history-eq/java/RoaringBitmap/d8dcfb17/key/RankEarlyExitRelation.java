public final class RankEarlyExitRelation {
    /*@ public normal_behavior
      @ requires keys != null && cardinalities != null && ranks != null;
      @ requires keys.length == cardinalities.length && keys.length == ranks.length;
      @ requires 0 <= startIndex && startIndex <= keys.length;
      @ requires (\forall int j; 0 <= j && j + 1 < keys.length; keys[j] < keys[j + 1]);
      @ ensures \result;
      @ assignable \nothing;
      @*/
    public static boolean sameRank(char[] keys, int[] cardinalities,
                                   int[] ranks, char queryHigh,
                                   int startIndex, long initialSize) {
        long oldSize = initialSize;
        long newSize = initialSize;
        boolean newStopped = false;
        /*@ loop_invariant startIndex <= i && i <= keys.length;
          @ loop_invariant oldSize == newSize;
          @ loop_invariant newStopped ==> i > 0 && keys[i - 1] > queryHigh;
          @ assignable \nothing;
          @ decreases keys.length - i;
          @*/
        for (int i = startIndex; i < keys.length; i++) {
            char key = keys[i];
            if (key < queryHigh) {
                oldSize += cardinalities[i];
                if (!newStopped) {
                    newSize += cardinalities[i];
                }
            } else if (key == queryHigh) {
                if (newStopped) {
                    return false;
                }
                return oldSize + ranks[i] == newSize + ranks[i];
            } else {
                newStopped = true;
            }
        }
        return oldSize == newSize;
    }
}
