import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.CharBuffer;
import org.roaringbitmap.RunContainer;
import org.roaringbitmap.buffer.MappeableRunContainer;

public final class CardinalityWitness {
  public static void main(String[] args) {
    RunContainer ordinary = new RunContainer(10, 20);
    MappeableRunContainer array = new MappeableRunContainer(10, 20);
    CharBuffer direct = ByteBuffer.allocateDirect(8).order(ByteOrder.LITTLE_ENDIAN).asCharBuffer();
    direct.put(0, (char) 10);
    direct.put(1, (char) 9);
    direct.put(2, (char) 30);
    direct.put(3, (char) 4);
    MappeableRunContainer mapped = new MappeableRunContainer(direct, 2);
    System.out.println("RunContainer=" + ordinary.getCardinality());
    System.out.println("Mappeable-array=" + array.getCardinality());
    System.out.println("Mappeable-direct=" + mapped.getCardinality());
  }
}
