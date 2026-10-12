public final class RunCardinalitySum {
    /*@ public normal_behavior
      @ requires values != null && 0 <= runs && runs <= 32768;
      @ requires values.length >= 2 * runs;
      @ ensures \result;
      @ assignable \nothing;
      @*/
    public static boolean same(char[] values, int runs) {
        int oldSum = runs;
        int newSum = 0;
        int r = 0;
        /*@ loop_invariant 0 <= r && r <= runs;
          @ loop_invariant oldSum == newSum + runs - r;
          @ assignable \nothing;
          @ decreases runs - r;
          @*/
        while (r < runs) {
            int start = values[2 * r];
            int length = values[2 * r + 1];
            int end = start + length + 1;
            oldSum += length;
            newSum += end - start;
            r++;
        }
        return oldSum == newSum;
    }
}
