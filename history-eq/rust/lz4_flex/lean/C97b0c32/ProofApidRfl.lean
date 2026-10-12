import C97b0c32.ApidBoth
open Aeneas Aeneas.Std Result
set_option maxHeartbeats 0
set_option maxRecDepth 100000

/-- identical generated models (attribute/comment-only source change) -/
theorem L97b0c32_apid_equiv_1 : L97b0c32ApidOld.block.decompress_safe.decompress_into = L97b0c32ApidNew.block.decompress_safe.decompress_into := by
  with_unfolding_all rfl
#print axioms L97b0c32_apid_equiv_1

