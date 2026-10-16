package selnull;

/**
 * Stand-in for the Java expression `x & -4` (NEW select: `bitmap.length & -4`).
 *
 * KeY 3.0.0 has no rules for binaryAnd with a symbolic operand, so the three facts the proof
 * needs are stated as this contract. They are checked exhaustively against Java's `x & -4` for
 * every int x >= 0 (all 2^31 values) by ../AndM4Check.java (log: ../andm4check.log).
 */
public final class Bits {
  /*@ public normal_behavior
    @ requires x >= 0;
    @ ensures 0 <= \result && \result <= x && \result % 4 == 0;
    @ assignable \strictly_nothing;
    @*/
  public static native int andM4(int x);
}
