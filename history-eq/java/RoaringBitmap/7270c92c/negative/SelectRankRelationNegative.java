public class SelectRankRelationNegative {
  /*@ public normal_behavior
    @ requires 0 <= before && 1 <= bits && bits <= 64 && 0 <= after;
    @ requires before + bits + after <= 65536;
    @ requires before <= j && j < before + bits;
    @ ensures \result;
    @*/
  public static boolean sameRank(int before, int bits, int after, int j) {
    int cardinality = before + bits + after;
    int oldRank = j - before;
    int leftover = cardinality - j - after;
    int newRank = bits - leftover - 1;
    return oldRank == newRank && 1 <= leftover && leftover <= bits
        && 0 <= newRank && newRank < bits;
  }
}
