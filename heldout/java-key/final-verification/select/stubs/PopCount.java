/**
 * Stand-in for java.lang.Long.bitCount (KeY's JavaRedux has no Long.bitCount).
 *
 * ASSUMPTION (not proved by KeY): Long.bitCount is a pure, side-effect-free, deterministic,
 * total function of its argument. It is modelled by the uninterpreted model function pc.
 * The only facts about pc that the proof uses are stated as preconditions of every
 * obligation: 0 <= pc(w) <= 64 for every word of the container (AX1) and pc(0) == 0 (AX2).
 * Both hold for the real popcount.
 */
public final class PopCount {
  /*@ public model static no_state int pc(\bigint w); @*/

  /*@ public normal_behavior
    @ ensures \result == pc(w);
    @ assignable \strictly_nothing;
    @*/
  public static native int bitCount(long w);
}
