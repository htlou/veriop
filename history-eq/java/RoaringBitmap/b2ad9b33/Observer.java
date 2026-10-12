package org.roaringbitmap;

public final class Observer {
  public static void main(String[] args) {
    RoaringBitmap empty = new RoaringBitmap();
    long[] scratch = new long[1024];
    scratch[17] = 7L;
    RoaringBitmap result = FastAggregation.and(scratch, empty, empty, empty);
    System.out.println("empty=" + result.isEmpty() + ",scratch=" + scratch[17]);

    try {
      FastAggregation.and(new long[1], empty, empty, empty);
      System.out.println("short=returned");
    } catch (IllegalArgumentException e) {
      System.out.println("short=IllegalArgumentException");
    }
  }
}
