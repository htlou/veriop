public final class NodeTypeSerializationRelation {
  /*@ public normal_behavior
    @ requires 0 <= kind && kind <= 3;
    @ ensures \result;
    @*/
  public static boolean sameSerializedType(int kind) {
    // Old constructor stores the enum constant in BranchNode.nodeType.
    int oldFieldOrdinal = kind;
    // New subclass getter returns its own enum constant.
    int newGetterOrdinal;
    if (kind == 0) {
      newGetterOrdinal = 0;
    } else if (kind == 1) {
      newGetterOrdinal = 1;
    } else if (kind == 2) {
      newGetterOrdinal = 2;
    } else {
      newGetterOrdinal = 3;
    }
    return (byte) oldFieldOrdinal == (byte) newGetterOrdinal;
  }
}
