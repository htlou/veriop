import Cc17c157.ApidBoth
open Aeneas Aeneas.Std Result
set_option maxHeartbeats 0
set_option maxRecDepth 100000

/-- identical generated models (attribute/comment-only source change) -/
theorem Lc17c157_apid_equiv_1 : Lc17c157ApidOld.block.decompress_safe.decompress_into = Lc17c157ApidNew.block.decompress_safe.decompress_into := by
  with_unfolding_all rfl
#print axioms Lc17c157_apid_equiv_1

