import org.roaringbitmap.ArrayContainer;
import org.roaringbitmap.Container;
import org.roaringbitmap.RunContainer;
import org.roaringbitmap.buffer.MappeableArrayContainer;
import org.roaringbitmap.buffer.MappeableContainer;
import org.roaringbitmap.buffer.MappeableRunContainer;

public final class RetainedInputWitness {
  private static ArrayContainer array() {
    ArrayContainer a = new ArrayContainer();
    a.add((char) 1);
    a.add((char) 5);
    return a;
  }

  private static MappeableArrayContainer bufferArray() {
    MappeableArrayContainer a = new MappeableArrayContainer();
    a.add((char) 1);
    a.add((char) 5);
    return a;
  }

  private static ArrayContainer zeroOne() {
    ArrayContainer a = new ArrayContainer();
    a.add((char) 0);
    a.add((char) 1);
    return a;
  }

  private static MappeableArrayContainer bufferZeroOne() {
    MappeableArrayContainer a = new MappeableArrayContainer();
    a.add((char) 0);
    a.add((char) 1);
    return a;
  }

  private static void report(String name, Container input, Container result, boolean expectedOne,
                             boolean expectedFive) {
    if (result.contains((char) 1) != expectedOne || result.contains((char) 5) != expectedFive)
      throw new AssertionError(name + " result set");
    System.out.printf("%s result=%d retained=%d retained_1=%b retained_5=%b same=%b%n",
        name, result.getCardinality(), input.getCardinality(), input.contains((char) 1),
        input.contains((char) 5), result == input);
  }

  private static void report(String name, MappeableContainer input, MappeableContainer result,
                             boolean expectedOne, boolean expectedFive) {
    if (result.contains((char) 1) != expectedOne || result.contains((char) 5) != expectedFive)
      throw new AssertionError(name + " result set");
    System.out.printf("%s result=%d retained=%d retained_1=%b retained_5=%b same=%b%n",
        name, result.getCardinality(), input.getCardinality(), input.contains((char) 1),
        input.contains((char) 5), result == input);
  }

  private static void reportEmpty(String name, Container input, Container result) {
    System.out.printf("%s result=%d result_0=%b result_1=%b retained=%d%n", name,
        result.getCardinality(), result.contains((char) 0), result.contains((char) 1),
        input.getCardinality());
  }

  private static void reportEmpty(String name, MappeableContainer input, MappeableContainer result) {
    System.out.printf("%s result=%d result_0=%b result_1=%b retained=%d%n", name,
        result.getCardinality(), result.contains((char) 0), result.contains((char) 1),
        input.getCardinality());
  }

  public static void main(String[] args) {
    RunContainer run = new RunContainer(5, 6);
    ArrayContainer in = array();
    report("array_iand", in, in.iand(run), false, true);
    in = array();
    report("array_iandNot", in, in.iandNot(run), true, false);

    MappeableRunContainer bufferRun = new MappeableRunContainer(5, 6);
    MappeableArrayContainer bufferIn = bufferArray();
    report("buffer_iand", bufferIn, bufferIn.iand(bufferRun), false, true);
    bufferIn = bufferArray();
    report("buffer_iandNot", bufferIn, bufferIn.iandNot(bufferRun), true, false);

    RunContainer emptyRun = new RunContainer();
    in = zeroOne();
    reportEmpty("array_iand_empty", in, in.iand(emptyRun));
    in = zeroOne();
    reportEmpty("array_iandNot_empty", in, in.iandNot(emptyRun));
    MappeableRunContainer emptyBufferRun = new MappeableRunContainer();
    bufferIn = bufferZeroOne();
    reportEmpty("buffer_iand_empty", bufferIn, bufferIn.iand(emptyBufferRun));
    bufferIn = bufferZeroOne();
    reportEmpty("buffer_iandNot_empty", bufferIn, bufferIn.iandNot(emptyBufferRun));
  }
}
