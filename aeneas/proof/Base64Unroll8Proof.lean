import Base64RemainderProof

open Aeneas Aeneas.Std Aeneas.Std.Result
open Base64RemainderProof
namespace Base64Unroll8Proof
set_option maxHeartbeats 2000000
set_option maxRecDepth 8192

theorem bind_triple_assoc {α β γ δ ε : Type} (r : Result (α × β × γ))
    (f : α → β → γ → Result δ) (g : δ → Result ε) :
    Aeneas.Std.bind r (Aeneas.Std.uncurry (fun a =>
      Aeneas.Std.uncurry (fun b c => Aeneas.Std.bind (f a b c) g))) =
    Aeneas.Std.bind (Aeneas.Std.bind r (Aeneas.Std.uncurry (fun a => Aeneas.Std.uncurry (f a)))) g := by
  rw [Aeneas.Std.bind_assoc]
  congr 1

theorem scalar_tail_equiv (table : Array U8 64#usize) (input output : Slice U8)
    (ii oi : Usize) (hin : ii.val ≤ input.length)
    (hout : oi.val + 4 * ((input.length - ii.val) / 3) ≤ output.length) :
    Base64StepRef.engine.general_purpose.encode_scalar_tail table input output ii oi =
    Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail table input output ii oi := by
  have halphabet : Base64TailOpt.engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET =
      Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET := by
    with_unfolding_all rfl
  obtain ⟨flag, hdispatch, hflag⟩ := WP.spec_imp_exists
    (Base64TailProof.alphabet_comparison_spec table)
  rw [halphabet] at hdispatch hflag
  have hm4 : 4#usize * 6#usize ⦃ r => r = 24#usize ⦄ := by
    step as ⟨r, hr⟩
    scalar_tac
  have hm8 : 8#usize * 6#usize ⦃ r => r = 48#usize ⦄ := by
    step as ⟨r, hr⟩
    scalar_tac
  have ha4 : 24#usize + 2#usize ⦃ r => r = 26#usize ⦄ := by
    step as ⟨r, hr⟩
    scalar_tac
  have ha8 : 48#usize + 2#usize ⦃ r => r = 50#usize ⦄ := by
    step as ⟨r, hr⟩
    scalar_tac
  obtain ⟨_, hmul4, rfl⟩ := WP.spec_imp_exists hm4
  obtain ⟨_, hmul8, rfl⟩ := WP.spec_imp_exists hm8
  obtain ⟨_, hadd4, rfl⟩ := WP.spec_imp_exists ha4
  obtain ⟨_, hadd8, rfl⟩ := WP.spec_imp_exists ha8
  have hr_spec : Slice.len input % 3#usize ⦃ r => r.val = input.length % 3 ⦄ := by
    step as ⟨r, hr⟩
    scalar_tac
  obtain ⟨rem, hrem, hremval⟩ := WP.spec_imp_exists hr_spec
  have hs_spec : Slice.len input - rem ⦃ r => r.val = input.length - rem.val ⦄ := by
    step as ⟨r, hr⟩
    scalar_tac
  obtain ⟨stop, hsub, hstopval⟩ := WP.spec_imp_exists hs_spec
  have hstop : input.length ≤ stop.val + 2 := by omega
  let last4 := core.num.Usize.saturating_sub (Slice.len input) 26#usize
  let last8 := core.num.Usize.saturating_sub (Slice.len input) 50#usize
  have hbound : input.val.length < 2 ^ System.Platform.numBits := by
    have hp := input.property
    rcases System.Platform.numBits_eq with h | h <;>
      norm_num [Usize.max, Usize.numBits, h] at hp ⊢ <;> omega
  have hl4 : last4.val = input.length - 26 := by
    simp [last4, core.num.Usize.saturating_sub, UScalar.saturating_sub]
    change (input.val.length - 26) % 2 ^ System.Platform.numBits = input.val.length - 26
    exact Nat.mod_eq_of_lt (by omega)
  have hl8 : last8.val = input.length - 50 := by
    simp [last8, core.num.Usize.saturating_sub, UScalar.saturating_sub]
    change (input.val.length - 50) % 2 ^ System.Platform.numBits = input.val.length - 50
    exact Nat.mod_eq_of_lt (by omega)
  have href2 : Base64StepRef.engine.general_purpose.encode_scalar_tail_loop2 =
      Base64StepRef.engine.general_purpose.encode_scalar_tail_loop1 := by with_unfolding_all rfl
  have hopt2 : Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail_loop2 =
      Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail_loop1 := by with_unfolding_all rfl
  unfold Base64StepRef.engine.general_purpose.encode_scalar_tail
    Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail
  simp only [Base64StepRef.engine.general_purpose.encode_scalar_tail.BLOCKS_PER_FAST_LOOP,
    Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail.BLOCKS_PER_FAST_LOOP,
    hdispatch, hmul4, hmul8, hadd4, hadd8, hrem, hsub, Aeneas.Std.bind_ok,
    href2, hopt2, Base64StepRef.engine.general_purpose.encode_scalar_tail.LOW_SIX_BITS_U8,
    Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail.LOW_SIX_BITS_U8]
  simp only [lift, Aeneas.Std.bind_ok, UScalar.lt_equiv, UScalar.le_equiv,
    UScalar.ofNatCore_val_eq, Slice.len_val]
  by_cases h8 : 50 ≤ input.length
  · have h4 : 0 < last4.val := by omega
    dsimp only [last4] at h4
    simp only [if_pos h4, if_pos h8]
    rw [bind_triple_assoc]
    have hfast := fast_tail_equiv table input last4 last8 stop
      (by omega) (by omega) hstop output ii oi hin hout flag hflag.mp
    change Aeneas.Std.bind
      (Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0 24#usize table input output ii oi last4)
      (Aeneas.Std.uncurry (fun out => Aeneas.Std.uncurry (fun next_i next_o =>
        Base64StepRef.engine.general_purpose.encode_scalar_tail_loop1 table input out next_i next_o stop))) =
      Aeneas.Std.bind
      (Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail_loop0 48#usize table input output ii oi flag last8)
      (Aeneas.Std.uncurry (fun out => Aeneas.Std.uncurry (fun next_i next_o =>
        Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail_loop1 table input out next_i next_o flag stop))) at hfast
    rw [hfast]
    rw [bind_triple_assoc]
  · by_cases h4 : 0 < last4.val
    · have hlen4 : last4.val + 26 = input.length := by omega
      dsimp only [last4] at h4
      simp only [if_pos h4, if_neg h8]
      rw [fast4_small_eq_finish4 table input output ii oi last4 hlen4 (by omega) hout]
      rw [bind_triple_assoc]
      rw [← finish4_absorbed table input output ii oi last4 stop hlen4 hstop hout,
        tail_loop_equiv table input output ii oi stop flag hflag.mp]
    · dsimp only [last4] at h4
      simp only [if_neg h4, if_neg h8,
        ← tail_loop_equiv table input output ii oi stop flag hflag.mp]

#print axioms scalar_tail_equiv

theorem internal_encode_equiv
    (reference : Base64StepRef.engine.general_purpose.GeneralPurpose)
    (optimized : Base64Unroll8Opt.engine.general_purpose.GeneralPurpose)
    (htable : reference.encode_table = optimized.encode_table) (input output : Slice U8)
    (hout : 4 * (input.length / 3) ≤ output.length) :
    Base64StepRef.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_encode
      reference input output =
    Base64Unroll8Opt.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_encode
      optimized input output := by
  have htail := scalar_tail_equiv optimized.encode_table input output 0#usize 0#usize
    (by scalar_tac) (by simpa only [UScalar.ofNatCore_val_eq, Nat.sub_zero, Nat.zero_add] using hout)
  simp only [Base64StepRef.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_encode,
    Base64Unroll8Opt.engine.general_purpose.GeneralPurpose.Insts.Base64EngineEngineGeneralPurposeConfigGeneralPurposeEstimate.internal_encode,
    Base64StepRef.engine.general_purpose.encode_helper,
    Base64Unroll8Opt.engine.general_purpose.encode_helper,
    Base64StepRef.engine.general_purpose.EngineGeneralPurposeGeneralPurposeConfigGeneralPurposeEstimate.internal_encode.closure.Insts.CoreOpsFunctionFnOncePairShared0SliceU8Mut1SliceU8PairUsizeUsize.call_once,
    Base64Unroll8Opt.engine.general_purpose.EngineGeneralPurposeGeneralPurposeConfigGeneralPurposeEstimate.internal_encode.closure.Insts.CoreOpsFunctionFnOncePairShared0SliceU8Mut1SliceU8PairUsizeUsize.call_once,
    Aeneas.Std.bind_ok, Aeneas.Std.uncurry_apply_pair, htable, htail]

#print axioms internal_encode_equiv

end Base64Unroll8Proof
