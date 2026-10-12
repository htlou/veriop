public final class IorLengthBoundary {
    /*@ public normal_behavior
      @ ensures \result;
      @ assignable \nothing;
      @*/
    public static boolean unequalAtFirstRead() {
        long[] oldLeft = new long[1];
        long[] oldRight = new long[0];
        boolean oldThrows = false;
        try {
            for (int k = 0; k < oldLeft.length; k++) {
                long w = oldLeft[k] | oldRight[k];
                oldLeft[k] = w;
            }
        } catch (ArrayIndexOutOfBoundsException e) {
            oldThrows = true;
        }

        long[] newLeft = new long[1];
        long[] newRight = new long[0];
        for (int k = 0; k < newLeft.length & k < newRight.length; k++) {
            newLeft[k] |= newRight[k];
        }
        return oldThrows && newLeft[0] == 0;
    }
}
