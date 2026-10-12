import java.lang.reflect.Field;
import org.roaringbitmap.RunContainer;
import org.roaringbitmap.longlong.HighLowContainer;
import org.roaringbitmap.longlong.Roaring64Bitmap;

public final class StoredEmptyWitness {
    public static void main(String[] args) throws Exception {
        Roaring64Bitmap bitmap = new Roaring64Bitmap();
        Field field = Roaring64Bitmap.class.getDeclaredField("highLowContainer");
        field.setAccessible(true);
        HighLowContainer highLow = (HighLowContainer) field.get(bitmap);
        RunContainer empty = new RunContainer();
        if (!empty.isEmpty()) throw new AssertionError("expected empty container");
        highLow.put(new byte[6], empty);
        if (highLow.isEmpty()) throw new AssertionError("expected stored container");
        System.out.println("stored-empty cardinality=" + bitmap.getLongCardinality()
                + " isEmpty=" + bitmap.isEmpty());
    }
}
