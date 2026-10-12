public final class AddOffsetGuardRelation {
    /*@ public normal_behavior
      @ ensures \result;
      @ assignable \nothing;
      @*/
    public static boolean currentKeyEquivalent(int key) {
        boolean oldCurrent = key >= 0 && key <= 0xFFFF;
        boolean skip = key + 1 < 0 || key > 0xFFFF;
        boolean newCurrent = !skip && key >= 0;
        return oldCurrent == newCurrent;
    }

    /*@ public normal_behavior
      @ ensures \result;
      @ assignable \nothing;
      @*/
    public static boolean nextKeyEquivalent(int key) {
        boolean oldNext = key + 1 >= 0 && key + 1 <= 0xFFFF;
        boolean skip = key + 1 < 0 || key > 0xFFFF;
        boolean newNext = !skip && key + 1 <= 0xFFFF;
        return oldNext == newNext;
    }
}
