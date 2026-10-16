package rel;

/**
 * Stand-in for java.lang.Long.bitCount (KeY's JavaRedux has no Long.bitCount).
 *
 * ASSUMPTION (not proved by KeY): Long.bitCount is a pure, side-effect-free, deterministic
 * function of its argument whose result lies in [0, 64]. It is modelled by the
 * uninterpreted model function pc. Nothing else about popcount is assumed.
 */
public final class PopCount {
  /*@ public model static no_state int pc(\bigint w); @*/

  /*@ public normal_behavior
    @ ensures \result == pc(w);
    @ ensures 0 <= \result && \result <= 64;
    @ assignable \strictly_nothing;
    @*/
  public static native int bitCount(long w);
}
