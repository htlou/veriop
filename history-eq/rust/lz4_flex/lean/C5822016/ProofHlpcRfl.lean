import C5822016.HlpcBoth
open Aeneas Aeneas.Std Result
set_option maxHeartbeats 0
set_option maxRecDepth 100000

/-- identical generated models (attribute/comment-only source change) -/
theorem L5822016_hlpc_equiv_1 : L5822016HlpcOld.block.hash = L5822016HlpcNew.block.hash := by
  with_unfolding_all rfl
#print axioms L5822016_hlpc_equiv_1

