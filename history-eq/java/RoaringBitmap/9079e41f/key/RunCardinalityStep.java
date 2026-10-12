public final class RunCardinalityStep {
    /*@ public normal_behavior
      @ requires 0 <= start && start <= 65535;
      @ requires 0 <= length && length <= 65535;
      @ ensures \result;
      @ assignable \nothing;
      @*/
    public static boolean same(int start, int length) {
        int end = start + length + 1;
        int oldContribution = length + 1;
        int newContribution = end - start;
        return oldContribution == newContribution;
    }
}
