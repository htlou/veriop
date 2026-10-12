import java.security.MessageDigest;
import java.util.Random;
import org.roaringbitmap.Util;

public class Witness {
  public static void main(String[] args) throws Exception {
    MessageDigest digest = MessageDigest.getInstance("SHA-256");
    Random random = new Random(470);
    int[] edges = {0, 1, -1, Integer.MIN_VALUE, Integer.MAX_VALUE, 0x00010000, 0x7fff0000};
    for (int length = 0; length <= 64; length++) {
      for (int trial = 0; trial < 128; trial++) {
        int[] data = new int[length];
        for (int i = 0; i < length; i++) {
          data[i] = trial % 3 == 0 ? edges[random.nextInt(edges.length)] : random.nextInt();
        }
        Util.partialRadixSort(data);
        for (int value : data) {
          digest.update((byte) (value >>> 24));
          digest.update((byte) (value >>> 16));
          digest.update((byte) (value >>> 8));
          digest.update((byte) value);
        }
      }
    }
    byte[] hash = digest.digest();
    for (byte value : hash) System.out.printf("%02x", value & 0xff);
    System.out.println();
  }
}
