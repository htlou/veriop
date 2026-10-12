package org.roaringbitmap;

import java.util.function.Supplier;

// Compile-only implementations for uncalled writer paths; historical interface is exact.
class ContainerAppender<C extends WordStorage<C>, T extends BitmapDataProvider & AppendableStorage<C>>
    implements RoaringBitmapWriter<T> {
  ContainerAppender(boolean sort, Supplier<T> bitmap, Supplier<C> container) {}
  public T getUnderlying() { throw new UnsupportedOperationException(); }
  public void add(int value) { throw new UnsupportedOperationException(); }
  public void add(long min, long max) { throw new UnsupportedOperationException(); }
  public void addMany(int... values) { throw new UnsupportedOperationException(); }
  public void flush() { throw new UnsupportedOperationException(); }
  public void reset() { throw new UnsupportedOperationException(); }
}

class ConstantMemoryContainerAppender<T extends BitmapDataProvider & AppendableStorage<Container>>
    implements RoaringBitmapWriter<T> {
  ConstantMemoryContainerAppender(boolean sort, Supplier<T> bitmap) {}
  public T getUnderlying() { throw new UnsupportedOperationException(); }
  public void add(int value) { throw new UnsupportedOperationException(); }
  public void add(long min, long max) { throw new UnsupportedOperationException(); }
  public void addMany(int... values) { throw new UnsupportedOperationException(); }
  public void flush() { throw new UnsupportedOperationException(); }
  public void reset() { throw new UnsupportedOperationException(); }
}
