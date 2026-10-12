# RoaringBitmap `bc7275ed`: public iterator type rename

This optimization changes the library from `ShortIterator` to `CharIterator`. `check_api.py` verifies the archived production diff against Git, compiles each exact historical public interface, and compiles `LegacyClient.java` against the parent. The child tree has no `ShortIterator.java` at that path.

The unchanged client loads `org.roaringbitmap.ShortIterator` successfully with the parent (`exit 0`) and fails with `NoClassDefFoundError` under the child (`exit 1`); see `result.json`. **Verdict: `NOT_EQUIV` for old binary-client API compatibility.** This is a concrete public-type witness, not a claim that bitmap contents differ. The signedness conversion across the other changed classes has no all-input equivalence proof here.
