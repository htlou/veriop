package org.roaringbitmap;

import java.util.function.Supplier;

// Signatures outside the observed writer-construction/reset path.
interface BitmapDataProvider {}
interface AppendableStorage<C> {
  void add(int value);
  void add(long min, long max);
  void append(short key, C container);
}
interface WordStorage<C> {
  C add(char value);
  C runOptimize();
  boolean isEmpty();
}
class Container implements WordStorage<Container> {
  public Container add(char value) { return this; }
  public Container runOptimize() { return this; }
  public boolean isEmpty() { return true; }
}
class MappeableContainer implements WordStorage<MappeableContainer> {
  public MappeableContainer add(char value) { return this; }
  public MappeableContainer runOptimize() { return this; }
  public boolean isEmpty() { return true; }
}
class RoaringArray {
  static final int INITIAL_CAPACITY = 4;
  RoaringArray(int capacity) {}
}
class MutableRoaringArray {
  MutableRoaringArray(int capacity) {}
}
class RoaringBitmap implements BitmapDataProvider, AppendableStorage<Container> {
  RoaringBitmap(RoaringArray array) {}
  public void add(int value) {}
  public void add(long min, long max) {}
  public void append(short key, Container container) {}
}
class FastRankRoaringBitmap extends RoaringBitmap {
  FastRankRoaringBitmap(RoaringArray array) { super(array); }
}
class MutableRoaringBitmap implements BitmapDataProvider, AppendableStorage<MappeableContainer> {
  MutableRoaringBitmap(MutableRoaringArray array) {}
  public void add(int value) {}
  public void add(long min, long max) {}
  public void append(short key, MappeableContainer container) {}
}
class ArrayContainer extends Container {
  static final int DEFAULT_MAX_SIZE = 4096;
  ArrayContainer(int capacity) {}
}
class RunContainer extends Container {}
class MappeableArrayContainer extends MappeableContainer {
  MappeableArrayContainer(int capacity) {}
}
class MappeableRunContainer extends MappeableContainer {}
class Util {
  static int highbits(int value) { return value >>> 16; }
  static char lowbits(int value) { return (char) value; }
  static int toIntUnsigned(int value) { return value; }
  static void partialRadixSort(int[] values) {}
}
class ConstantMemoryContainerAppender<T extends BitmapDataProvider & AppendableStorage<Container>>
    implements RoaringBitmapWriter<T> {
  private final Supplier<T> supplier;
  private T underlying;
  ConstantMemoryContainerAppender(boolean partial, Supplier<T> supplier) {
    this.supplier = supplier;
    underlying = supplier.get();
  }
  public T getUnderlying() { return underlying; }
  public void add(int value) {}
  public void add(long min, long max) {}
  public void addMany(int... values) {}
  public void flush() {}
  public void reset() { underlying = supplier.get(); }
}
