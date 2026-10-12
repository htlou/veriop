public final class RadixDigitRelation {
    /*@ public normal_behavior
      @ ensures \result;
      @ assignable \nothing;
      @*/
    public static boolean equal(int x) {
        int old16 = (x & 0xFF0000) >>> 16;
        int new16 = (x >>> 16) & 0xFF;
        int old24 = (x & 0xFF000000) >>> 24;
        int new24 = (x >>> 24) & 0xFF;
        return old16 == new16 && old24 == new24;
    }
}
