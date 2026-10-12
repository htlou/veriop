import org.roaringbitmap.ArrayContainer;
import org.roaringbitmap.Container;
import org.roaringbitmap.RunContainer;

public class Witness {
  public static void main(String[] args) {
    Container receiver = new ArrayContainer().add((char) 10);
    Container result = receiver.iorNot(new RunContainer(), 5);
    System.out.println("contains10=" + result.contains((char) 10)
        + " cardinality=" + result.getCardinality());
  }
}
