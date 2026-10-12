// Source-audited extraction of the historical BitmapContainer.ior(BitmapContainer)
// methods. The public constructor accepts either backing-array length.
public final class BitmapIorWitness {
    private final long[] bitmap;
    private int cardinality;

    public BitmapIorWitness(long[] bitmap, int cardinality) {
        this.bitmap = bitmap;
        this.cardinality = cardinality;
    }

    private void computeCardinality() {
        cardinality = 0;
        for (long word : bitmap) {
            cardinality += Long.bitCount(word);
        }
    }

    private boolean isFull() {
        return cardinality == 65536;
    }

    public BitmapIorWitness oldIor(BitmapIorWitness b2) {
        this.cardinality = 0;
        for (int k = 0; k < this.bitmap.length; k++) {
            long w = this.bitmap[k] | b2.bitmap[k];
            this.bitmap[k] = w;
            this.cardinality += Long.bitCount(w);
        }
        if (isFull()) return new BitmapIorWitness(new long[1024], 65536);
        return this;
    }

    public BitmapIorWitness newIor(BitmapIorWitness b2) {
        for (int k = 0; k < this.bitmap.length & k < b2.bitmap.length; k++) {
            this.bitmap[k] |= b2.bitmap[k];
        }
        computeCardinality();
        if (isFull()) return new BitmapIorWitness(new long[1024], 65536);
        return this;
    }

    public static void main(String[] args) {
        BitmapIorWitness right = new BitmapIorWitness(new long[0], 0);
        String oldOutcome;
        try {
            new BitmapIorWitness(new long[1], 0).oldIor(right);
            oldOutcome = "returned";
        } catch (ArrayIndexOutOfBoundsException e) {
            oldOutcome = e.getClass().getSimpleName();
        }
        BitmapIorWitness newer = new BitmapIorWitness(new long[1], 0).newIor(right);
        String newOutcome = "returned cardinality=" + newer.cardinality;
        System.out.println("leftWords=1 rightWords=0 old=" + oldOutcome + " new=" + newOutcome);
        if (!oldOutcome.equals("ArrayIndexOutOfBoundsException") || newer.cardinality != 0) {
            throw new AssertionError("witness failed");
        }
    }
}
