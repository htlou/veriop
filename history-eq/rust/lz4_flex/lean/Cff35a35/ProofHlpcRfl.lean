import Cff35a35.HlpcBoth
open Aeneas Aeneas.Std Result
set_option maxHeartbeats 0
set_option maxRecDepth 100000

/-- identical generated models (attribute/comment-only source change) -/
theorem Lff35a35_hlpc_equiv_1 : Lff35a35HlpcOld.block.compress.backtrack_match_loop = Lff35a35HlpcNew.block.compress.backtrack_match_loop := by
  with_unfolding_all rfl
#print axioms Lff35a35_hlpc_equiv_1

/-- identical generated models (attribute/comment-only source change) -/
theorem Lff35a35_hlpc_equiv_2 : Lff35a35HlpcOld.block.compress.backtrack_match = Lff35a35HlpcNew.block.compress.backtrack_match := by
  with_unfolding_all rfl
#print axioms Lff35a35_hlpc_equiv_2

