import Cf46d8ba.HlpcBoth
open Aeneas Aeneas.Std Result
set_option maxHeartbeats 0
set_option maxRecDepth 100000

/-- identical generated models (attribute/comment-only source change) -/
theorem Lf46d8ba_hlpc_equiv_1 : Lf46d8baHlpcOld.block.uncompressed_size = Lf46d8baHlpcNew.block.uncompressed_size := by
  with_unfolding_all rfl
#print axioms Lf46d8ba_hlpc_equiv_1

