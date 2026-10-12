public final class SparseBranch {
  /*@ public normal_behavior
    @ ensures \result == 1;
    @*/
  public static int descendingKeyWitness() {
    short currentKey = 1;
    short key = 0; // historical Util.highbits(1)
    int oldAction = 0;
    if (key != currentKey) {
      if (0 - 1 < 0) {
        oldAction = 1; // historical throw IllegalStateException
      }
    }
    int newAction = 0;
    if (key != currentKey) {
      if (0 - 1 < 0) {
        newAction = 2; // historical underlying.add(value); return
      }
    }
    return oldAction == 1 && newAction == 2 ? 1 : 0;
  }
}
