import Cb222194.ApidBoth
open Aeneas Aeneas.Std Result
set_option maxHeartbeats 0
set_option maxRecDepth 100000

/-- identical generated models (attribute/comment-only source change) -/
theorem Lb222194_apid_equiv_1 : Lb222194ApidOld.block.decompress_safe.decompress_into = Lb222194ApidNew.block.decompress_safe.decompress_into := by
  with_unfolding_all rfl
#print axioms Lb222194_apid_equiv_1

