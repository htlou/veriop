public final class EmptyIntersectionRelation {
    /*@ public normal_behavior
      @ requires masks != null;
      @ ensures \result;
      @ assignable \nothing;
      @*/
    public static boolean sameBitwiseIntersection(long[] masks, long initial) {
        long oldAccumulator = initial;
        long newAccumulator = initial;
        boolean stopped = false;
        /*@ loop_invariant 0 <= i && i <= masks.length;
          @ loop_invariant oldAccumulator == newAccumulator;
          @ loop_invariant stopped ==> oldAccumulator == 0L;
          @ assignable \nothing;
          @ decreases masks.length - i;
          @*/
        for (int i = 0; i < masks.length; ++i) {
            oldAccumulator &= masks[i];
            if (!stopped) {
                newAccumulator &= masks[i];
                if (newAccumulator == 0L) {
                    stopped = true;
                }
            }
        }
        return oldAccumulator == newAccumulator;
    }
}
