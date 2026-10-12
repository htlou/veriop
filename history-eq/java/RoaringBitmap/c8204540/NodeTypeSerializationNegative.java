public final class NodeTypeSerializationNegative {
  /*@ public normal_behavior
    @ requires 0 <= kind && kind <= 3;
    @ ensures \result;
    @*/
  public static boolean sameSerializedType(int kind) {
    int oldFieldOrdinal = kind;
    int newGetterOrdinal;
    if (kind == 0) {
      newGetterOrdinal = 0;
    } else if (kind == 1) {
      newGetterOrdinal = 1;
    } else if (kind == 2) {
      newGetterOrdinal = 3; // deliberate wrong Node48 ordinal
    } else {
      newGetterOrdinal = 3;
    }
    return (byte) oldFieldOrdinal == (byte) newGetterOrdinal;
  }
}
