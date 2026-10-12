public final class NettyHashRelation {
    private int[] keys;

    /*@ public normal_behavior
      @ requires keys != null && keys.length > 0;
      @ ensures \result;
      @ assignable \nothing;
      @*/
    public boolean hashIndexEqual(int key) {
        int length = keys.length;
        int oldResult = (key % length + length) % length;
        int newResult = (key % keys.length + keys.length) % keys.length;
        return oldResult == newResult;
    }
}
