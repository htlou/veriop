package org.roaringbitmap;

public final class Observer {
  static final class ProbeWizard extends RoaringBitmapWriter.RoaringBitmapWizard {
    int observedCapacity;

    @Override
    protected RoaringBitmap createUnderlying(int capacity) {
      observedCapacity = capacity;
      return new RoaringBitmap(new RoaringArray(capacity));
    }
  }

  public static void main(String[] args) {
    ProbeWizard wizard = new ProbeWizard();
    wizard.initialCapacity(4);
    RoaringBitmapWriter<RoaringBitmap> writer = wizard.get();
    wizard.initialCapacity(9);
    writer.reset();
    System.out.println(wizard.observedCapacity);
  }
}
