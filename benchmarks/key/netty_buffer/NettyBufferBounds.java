public final class NettyBufferBounds {
    /*@ public normal_behavior
      @ requires 0 <= index && index <= capacity;
      @ requires 0 <= fieldLength && fieldLength <= capacity;
      @ requires capacity <= 0x3fffffff;
      @ ensures \result <==> index + fieldLength > capacity;
      @ assignable \nothing;
      @*/
    private static boolean isOutOfBoundsTrustedCapacity(int index, int fieldLength, int capacity) {
        // keep these as branches since would make it easier to be constant-folded
        return index < 0 || fieldLength < 0 || index + fieldLength < 0 || index + fieldLength > capacity;
    }
}
