import Base64ApiPartialRef.Base64ApiPartialRef
import Base64ApiPartialOpt.Base64ApiPartialOpt

open Aeneas Aeneas.Std
set_option maxHeartbeats 1000000
set_option maxRecDepth 8192

private theorem zero_prefix {α : Type} (rest : Result α) :
    (do
      let i ← 0#usize % 3#usize
      massert (i = 0#usize)
      let j ← 0#usize / 3#usize
      let k ← j * 4#usize
      massert (0#usize = k)
      rest) = rest := by
  have hr : 0#usize % 3#usize ⦃ r => r = 0#usize ⦄ := by
    step as ⟨r, hr⟩
    scalar_tac
  have hd : 0#usize / 3#usize ⦃ r => r = 0#usize ⦄ := by
    step as ⟨r, hr⟩
    scalar_tac
  have hm : 0#usize * 4#usize ⦃ r => r = 0#usize ⦄ := by
    step as ⟨r, hr⟩
    scalar_tac
  obtain ⟨r, hr, rfl⟩ := WP.spec_imp_exists hr
  obtain ⟨d, hd, rfl⟩ := WP.spec_imp_exists hd
  obtain ⟨m, hm, rfl⟩ := WP.spec_imp_exists hm
  simp [hr, hd, hm]

namespace Base64ApiPartialRef.engine.general_purpose

theorem internal_encode_tail (self : GeneralPurpose) (input output : Slice U8) :
    GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_encode
      self input output = encode_scalar_tail self.encode_table input output 0#usize 0#usize := by
  simp only [GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_encode,
    encode_helper,
    EngineGeneralPurposeGeneralPurposeConfigGeneralPurposeEstimate.internal_encode.closure.Insts.CoreOpsFunctionFnOncePairShared0SliceU8Mut1SliceU8PairUsizeUsize.call_once]
  simp
  exact zero_prefix _

#print axioms internal_encode_tail
end Base64ApiPartialRef.engine.general_purpose

namespace Base64ApiPartialOpt.engine.general_purpose

theorem internal_encode_tail (self : GeneralPurpose) (input output : Slice U8) :
    GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_encode
      self input output = encode_scalar_tail self.encode_table input output 0#usize 0#usize := by
  simp only [GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_encode,
    encode_helper,
    EngineGeneralPurposeGeneralPurposeConfigGeneralPurposeEstimate.internal_encode.closure.Insts.CoreOpsFunctionFnOncePairShared0SliceU8Mut1SliceU8PairUsizeUsize.call_once]
  simp
  exact zero_prefix _

#print axioms internal_encode_tail
end Base64ApiPartialOpt.engine.general_purpose

theorem scalar_loop1_equiv :
    Base64ApiPartialRef.engine.general_purpose.encode_scalar_tail_loop1 =
      Base64ApiPartialOpt.engine.general_purpose.encode_scalar_tail_loop1 := by
  with_unfolding_all rfl

theorem scalar_loop2_equiv :
    Base64ApiPartialRef.engine.general_purpose.encode_scalar_tail_loop2 =
      Base64ApiPartialOpt.engine.general_purpose.encode_scalar_tail_loop2 := by
  with_unfolding_all rfl

#print axioms scalar_loop1_equiv
#print axioms scalar_loop2_equiv

theorem fast_fallback_equiv (stride : Usize) (table : Array U8 64#usize)
    (input output : Slice U8) (input_index output_index last_fast_index : Usize) :
    Base64ApiPartialRef.engine.general_purpose.encode_scalar_tail_loop0
      stride table input output input_index output_index last_fast_index =
    Base64ApiPartialOpt.engine.general_purpose.encode_scalar_tail_loop0
      stride table input output input_index output_index false last_fast_index := by
  have hread : Base64ApiPartialRef.engine.general_purpose.read_u64 =
      Base64ApiPartialOpt.engine.general_purpose.read_u64 := by
    with_unfolding_all rfl
  delta Base64ApiPartialRef.engine.general_purpose.encode_scalar_tail_loop0
    Base64ApiPartialOpt.engine.general_purpose.encode_scalar_tail_loop0
    Base64ApiPartialRef.engine.general_purpose.encode_scalar_tail_loop0.mutual
    Base64ApiPartialOpt.engine.general_purpose.encode_scalar_tail_loop0.mutual
  apply congrFun
  apply congrFun
  apply congrFun
  congr 1
  funext f output input_index output_index
  simp only [Bool.false_eq_true, ite_false, Aeneas.Std.bind_assoc,
    Base64ApiPartialRef.engine.general_purpose.encode_scalar_tail.BLOCKS_PER_FAST_LOOP,
    Base64ApiPartialOpt.engine.general_purpose.encode_scalar_tail.BLOCKS_PER_FAST_LOOP,
    Base64ApiPartialRef.engine.general_purpose.encode_scalar_tail.LOW_SIX_BITS,
    Base64ApiPartialOpt.engine.general_purpose.encode_scalar_tail.LOW_SIX_BITS, hread]

#print axioms fast_fallback_equiv
