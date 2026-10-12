public final class ChildLookupRelation {
    /*@ public normal_behavior
      @ requires small != null && (small.length == 4 || small.length == 16);
      @ requires smallPos == -1 || (0 <= smallPos && smallPos < small.length);
      @ requires wide != null && wide.length == 48;
      @ requires wideIdx == -1 || (0 <= wideIdx && wideIdx < 48);
      @ requires 0 <= wideKey && wideKey < 256;
      @ requires full != null && full.length == 256;
      @ requires 0 <= fullPos && fullPos < 256;
      @ ensures \result;
      @ assignable \nothing;
      @*/
    public static boolean same(Object[] small, int smallPos,
                               Object[] wide, int wideIdx, int wideKey,
                               Object[] full, int fullPos) {
        // Node4 and Node16 share the unchanged getChildPos result.
        Object oldSmall = smallPos == -1 ? null : small[smallPos];
        Object newSmall = smallPos == -1 ? null : small[smallPos];

        // Node48's unchanged childrenIdx returns -1 or a slot in [0, 48).
        int oldWidePos = wideIdx == -1 ? -1 : wideKey;
        Object oldWide = oldWidePos == -1 ? null : wide[(byte) wideIdx];
        Object newWide = wideIdx == -1 ? null : wide[wideIdx];

        // Node256 uses the shared Byte.toUnsignedInt(key) result.
        int oldFullPos = full[fullPos] != null ? fullPos : -1;
        Object oldFull = oldFullPos == -1 ? null : full[oldFullPos];
        Object newFull = full[fullPos];

        return oldSmall == newSmall && oldWide == newWide && oldFull == newFull;
    }
}
