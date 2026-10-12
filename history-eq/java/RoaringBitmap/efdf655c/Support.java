package org.roaringbitmap.art;

class Art {
  boolean isEmpty() { return true; }
}

class Containers {}
class LeafNode {}

interface Shuttle {
  void initShuttle();
  void initShuttleFrom(long key);
  boolean moveToNextLeaf();
  LeafNode getCurrentLeafNode();
  void remove();
}

class ForwardShuttle implements Shuttle {
  ForwardShuttle(Art art, Containers containers) {}
  public void initShuttle() {}
  public void initShuttleFrom(long key) {}
  public boolean moveToNextLeaf() { return false; }
  public LeafNode getCurrentLeafNode() { return null; }
  public void remove() {}
}

class BackwardShuttle extends ForwardShuttle {
  BackwardShuttle(Art art, Containers containers) { super(art, containers); }
}
