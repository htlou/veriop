import Base64Ref.Base64
import Base64Opt.Base64
import Lz4Ref.Lz4
import Lz4Opt.Lz4

open Aeneas Aeneas.Std

set_option maxRecDepth 8192
set_option maxHeartbeats 4000000

theorem encode_scalar_tail_equiv :
    Base64Ref.engine.general_purpose.encode_scalar_tail =
    Base64Opt.engine.general_purpose.encode_scalar_tail := by
  with_unfolding_all rfl

#print axioms encode_scalar_tail_equiv

theorem token_from_literal_equiv :
    Lz4Ref.block.compress.token_from_literal =
    Lz4Opt.block.compress.token_from_literal := by
  funext n
  unfold Lz4Ref.block.compress.token_from_literal
    Lz4Opt.block.compress.token_from_literal
  have h : (n < 15#usize) = (n <= 14#usize) := by
    apply propext
    scalar_tac
  simp only [h]

#print axioms token_from_literal_equiv

theorem read_u64_equiv :
    Base64Ref.engine.general_purpose.read_u64 =
    Base64Opt.engine.general_purpose.read_u64 := by
  with_unfolding_all rfl

#print axioms read_u64_equiv

theorem encode_scalar_tail_LOW_SIX_BITS_U8_equiv :
    Base64Ref.engine.general_purpose.encode_scalar_tail.LOW_SIX_BITS_U8 =
    Base64Opt.engine.general_purpose.encode_scalar_tail.LOW_SIX_BITS_U8 := by
  with_unfolding_all rfl

#print axioms encode_scalar_tail_LOW_SIX_BITS_U8_equiv

theorem encode_scalar_tail_LOW_SIX_BITS_equiv :
    Base64Ref.engine.general_purpose.encode_scalar_tail.LOW_SIX_BITS =
    Base64Opt.engine.general_purpose.encode_scalar_tail.LOW_SIX_BITS := by
  with_unfolding_all rfl

#print axioms encode_scalar_tail_LOW_SIX_BITS_equiv

theorem encode_scalar_tail_BLOCKS_PER_FAST_LOOP_equiv :
    Base64Ref.engine.general_purpose.encode_scalar_tail.BLOCKS_PER_FAST_LOOP =
    Base64Opt.engine.general_purpose.encode_scalar_tail.BLOCKS_PER_FAST_LOOP := by
  with_unfolding_all rfl

#print axioms encode_scalar_tail_BLOCKS_PER_FAST_LOOP_equiv

theorem encode_scalar_tail_loop0_equiv :
    Base64Ref.engine.general_purpose.encode_scalar_tail_loop0 =
    Base64Opt.engine.general_purpose.encode_scalar_tail_loop0 := by
  with_unfolding_all rfl

#print axioms encode_scalar_tail_loop0_equiv

theorem encode_scalar_tail_loop1_equiv :
    Base64Ref.engine.general_purpose.encode_scalar_tail_loop1 =
    Base64Opt.engine.general_purpose.encode_scalar_tail_loop1 := by
  with_unfolding_all rfl

#print axioms encode_scalar_tail_loop1_equiv

theorem encode_scalar_tail_loop2_equiv :
    Base64Ref.engine.general_purpose.encode_scalar_tail_loop2 =
    Base64Opt.engine.general_purpose.encode_scalar_tail_loop2 := by
  with_unfolding_all rfl

#print axioms encode_scalar_tail_loop2_equiv

