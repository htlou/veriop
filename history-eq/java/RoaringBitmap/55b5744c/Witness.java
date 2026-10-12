import org.roaringbitmap.RoaringBitmapWriter;

public class Witness {
  public static void main(String[] args) {
    System.out.println(RoaringBitmapWriter.writer().optimiseForBitmaps() != null);
  }
}
