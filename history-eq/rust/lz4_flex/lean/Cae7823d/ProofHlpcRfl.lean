import Cae7823d.HlpcBoth
open Aeneas Aeneas.Std Result
set_option maxHeartbeats 0
set_option maxRecDepth 100000

/-- identical generated models (attribute/comment-only source change) -/
theorem Lae7823d_hlpc_equiv_1 : Lae7823dHlpcOld.block.compress.backtrack_match_loop = Lae7823dHlpcNew.block.compress.backtrack_match_loop := by
  with_unfolding_all rfl
#print axioms Lae7823d_hlpc_equiv_1

/-- identical generated models (attribute/comment-only source change) -/
theorem Lae7823d_hlpc_equiv_2 : Lae7823dHlpcOld.block.compress.backtrack_match = Lae7823dHlpcNew.block.compress.backtrack_match := by
  with_unfolding_all rfl
#print axioms Lae7823d_hlpc_equiv_2

