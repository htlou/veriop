import Base64GroupProof

open Aeneas Aeneas.Std Aeneas.Std.Result
open Base64GroupProof
namespace Base64LoopGroupProof
set_option maxHeartbeats 2000000
set_option maxRecDepth 8192

-- The original loop can run one additional four-block iteration after the
-- eight-block loop stops. This helper retains that actual extracted body.
def finish4 (table : Array U8 64#usize) (input : Slice U8) (last : Usize)
    (output : Slice U8) (ii oi : Usize) : Result (Slice U8 × Usize × Usize) := do
  let r ← Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0.body
    24#usize table input last output ii oi
  match r with
  | .cont state => ok state
  | .done state => ok state

theorem loop4_unfold (table : Array U8 64#usize) (input output : Slice U8)
    (ii oi last : Usize) :
    Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0
      24#usize table input output ii oi last =
    (do
      let r ← Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0.body
        24#usize table input last output ii oi
      match r with
      | .cont (out, next_i, next_o) =>
        Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0
          24#usize table input out next_i next_o last
      | .done state => ok state) := by
  unfold Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0
  rw [loop]
  congr 1
  funext r
  cases r with
  | cont state =>
    rcases state with ⟨out, next_i, next_o⟩
    rfl
  | done state => rfl

theorem loop8_unfold (table : Array U8 64#usize) (input output : Slice U8)
    (ii oi last : Usize) :
    Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail_loop0
      48#usize table input output ii oi false last =
    (do
      let r ← Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail_loop0.body
        48#usize table input false last output ii oi
      match r with
      | .cont (out, next_i, next_o) =>
        Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail_loop0
          48#usize table input out next_i next_o false last
      | .done state => ok state) := by
  unfold Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail_loop0
  rw [loop]
  congr 1
  funext r
  cases r with
  | cont state =>
    rcases state with ⟨out, next_i, next_o⟩
    rfl
  | done state => rfl

theorem body4_done (table : Array U8 64#usize) (input output : Slice U8)
    (ii oi last : Usize) (hstop : ¬ ii.val ≤ last.val) :
    Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0.body
      24#usize table input last output ii oi = ok (.done (output, ii, oi)) := by
  unfold Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0.body
  simp only [UScalar.le_equiv, if_neg hstop]

theorem body8_done (table : Array U8 64#usize) (input output : Slice U8)
    (ii oi last : Usize) (hstop : ¬ ii.val ≤ last.val) :
    Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail_loop0.body
      48#usize table input false last output ii oi = ok (.done (output, ii, oi)) := by
  unfold Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail_loop0.body
  simp only [UScalar.le_equiv, if_neg hstop]

theorem scalar_fast_loops_equiv (table : Array U8 64#usize) (input : Slice U8)
    (last4 last8 : Usize) (hlast4 : last4.val + 26 = input.length)
    (hlast8 : last8.val + 50 = input.length) (output : Slice U8) (ii oi : Usize)
    (hin : ii.val ≤ input.length)
    (hout : oi.val + 4 * ((input.length - ii.val) / 3) ≤ output.length) :
    Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0
      24#usize table input output ii oi last4 =
    (do
      let (out, next_i, next_o) ←
        Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail_loop0
          48#usize table input output ii oi false last8
      finish4 table input last4 out next_i next_o) := by
  generalize hn : input.length - ii.val = remaining
  induction remaining using Nat.strong_induction_on generalizing output ii oi with
  | h remaining ih =>
    by_cases h8 : ii.val ≤ last8.val
    · obtain ⟨r4, hr4, i4, o4, he4, hi4, ho4⟩ := WP.spec_imp_exists
        (scalar4_body_spec table input output ii oi last4 (by omega) (by omega) (by omega))
      subst r4
      let out4 := emitFour output oi.val table input ii.val (by omega)
      have hlen4 : out4.length = output.length := by simp [out4]
      obtain ⟨r44, hr44, i44, o44, he44, hi44, ho44⟩ := WP.spec_imp_exists
        (scalar4_body_spec table input out4 i4 o4 last4 (by omega) (by omega) (by omega))
      subst r44
      let out44 := emitFour out4 o4.val table input i4.val (by omega)
      have hlen44 : out44.length = output.length := by simp [out44, out4]
      have hr8 : Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail_loop0.body
          48#usize table input false last8 output ii oi = ok (.cont (out44, i44, o44)) := by
        rw [scalar8_two_scalar4 table input output ii oi last8 last4 h8 (by omega) (by omega) (by omega)]
        simp only [hr4, Aeneas.Std.bind_ok, Aeneas.Std.uncurry_apply_pair]
        exact hr44
      rw [loop4_unfold, hr4]
      simp only [Aeneas.Std.bind_ok, Aeneas.Std.uncurry_apply_pair]
      rw [loop4_unfold, hr44]
      simp only [Aeneas.Std.bind_ok, Aeneas.Std.uncurry_apply_pair]
      rw [loop8_unfold, hr8]
      simp only [Aeneas.Std.bind_assoc, Aeneas.Std.bind_ok, Aeneas.Std.uncurry_apply_pair]
      apply ih (input.length - i44.val) (by omega) out44 i44 o44
      · omega
      · omega
      · rfl
    · rw [loop8_unfold, body8_done table input output ii oi last8 h8]
      simp only [Aeneas.Std.bind_ok, Aeneas.Std.uncurry_apply_pair]
      unfold finish4
      rw [loop4_unfold]
      by_cases h4 : ii.val ≤ last4.val
      · obtain ⟨r4, hr4, i4, o4, he4, hi4, ho4⟩ := WP.spec_imp_exists
          (scalar4_body_spec table input output ii oi last4 h4 (by omega) (by omega))
        subst r4
        simp only [hr4, Aeneas.Std.bind_ok, Aeneas.Std.uncurry_apply_pair]
        rw [loop4_unfold, body4_done table input _ i4 o4 last4 (by omega)]
        simp only [Aeneas.Std.bind_ok, Aeneas.Std.uncurry_apply_pair]
      · simp only [body4_done table input output ii oi last4 h4, Aeneas.Std.bind_ok, Aeneas.Std.uncurry_apply_pair]

#print axioms scalar_fast_loops_equiv

theorem fast_loops_equiv_if (table : Array U8 64#usize) (input : Slice U8)
    (last4 last8 : Usize) (hlast4 : last4.val + 26 = input.length)
    (hlast8 : last8.val + 50 = input.length) (output : Slice U8) (ii oi : Usize)
    (flag : Bool)
    (hflag : flag = true → table = Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail.STANDARD_ALPHABET)
    (hin : ii.val ≤ input.length)
    (hout : oi.val + 4 * ((input.length - ii.val) / 3) ≤ output.length) :
    Base64StepRef.engine.general_purpose.encode_scalar_tail_loop0
      24#usize table input output ii oi last4 =
    (do
      let (out, next_i, next_o) ←
        Base64Unroll8Opt.engine.general_purpose.encode_scalar_tail_loop0
          48#usize table input output ii oi flag last8
      finish4 table input last4 out next_i next_o) := by
  rw [Base64Unroll8Step.fast_loop_pairs_equiv_if 48#usize table input output ii oi flag last8 hflag]
  exact scalar_fast_loops_equiv table input last4 last8 hlast4 hlast8 output ii oi hin hout

#print axioms fast_loops_equiv_if
end Base64LoopGroupProof
