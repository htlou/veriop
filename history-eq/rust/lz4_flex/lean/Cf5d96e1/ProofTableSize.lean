import Cf5d96e1.GtsBoth
open Aeneas Aeneas.Std Result

/-- f5d96e1 changes the hash-table size chosen for 30000 < len ≤ 65535 (and > 65535):
old get_table_size 40000 = (16384, 2), new = (8192, 3).  Kernel-checked counterexample. -/
theorem f5d96e1_get_table_size_old :
    Lf5d96e1GtsOld.block.hashtable.get_table_size 40000#usize = ok (16384#usize, 2#usize) := by
  unfold Lf5d96e1GtsOld.block.hashtable.get_table_size
  simp [UScalar.le_equiv]
theorem f5d96e1_get_table_size_new :
    Lf5d96e1GtsNew.block.hashtable.get_table_size 40000#usize = ok (8192#usize, 3#usize) := by
  unfold Lf5d96e1GtsNew.block.hashtable.get_table_size
  simp [UScalar.le_equiv]
theorem f5d96e1_get_table_size_not_equiv :
    Lf5d96e1GtsOld.block.hashtable.get_table_size 40000#usize ≠
    Lf5d96e1GtsNew.block.hashtable.get_table_size 40000#usize := by
  rw [f5d96e1_get_table_size_old, f5d96e1_get_table_size_new]
  simp
#print axioms f5d96e1_get_table_size_not_equiv
