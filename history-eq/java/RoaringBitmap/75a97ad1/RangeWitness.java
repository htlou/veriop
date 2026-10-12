import java.util.BitSet;
import org.roaringbitmap.RoaringBitSet;

public final class RangeWitness {
    private static void check(int[] values, int from, int to) {
        RoaringBitSet bitmap = new RoaringBitSet();
        for (int value : values) bitmap.set(value);
        try {
            BitSet result = bitmap.get(from, to);
            System.out.println(from + ":" + to + " => " + result + ", cardinality=" + result.cardinality());
        } catch (Throwable failure) {
            System.out.println(from + ":" + to + " => " + failure.getClass().getName()
                    + ":" + failure.getMessage());
        }
    }

    public static void main(String[] args) {
        int[] values = {0, 5, 7};
        check(values, -1, 0);
        check(values, 1, 0);
        check(values, 0, -1);
        check(values, 0, 0);
        check(values, 0, 1);
        check(values, 5, 8);
        check(values, 8, 9);
    }
}
