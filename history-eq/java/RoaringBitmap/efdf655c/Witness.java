package org.roaringbitmap.art;

public class Witness {
  public static void main(String[] args) {
    LeafNodeIterator it = new LeafNodeIterator(new Art(), new Containers());
    if (it.hasNext()) throw new AssertionError("empty iterator has next");
    try {
      LeafNode leaf = it.next();
      if (leaf != null) throw new AssertionError("unexpected leaf");
      System.out.println("next: null");
    } catch (java.util.NoSuchElementException ex) {
      System.out.println("next: NoSuchElementException");
    }
  }
}
