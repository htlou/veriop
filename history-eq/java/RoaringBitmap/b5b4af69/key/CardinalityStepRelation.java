public final class CardinalityStepRelation {
    /*@ public normal_behavior
      @ requires values != null && 0 <= runs && runs <= 32768;
      @ requires values.length >= 2 * runs;
      @ ensures \result;
      @ assignable \nothing;
      @*/
    public static boolean same(char[] values, int runs) {
        int oldSum = runs;
        int newSum = runs;
        int oldK = 0;
        int newK = 1;
        /*@ loop_invariant 0 <= oldK && oldK <= runs;
          @ loop_invariant newK == 2 * oldK + 1;
          @ loop_invariant oldSum == newSum;
          @ assignable \nothing;
          @ decreases runs - oldK;
          @*/
        while (oldK < runs) {
            oldSum += values[2 * oldK + 1];
            newSum += values[newK];
            oldK++;
            newK += 2;
        }
        return oldSum == newSum && newK == 2 * runs + 1;
    }
}
