public final class AppendRelation {
  /*@ public normal_behavior
    @ ensures \result;
    @ assignable \nothing;
    @*/
  public static boolean commaAppendSameOutput() {
    java.lang.StringBuilder oldBuilder = new java.lang.StringBuilder();
    oldBuilder.append("{").append("123").append(",").append("456").append("}");
    java.lang.StringBuilder newBuilder = new java.lang.StringBuilder(2 + 11 * 2);
    newBuilder.append('{').append("123").append(',').append("456").append('}');
    return oldBuilder.toString().equals(newBuilder.toString());
  }
}
