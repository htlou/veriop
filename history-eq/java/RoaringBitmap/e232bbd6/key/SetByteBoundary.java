public final class SetByteBoundary {
    /*@ public normal_behavior
      @ ensures \result;
      @ assignable \nothing;
      @*/
    public static boolean invalidPositionWitness() {
        int pos = 4;
        int arrayLength = 4;
        boolean oldThrows = pos < 0 || pos >= arrayLength;

        int v = 0x11223344;
        byte bv = (byte) 0x7f;
        int i = ((3 - pos) << 3);
        v &= ~(0xFF << i);
        v |= (bv & 0xFF) << i;
        return oldThrows;
    }
}
