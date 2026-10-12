public final class IorGuardRelation {
    /*@ public normal_behavior
      @ requires left != null && right != null;
      @ requires left.length == 1 && right.length == 0;
      @ ensures \result;
      @ assignable \nothing;
      @*/
    public static boolean sourceGuardsDiverge(long[] left, long[] right) {
        int k = 0;
        boolean oldEnters = k < left.length;
        boolean newEnters = k < left.length & k < right.length;
        boolean oldReadOutOfBounds = k >= right.length;
        return oldEnters && !newEnters && oldReadOutOfBounds;
    }
}
