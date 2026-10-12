import C6e39a69.HlpcBoth
open Aeneas Aeneas.Std Result
set_option maxHeartbeats 0
set_option maxRecDepth 100000

/-- identical generated models (attribute/comment-only source change) -/
theorem L6e39a69_hlpc_equiv_1 : L6e39a69HlpcOld.block.compress.token_from_literal = L6e39a69HlpcNew.block.compress.token_from_literal := by
  with_unfolding_all rfl
#print axioms L6e39a69_hlpc_equiv_1

/-- identical generated models (attribute/comment-only source change) -/
theorem L6e39a69_hlpc_equiv_2 : L6e39a69HlpcOld.block.compress.push_byte = L6e39a69HlpcNew.block.compress.push_byte := by
  with_unfolding_all rfl
#print axioms L6e39a69_hlpc_equiv_2

/-- identical generated models (attribute/comment-only source change) -/
theorem L6e39a69_hlpc_equiv_3 : L6e39a69HlpcOld.block.compress.write_integer_loop = L6e39a69HlpcNew.block.compress.write_integer_loop := by
  with_unfolding_all rfl
#print axioms L6e39a69_hlpc_equiv_3

/-- identical generated models (attribute/comment-only source change) -/
theorem L6e39a69_hlpc_equiv_4 : L6e39a69HlpcOld.block.compress.write_integer = L6e39a69HlpcNew.block.compress.write_integer := by
  with_unfolding_all rfl
#print axioms L6e39a69_hlpc_equiv_4

/-- identical generated models (attribute/comment-only source change) -/
theorem L6e39a69_hlpc_equiv_5 : L6e39a69HlpcOld.block.compress.copy_literals = L6e39a69HlpcNew.block.compress.copy_literals := by
  with_unfolding_all rfl
#print axioms L6e39a69_hlpc_equiv_5

/-- identical generated models (attribute/comment-only source change) -/
theorem L6e39a69_hlpc_equiv_6 : L6e39a69HlpcOld.block.compress.handle_last_literals = L6e39a69HlpcNew.block.compress.handle_last_literals := by
  with_unfolding_all rfl
#print axioms L6e39a69_hlpc_equiv_6

