public final class Node16FirstByteRelation {
    /*@ public normal_behavior
      @ requires 0 <= i && i < 8;
      @ ensures \result;
      @*/
    public static boolean same(long firstV, int i) {
        // Exact byte layout of the unchanged LongUtils.toBDBytes(firstV).
        byte[] oldBytes = new byte[8];
        oldBytes[7] = (byte) firstV;
        oldBytes[6] = (byte) (firstV >> 8);
        oldBytes[5] = (byte) (firstV >> 16);
        oldBytes[4] = (byte) (firstV >> 24);
        oldBytes[3] = (byte) (firstV >> 32);
        oldBytes[2] = (byte) (firstV >> 40);
        oldBytes[1] = (byte) (firstV >> 48);
        oldBytes[0] = (byte) (firstV >> 56);

        byte oldByte = oldBytes[i];
        byte newByte = (byte) (firstV >>> ((7 - i) << 3));
        return oldByte == newByte;
    }
}
