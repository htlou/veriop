public final class OrNotRetainedInput {
  /*@ public normal_behavior
    @ requires 0 < start && start <= 65535;
    @ requires 0 <= length && length < 65535;
    @ ensures \result;
    @ assignable \nothing;
    @*/
  public static boolean differsOnNonfinalFullRun(int start, int length) {
    int oldStart = start;
    int oldLength = length;
    int newStart = start;
    int newLength = length;
    // On the source's key != maxKey branch, old ior(full) rewrites the retained run.
    oldStart = 0;
    oldLength = 65535;
    // The child assigns a fresh full container to the result and leaves input untouched.
    return oldStart != newStart || oldLength != newLength;
  }
}
