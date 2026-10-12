public final class WitnessProof {
    /*@ public normal_behavior
      @ ensures \result;
      @*/
    public static boolean historicalEqualsDiffer() {
        parent.RunContainer oldOne = new parent.RunContainer(1, 2);
        parent.RunContainer oldTwo = new parent.RunContainer(1, 3);
        child.RunContainer newOne = new child.RunContainer(1, 2);
        child.RunContainer newTwo = new child.RunContainer(1, 3);
        return !oldOne.equalsRun(oldTwo) && newOne.equalsRun(newTwo);
    }
}
