package org.roaringbitmap.art;

import java.io.DataOutput;
import java.io.IOException;
import java.nio.ByteBuffer;

// Only signatures needed to compile the exact historical BranchNode source.
class Node {
  protected void serializeHeader(DataOutput out) throws IOException {}
  protected void serializeHeader(ByteBuffer out) throws IOException {}
  protected int serializeHeaderSizeInBytes() { return 0; }
}

class Art {
  static final byte[] EMPTY_BYTES = new byte[0];
}

enum NodeType { DUMMY }

class SearchResult {
  static SearchResult found(int position) { return new SearchResult(); }
  static SearchResult notFound(int left, int right) { return new SearchResult(); }
}
