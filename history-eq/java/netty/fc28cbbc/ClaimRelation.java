public class ClaimRelation {
  /*@ public normal_behavior
    @ requires !polled || initialState == 1;
    @ ensures \result;
    @*/
  public static boolean sameOnePoll(boolean polled, int initialState) {
    int oldState = initialState;
    boolean oldReturnsHandle = false;
    // Old availableToClaim(): in a sequential/no-interference execution,
    // the CAS succeeds exactly when the polled handle is AVAILABLE.
    if (polled && oldState == 1) {
      oldState = 0;
      oldReturnsHandle = true;
    }

    int newState = initialState;
    boolean newReturnsHandle = polled;
    if (polled) {
      assert newState == 1;
      newState = 0;
    }
    return oldReturnsHandle == newReturnsHandle && oldState == newState;
  }
}
