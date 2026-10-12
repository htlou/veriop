# RoaringBitmap `f10f8b74`: ART child lookup

Commit `f10f8b740735a6a3e48eae6bab78b48dffe73590` replaces `getChildPos(key)` followed by `getChild(pos)` in `Art.findByKey(Node,long)` with `getChildAtKey(key)`. It adds implementations to `Node4`, `Node16`, `Node48`, and `Node256`. The [complete diff](source.diff) and parent/child snapshots of all six changed files are here. [`check_source.py`](check_source.py) matches every snapshot to the pinned Git history: `Art` has exactly the lookup replacement, and each other file has exactly one method/declaration insertion.

**Result: partial KeY equivalence of the changed child-lookup step.** [The four-node relation](all_nodes/ChildLookupRelation.java) uses a shared result for the unchanged `getChildPos`, `childrenIdx`, and `Byte.toUnsignedInt` operations. It checks the old and new child references for `Node4`/`Node16`, `Node48`, and `Node256`, including missing children. The preconditions match normal node shapes: 4/16, 48, and 256 child slots; `Node48`'s packed index is `-1` or in `[0,48)`. KeY 3.0.0 reports [0 open goals and `Proved`](all_nodes/key.log); its [proof artifact](all_nodes/ChildLookupRelation.java.auto.proof) is saved. A separate [Node256-only relation](Node256LookupRelation.java) also has [0 open goals](key.log).

This is a local relational proof tied to the exact source change. It does not load the whole historical `Art` class into KeY or prove the node-shape invariants and helper purity from the full classes. It covers sequential lookup under those coupling assumptions; the whole commit is not claimed fully verified. No official before/after benchmark score was measured.

Reproduce from this directory:

```sh
python3 check_source.py
source ../../../../benchmarks/env.sh
printf '0\n' | java -jar "$KEY_JAR" --auto --timeout=60000 Node256LookupRelation.java
(cd all_nodes && printf '0\n' | java -jar "$KEY_JAR" --auto --timeout=60000 ChildLookupRelation.java)
```
