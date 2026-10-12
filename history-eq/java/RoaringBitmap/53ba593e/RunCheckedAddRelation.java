public class RunCheckedAddRelation {
  // The parent RunContainer.add and child RunContainer.contains share this
  // search result and predecessor-interval test; the mappeable variant does too.
  static boolean containsFromSearch(int search, char key, char start, char length) {
    if (search >= 0) return true;
    int index = -search - 2;
    if (index != -1) return key - start <= length;
    return false;
  }

  static boolean oldAddReturnsThis(int search, char key, char start, char length) {
    if (search >= 0) return true;
    int index = -search - 2;
    if (index >= 0) {
      int offset = key - start;
      if (offset <= length) return true;
    }
    return false;
  }

  /*@ public normal_behavior
    @ requires search >= -65537 && search <= 65535;
    @ requires oldCard >= 0 && oldCard <= 65536;
    @ ensures \result;
    @*/
  public static boolean sameDecision(int search, char key, char start,
                                     char length, int oldCard) {
    boolean present = containsFromSearch(search, key, start, length);
    boolean addNoOp = oldAddReturnsThis(search, key, start, length);
    // Under the run-container add contract, an absent value adds exactly one bit.
    int newCard = oldCard + (addNoOp ? 0 : 1);
    boolean before = newCard > oldCard;
    boolean after = !present;
    return before == after;
  }
}
