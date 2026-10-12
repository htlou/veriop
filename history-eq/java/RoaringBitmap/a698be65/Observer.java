package org.roaringbitmap.art;

public final class Observer extends BranchNode {
  public Observer() { super(0); }

  public boolean samePrefix(Observer other) { return prefix == other.prefix; }

  @Override protected NodeType nodeType() { return NodeType.DUMMY; }
  @Override protected BranchNode insert(Node child, byte key) { return this; }
  @Override void replaceChildren(Node[] children) {}
  @Override public int getChildPos(byte key) { return 0; }
  @Override public SearchResult getNearestChildPos(byte key) { return null; }
  @Override public byte getChildKey(int pos) { return 0; }
  @Override public Node getChild(int pos) { return null; }
  @Override public void replaceNode(int pos, Node fresh) {}
  @Override public int getMinPos() { return 0; }
  @Override public int getNextLargerPos(int pos) { return 0; }
  @Override public int getMaxPos() { return 0; }
  @Override public int getNextSmallerPos(int pos) { return 0; }
  @Override public Node remove(int pos) { return null; }

  public static void main(String[] args) {
    Observer first = new Observer();
    Observer second = new Observer();
    System.out.println(first.samePrefix(second));
  }
}
