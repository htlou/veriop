public final class AppendFastPathRelation {
    /*@ public normal_behavior
      @ requires content != null;
      @ requires 0 <= cardinality && cardinality <= 4095;
      @ requires cardinality < content.length;
      @ requires cardinality == 0 || (x & 0xFFFF) > (content[cardinality - 1] & 0xFFFF);
      @ ensures \result;
      @ assignable \nothing;
      @*/
    public static boolean sameAppendIndex(short[] content, int cardinality, short x) {
        int ikey = x & 0xFFFF;
        int loc;
        if (cardinality > 0 && (content[cardinality - 1] & 0xFFFF) < ikey) {
            loc = -cardinality - 1;
        } else {
            // Under the precondition, only cardinality == 0 can reach this
            // branch. Both historical search implementations then set
            // low=0, high=-1 and return -(low+1).
            if (cardinality != 0) return false;
            loc = -1;
        }
        return loc == -cardinality - 1
                && -loc - 1 == cardinality
                && cardinality + loc + 1 == 0;
    }
}
