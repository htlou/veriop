import java.nio.ShortBuffer;
import org.roaringbitmap.buffer.MappeableArrayContainer;

public final class PositionWitness {
  public static void main(String[] args) {
    ShortBuffer supplied = ShortBuffer.wrap(new short[] {1, 2});
    supplied.position(1);
    MappeableArrayContainer container = new MappeableArrayContainer(supplied, 2);
    container.iadd(3, 4);
    System.out.println("supplied.position=" + supplied.position()
        + " cardinality=" + container.getCardinality()
        + " has1=" + container.contains((short) 1)
        + " has2=" + container.contains((short) 2)
        + " has3=" + container.contains((short) 3));
  }
}
