public final class EmptyPrefixIdentity {
  /*@ public normal_behavior
    @ requires shared != null && shared.length == 0;
    @ ensures \result;
    @ assignable \nothing;
    @*/
  public static boolean observerDistinguishes(byte[] shared) {
    byte[] oldFirst = new byte[0];
    byte[] oldSecond = new byte[0];
    byte[] newFirst = shared;
    byte[] newSecond = shared;
    return oldFirst != oldSecond && newFirst == newSecond;
  }
}
