package org.roaringbitmap;

// Compile-only signatures for unavailable unchanged classes; the witness calls none of these methods.
class RoaringBitmap { RoaringArray highLowContainer = new RoaringArray(); }
class RoaringArray {
  int size;
  short getKeyAtIndex(int i) { throw new UnsupportedOperationException(); }
  void append(short key, Container c) { throw new UnsupportedOperationException(); }
}
class Util {
  static short highbits(int x) { throw new UnsupportedOperationException(); }
  static short lowbits(int x) { throw new UnsupportedOperationException(); }
  static int compareUnsigned(short a, short b) { throw new UnsupportedOperationException(); }
}
class Container implements Cloneable {
  Container repairAfterLazy() { throw new UnsupportedOperationException(); }
  Container runOptimize() { throw new UnsupportedOperationException(); }
  public Container clone() { throw new UnsupportedOperationException(); }
}
class BitmapContainer extends Container {
  BitmapContainer(long[] x, int n) { throw new UnsupportedOperationException(); }
}
