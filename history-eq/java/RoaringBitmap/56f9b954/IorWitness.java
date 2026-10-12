import java.nio.ShortBuffer;
import org.roaringbitmap.buffer.MappeableArrayContainer;

public final class IorWitness {
  public static void main(String[] args) {
    ShortBuffer supplied = ShortBuffer.wrap(new short[] {1, 2});
    supplied.position(1);
    MappeableArrayContainer left = new MappeableArrayContainer(supplied, 2);
    MappeableArrayContainer right = new MappeableArrayContainer(3, 4);
    left.ior(right);
    System.out.println("supplied.position=" + supplied.position()
        + " cardinality=" + left.getCardinality()
        + " has1=" + left.contains((short) 1)
        + " has2=" + left.contains((short) 2)
        + " has3=" + left.contains((short) 3));
  }
}
