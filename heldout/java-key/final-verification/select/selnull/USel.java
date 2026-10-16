package selnull;

/**
 * Stand-in for org.roaringbitmap.Util.select(long, int).
 *
 * ASSUMPTION (not proved by KeY): Util.select is a pure, side-effect-free, deterministic and
 * total function of its two arguments (it only does int/long arithmetic, Integer.bitCount and a
 * bounded loop; it allocates nothing, writes nothing and cannot throw). It is modelled by the
 * uninterpreted model function us; nothing else about it is assumed. The proof shows that OLD and
 * NEW call it with equal arguments.
 */
public final class USel {
  /*@ public model static no_state int us(\bigint w, \bigint j); @*/

  /*@ public normal_behavior
    @ ensures \result == us(w, j);
    @ assignable \strictly_nothing;
    @*/
  public static native int select(long w, int j);
}
