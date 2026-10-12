package org.roaringbitmap;

public final class Witness {
  public static void main(String[] args) {
    RoaringBitmap input = new RoaringBitmap();
    input.add(1L, 1000L);
    RoaringBitmap empty = new RoaringBitmap();
    String container = input.highLowContainer.getContainerAtIndex(0).getClass().getSimpleName();
    long before = input.getLongCardinality();
    RoaringBitmap result = RoaringBitmap.orNot(input, empty, 131072L);
    System.out.println("container=" + container + " before=" + before
        + " input_after=" + input.getLongCardinality()
        + " input_zero=" + input.contains(0)
        + " result_zero=" + result.contains(0));
  }
}
