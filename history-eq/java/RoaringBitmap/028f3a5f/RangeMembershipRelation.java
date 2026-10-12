public class RangeMembershipRelation {
  /*@ public normal_behavior
    @ requires 0 <= min && min < 4294967296L;
    @ requires min < max && max <= 4294967296L;
    @ requires 0 <= x && x < 4294967296L;
    @ ensures \result;
    @*/
  public static boolean same(long min, long max, long x) {
    long hs = min / 65536L, ls = min % 65536L;
    long hl = (max - 1L) / 65536L, ll = (max - 1L) % 65536L;
    long hx = x / 65536L, lx = x % 65536L;
    boolean oldMember = hs <= hx && hx <= hl
        && (hx == hs ? ls : 0L) <= lx
        && lx <= (hx == hl ? ll : 65535L);
    boolean newMember = (hx == hs && ls <= lx && lx < (hs < hl ? 65536L : ll + 1L))
        || (hs < hx && hx < hl)
        || (hs < hl && hx == hl && lx <= ll);
    return oldMember == newMember;
  }
}
