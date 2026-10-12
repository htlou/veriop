import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import org.roaringbitmap.art.Art;
import org.roaringbitmap.art.LeafNodeIterator;

public final class ArtProbe {
  private static byte[] key(int i) {
    return new byte[] {(byte) (i >>> 8), (byte) i, (byte) (i * 73), (byte) (i >>> 4), 1, 2};
  }

  private static String hex(byte[] bytes) {
    StringBuilder out = new StringBuilder(bytes.length * 2);
    for (byte b : bytes) out.append(String.format("%02x", b & 255));
    return out.toString();
  }

  private static void check(boolean ok) {
    if (!ok) throw new AssertionError();
  }

  private static void verify(Art art, int n, boolean removed) {
    int expected = 0;
    for (int i = 0; i < n; i++) {
      long want = removed && i % 3 == 0 ? -1 : i + 1;
      check(art.findByKey(key(i)) == want);
      if (want != -1) expected++;
    }
    check(art.getKeySize() == expected);
    for (boolean reverse : new boolean[] {false, true}) {
      LeafNodeIterator it = art.leafNodeIterator(reverse, null);
      int previous = reverse ? n : -1;
      int count = 0;
      while (it.hasNext()) {
        byte[] bytes = it.next().getKeyBytes();
        int current = ((bytes[0] & 255) << 8) | (bytes[1] & 255);
        check(current >= 0 && current < n && (!removed || current % 3 != 0));
        check(reverse ? current < previous : current > previous);
        previous = current;
        count++;
      }
      check(count == expected);
    }
  }

  public static void main(String[] args) throws Exception {
    MessageDigest digest = MessageDigest.getInstance("SHA-256");
    for (int n : new int[] {1, 4, 5, 16, 17, 48, 49, 256, 257, 512}) {
      Art art = new Art();
      for (int i = n - 1; i >= 0; i--) art.insert(key(i), i + 1);
      verify(art, n, false);

      ByteArrayOutputStream output = new ByteArrayOutputStream();
      art.serializeArt(new DataOutputStream(output));
      byte[] data = output.toByteArray();
      check(data.length == art.serializeSizeInBytes());
      digest.update(data);
      Art copy = new Art();
      copy.deserializeArt(new DataInputStream(new ByteArrayInputStream(data)));
      verify(copy, n, false);

      ByteBuffer buffer = ByteBuffer.allocate((int) art.serializeSizeInBytes());
      art.serializeArt(buffer);
      check(buffer.position() == buffer.capacity());
      digest.update(buffer.array());
      Art bufferCopy = new Art();
      buffer.flip();
      bufferCopy.deserializeArt(buffer);
      verify(bufferCopy, n, false);

      for (int i = 0; i < n; i += 3) check(art.remove(key(i)) == i + 1);
      verify(art, n, true);
    }
    System.out.println("10 sizes; insert/find/traverse/serialize/deserialize/remove PASS; SHA256=" + hex(digest.digest()));
  }
}
