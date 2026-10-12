public final class Node256LookupRelation {
    /*@ public normal_behavior
      @ requires children != null && children.length == 256 && 0 <= pos && pos < 256;
      @ ensures \result;
      @ assignable \nothing;
      @*/
    public static boolean same(Object[] children, int pos) {
        // pos is the shared result of Byte.toUnsignedInt(key).
        int oldPos = children[pos] != null ? pos : -1;
        Object oldChild = oldPos != -1 ? children[oldPos] : null;
        Object newChild = children[pos];
        return oldChild == newChild;
    }
}
