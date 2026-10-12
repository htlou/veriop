import C517f1da.HlpcBoth
open Aeneas Aeneas.Std Result
set_option maxHeartbeats 0
set_option maxRecDepth 100000

/-- identical generated models (attribute/comment-only source change) -/
theorem L517f1da_hlpc_equiv_1 : L517f1daHlpcOld.block.compress.backtrack_match_loop = L517f1daHlpcNew.block.compress.backtrack_match_loop := by
  with_unfolding_all rfl
#print axioms L517f1da_hlpc_equiv_1

/-- identical generated models (attribute/comment-only source change) -/
theorem L517f1da_hlpc_equiv_2 : L517f1daHlpcOld.block.compress.backtrack_match = L517f1daHlpcNew.block.compress.backtrack_match := by
  with_unfolding_all rfl
#print axioms L517f1da_hlpc_equiv_2

