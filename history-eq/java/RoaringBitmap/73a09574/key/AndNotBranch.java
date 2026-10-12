public final class AndNotBranch {
    /*@ public normal_behavior
      @ ensures \result == 2;
      @ assignable \nothing;
      @*/
    public static int newBranch() {
        int pos1 = 0;
        int length1 = 2;
        int s1 = 1;
        int s2 = 2;
        long cardinality = 0;
        while (s1 < s2 && pos1 < length1) {
            cardinality += 1;
            s1 = pos1 == 0 ? 1 : 2;
            ++pos1;
        }
        return (int) cardinality;
    }
}
