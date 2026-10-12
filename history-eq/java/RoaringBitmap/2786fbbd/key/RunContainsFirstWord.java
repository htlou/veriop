public final class RunContainsFirstWord {
    /*@ public normal_behavior
      @ requires word == 0L && start > 64 && runCount == 1;
      @ ensures \result;
      @ assignable \nothing;
      @*/
    public static boolean different(long word, int start, int runCount) {
        // At the zero first word the historical inner loop is skipped.
        boolean oldHasNoRemainingBit = word == 0L;

        // Java Long.numberOfTrailingZeros(0L) is 64; KeY does not reduce the library call.
        long newFirstBit = 64L;
        boolean newRejects = newFirstBit < start;
        return oldHasNoRemainingBit && newRejects;
    }
}
