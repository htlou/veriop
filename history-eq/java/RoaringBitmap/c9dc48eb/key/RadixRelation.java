import java.util.Arrays;

public class RadixRelation {
  public static void oldSort(int[] data) {
    final int radix = 8;
    int shift = 16;
    int mask = 0xFF0000;
    int[] copy = new int[data.length];
    int[] histogram = new int[(1 << radix) + 1];
    while (shift < 32) {
      for (int i = 0; i < data.length; ++i) {
        ++histogram[((data[i] & mask) >>> shift) + 1];
      }
      for (int i = 0; i < 1 << radix; ++i) {
        histogram[i + 1] += histogram[i];
      }
      for (int i = 0; i < data.length; ++i) {
        copy[histogram[(data[i] & mask) >>> shift]++] = data[i];
      }
      System.arraycopy(copy, 0, data, 0, data.length);
      shift += radix;
      mask <<= radix;
      Arrays.fill(histogram, 0);
    }
  }

  public static void newSort(int[] data) {
    final int radix = 8;
    int shift = 16;
    int mask = 0xFF0000;
    int[] copy = new int[data.length];
    int[] histogram = new int[(1 << radix) + 1];
    // We want to avoid copying the data, see
    // https://github.com/RoaringBitmap/RoaringBitmap/issues/470
    int[] primary = data;
    int[] secondary = copy;
    while (shift < 32) {
      for (int i = 0; i < data.length; ++i) {
        ++histogram[((primary[i] & mask) >>> shift) + 1];
      }
      for (int i = 0; i < 1 << radix; ++i) {
        histogram[i + 1] += histogram[i];
      }
      for (int i = 0; i < primary.length; ++i) {
        secondary[histogram[(primary[i] & mask) >>> shift]++] = primary[i];
      }
      // swap
      int[] tmp = primary;
      primary = secondary;
      secondary = tmp;
      //
      shift += radix;
      mask <<= radix;
      Arrays.fill(histogram, 0);
    }
    // We need to check that primary == data.
    //
    // The check is entirely deterministic in this case.
    // We go:
    //   shift = 16
    //       data == primary
    //   shift = 24
    //       data == secondary
    //   // exit:
    //   data == primary
    //
    // If unsure, we could do the following:
    //
    // if(data != primary) {
    //    System.arraycopy(secondary, 0, data, 0, data.length);
    // }
  }

  /*@ public normal_behavior
    @ requires input != null && input.length == 2;
    @ ensures \result;
    @*/
  public static boolean sameTwo(int[] input) {
    int[] before = new int[] {input[0], input[1]};
    int[] after = new int[] {input[0], input[1]};
    oldSort(before);
    newSort(after);
    return before[0] == after[0] && before[1] == after[1];
  }
}
