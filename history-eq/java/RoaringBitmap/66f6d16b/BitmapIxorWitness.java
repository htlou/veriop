// Source-audited extraction of the two historical ixor(BitmapContainer) bodies.
public final class BitmapIxorWitness {
    private static final int DEFAULT_MAX_SIZE = 4096;
    private final long[] bitmap;
    private int cardinality;

    private BitmapIxorWitness(long[] bitmap, int cardinality) {
        this.bitmap = bitmap;
        this.cardinality = cardinality;
    }

    private static final class ArrayResult {
        private final char[] content;
        private int cardinality;

        private ArrayResult(int capacity) { content = new char[capacity]; }
    }

    private static void fillArrayXOR(char[] container, long[] bitmap1, long[] bitmap2) {
        int pos = 0;
        if (bitmap1.length != bitmap2.length) throw new IllegalArgumentException("not supported");
        for (int k = 0; k < bitmap1.length; ++k) {
            long bitset = bitmap1[k] ^ bitmap2[k];
            while (bitset != 0) {
                container[pos++] = (char) (k * 64 + Long.numberOfTrailingZeros(bitset));
                bitset &= bitset - 1;
            }
        }
    }

    private void computeCardinality() {
        cardinality = 0;
        for (int k = 0; k < bitmap.length; k++) cardinality += Long.bitCount(bitmap[k]);
    }

    private ArrayResult toArrayContainer() {
        ArrayResult ac = new ArrayResult(cardinality);
        if (cardinality != 0) {
            int pos = 0;
            for (int k = 0; k < bitmap.length; k++) {
                long bits = bitmap[k];
                while (bits != 0) {
                    ac.content[pos++] = (char) (k * 64 + Long.numberOfTrailingZeros(bits));
                    bits &= bits - 1;
                }
            }
        }
        ac.cardinality = cardinality;
        return ac;
    }

    private Object oldIxor(BitmapIxorWitness b2) {
        int newCardinality = 0;
        for (int k = 0; k < this.bitmap.length; ++k) {
            newCardinality += Long.bitCount(this.bitmap[k] ^ b2.bitmap[k]);
        }
        if (newCardinality > DEFAULT_MAX_SIZE) {
            for (int k = 0; k < this.bitmap.length; ++k) {
                this.bitmap[k] = this.bitmap[k] ^ b2.bitmap[k];
            }
            this.cardinality = newCardinality;
            return this;
        }
        ArrayResult ac = new ArrayResult(newCardinality);
        fillArrayXOR(ac.content, this.bitmap, b2.bitmap);
        ac.cardinality = newCardinality;
        return ac;
    }

    private Object newIxor(BitmapIxorWitness b2) {
        for (int k = 0; k < this.bitmap.length & k < b2.bitmap.length; ++k) {
            this.bitmap[k] ^= b2.bitmap[k];
        }
        computeCardinality();
        if (cardinality > DEFAULT_MAX_SIZE) return this;
        return toArrayContainer();
    }

    public static void main(String[] args) {
        long[] dense = new long[1024];
        for (int i = 0; i < 78; i++) dense[i] = -1L;
        dense[78] = 0xffL; // 78*64+8 = 5000 set bits.
        BitmapIxorWitness right = new BitmapIxorWitness(dense.clone(), 5000);
        BitmapIxorWitness oldLeft = new BitmapIxorWitness(dense.clone(), 5000);
        BitmapIxorWitness newLeft = new BitmapIxorWitness(dense.clone(), 5000);
        Object oldResult = oldLeft.oldIxor(right);
        Object newResult = newLeft.newIxor(right);
        int oldResultCard = ((ArrayResult) oldResult).cardinality;
        int newResultCard = ((ArrayResult) newResult).cardinality;
        System.out.printf("input_bits=5000 old_result=%d new_result=%d old_input=%d new_input=%d old_bit0=%b new_bit0=%b%n",
                oldResultCard, newResultCard, oldLeft.cardinality, newLeft.cardinality,
                (oldLeft.bitmap[0] & 1L) != 0, (newLeft.bitmap[0] & 1L) != 0);
        if (oldResultCard != 0 || newResultCard != 0 || oldLeft.cardinality != 5000
                || newLeft.cardinality != 0 || oldLeft.bitmap[0] == newLeft.bitmap[0]) {
            throw new AssertionError("witness failed");
        }
    }
}
