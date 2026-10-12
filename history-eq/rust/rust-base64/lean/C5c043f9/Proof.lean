import C5c043f9.DengOld.DengOld
import C5c043f9.DengNew.DengNew
open Aeneas Aeneas.Std Result
set_option linter.unusedSimpArgs false

/-! 5c043f9 "decode vec size -- don't oversize the vector".
`decode_engine` (public API): old builds `Vec::with_capacity(input.as_ref().len() * 4 / 3)`,
new builds `Vec::new()`, then both call `decode_engine_vec`.
Aeneas does not model Vec capacity (`with_capacity _ n = Vec.new`), but the old side still
evaluates `len * 4` with overflow checking (debug semantics), so the old code panics when
`len * 4 > usize::MAX`; the new code does not compute it. -/

namespace C5c043f9Proof

/-- The two Aeneas copies of `base64::decode::DecodeError` (same Rust type). -/
def errMap : B5c043f9DengOld.decode.DecodeError → B5c043f9DengNew.decode.DecodeError
  | .InvalidByte i b => .InvalidByte i b
  | .InvalidLength => .InvalidLength
  | .InvalidLastSymbol i b => .InvalidLastSymbol i b

def resMap {α : Type} : core.result.Result α B5c043f9DengOld.decode.DecodeError →
    core.result.Result α B5c043f9DengNew.decode.DecodeError
  | .Ok v => .Ok v
  | .Err e => .Err (errMap e)

/-- Field-wise transport of an `Engine` impl (old copy of the trait) to the new copy.
This is a bijection (errMap is), so quantifying over `instO` covers every pair of
corresponding impls. -/
def engMap {E C D : Type} (i : B5c043f9DengOld.engine.Engine E C D) :
    B5c043f9DengNew.engine.Engine E C D where
  ConfigInst := { encode_padding := i.ConfigInst.encode_padding }
  DecodeEstimateInst := { decoded_length_estimate := i.DecodeEstimateInst.decoded_length_estimate }
  encode := i.encode
  decoded_length_estimate := i.decoded_length_estimate
  decode := fun e inp buf est => do
    let (r, s) ← i.decode e inp buf est
    ok (resMap r, s)
  config := i.config

section
variable
  (htrunc : @B5c043f9DengOld.alloc.vec.Vec.truncate = @B5c043f9DengNew.alloc.vec.Vec.truncate)
  (hasmut : @B5c043f9DengOld.alloc.vec.Vec.as_mut_slice = @B5c043f9DengNew.alloc.vec.Vec.as_mut_slice)
  /- `core::result::Result::map` is the same external function on both sides; since it is
     generic in the error type `E`, "the same function" at the two Aeneas copies of
     `DecodeError` means it commutes with the copy isomorphism. -/
  (hmap : ∀ (inst : core.ops.function.FnOnce (alloc.vec.Vec U8) Unit (alloc.vec.Vec U8))
      (r : core.result.Result Unit B5c043f9DengOld.decode.DecodeError) (f : alloc.vec.Vec U8),
      B5c043f9DengNew.core.result.Result.map inst (resMap r) f =
        (do let x ← B5c043f9DengOld.core.result.Result.map inst r f; ok (resMap x)))

include htrunc hasmut in
theorem vec_rel {E T C D : Type} (instO : B5c043f9DengOld.engine.Engine E C D)
    (asRef : core.convert.AsRef T (Slice U8)) (input : T) (buffer : alloc.vec.Vec U8) (engine : E) :
    B5c043f9DengNew.decode.decode_engine_vec (engMap instO) asRef input buffer engine =
      (do let (r, b) ← B5c043f9DengOld.decode.decode_engine_vec instO asRef input buffer engine
          ok (resMap r, b)) := by
  unfold B5c043f9DengNew.decode.decode_engine_vec B5c043f9DengOld.decode.decode_engine_vec
  simp only [engMap, ← htrunc, ← hasmut]
  simp only [Std.bind_assoc]
  congr 1; funext input_bytes
  congr 1; funext estimate
  congr 1; funext i1
  congr 1; funext o
  congr 1; funext tle
  congr 1; funext buffer1
  congr 1; funext ⟨s, back⟩; simp only [Aeneas.Std.uncurry_apply_pair, Std.bind_assoc]
  congr 1; funext ⟨bs, iback⟩; simp only [Aeneas.Std.uncurry_apply_pair, Std.bind_assoc]
  congr 1; funext ⟨r, bs1⟩; simp only [Aeneas.Std.uncurry_apply_pair, Std.bind_assoc, bind_ok]
  cases r with
  | Ok v => simp [core.result.Result.Insts.CoreOpsTry.branch, resMap]
  | Err e => simp [core.result.Result.Insts.CoreOpsTry.branch, resMap, core.result.Result.Insts.CoreOpsTry_traitFromResidualResult.from_residual]



include htrunc hasmut hmap in
/-- Exact relation: the old code = (as_ref; len*4 (overflow-checked); /3) followed by the new
code (modulo the DecodeError copy). -/
theorem deng_rel {E T C D : Type} (instO : B5c043f9DengOld.engine.Engine E C D)
    (asRef : core.convert.AsRef T (Slice U8)) (input : T) (engine : E) :
    (do let r ← B5c043f9DengOld.decode.decode_engine instO asRef input engine; ok (resMap r)) =
    (do let s ← asRef.as_ref input
        let i1 ← s.len * 4#usize
        let _ ← i1 / 3#usize
        B5c043f9DengNew.decode.decode_engine (engMap instO) asRef input engine) := by
  unfold B5c043f9DengOld.decode.decode_engine B5c043f9DengNew.decode.decode_engine
  simp only [bind_tc_eq, Std.bind_assoc]
  congr 1; funext s
  congr 1; funext i1
  congr 1; funext i2
  rw [vec_rel htrunc hasmut]
  simp only [alloc.vec.Vec.with_capacity, bind_tc_eq, Std.bind_assoc, bind_ok]
  congr 1; funext ⟨r, b⟩
  simp only [Aeneas.Std.uncurry_apply_pair, bind_ok]
  rw [hmap]
  rfl

theorem mul4_ovf (n : Usize) (h : Usize.max < n.val * 4) :
    n * 4#usize = fail .integerOverflow := by
  show UScalar.mul n 4#usize = _
  unfold UScalar.mul UScalar.tryMk UScalar.tryMkOpt
  rw [dif_neg]
  · rfl
  · have := UScalar.check_bounds_eq_inBounds UScalarTy.Usize (n.val * (4#usize).val)
    rw [this]
    simp only [UScalar.inBounds]
    have hm : Usize.max = 2 ^ UScalarTy.Usize.numBits - 1 := by scalar_tac
    have h4 : (4#usize).val = 4 := by scalar_tac
    rw [h4]; omega


theorem mul4_ok (n : Usize) (h : n.val * 4 ≤ Usize.max) : ∃ z, n * 4#usize = ok z := by
  have hs : n * 4#usize ⦃ z => (↑z : Nat) = ↑n * ↑(4#usize) ⦄ :=
    UScalar.mul_spec (by have h4 : (4#usize).val = 4 := by scalar_tac
                         rw [h4]; scalar_tac)
  obtain ⟨z, hz, -⟩ := WP.spec_imp_exists hs
  exact ⟨z, hz⟩

theorem div3_ok (n : Usize) : ∃ z, n / 3#usize = ok z := by
  obtain ⟨z, hz, -⟩ := UScalar.div_spec n (y := 3#usize) (by scalar_tac)
  exact ⟨z, hz⟩

/-- On inputs whose `as_ref()` length `n` has `n * 4 > usize::MAX`, the OLD code panics
(integer overflow in `input.len() * 4`, debug semantics). -/
theorem deng_old_overflow {E T C D : Type} (instO : B5c043f9DengOld.engine.Engine E C D)
    (asRef : core.convert.AsRef T (Slice U8)) (input : T) (engine : E) (s : Slice U8)
    (has : asRef.as_ref input = ok s) (hov : Usize.max < s.len.val * 4) :
    B5c043f9DengOld.decode.decode_engine instO asRef input engine = fail .integerOverflow := by
  unfold B5c043f9DengOld.decode.decode_engine
  simp only [bind_tc_eq]
  rw [has, bind_ok, mul4_ovf _ hov, bind_fail]

include htrunc hasmut hmap in
/-- EQUIV whenever `as_ref().len() * 4` does not overflow (or `as_ref` itself does not return). -/
theorem deng_equiv_no_overflow {E T C D : Type} (instO : B5c043f9DengOld.engine.Engine E C D)
    (asRef : core.convert.AsRef T (Slice U8)) (input : T) (engine : E)
    (hno : ∀ s, asRef.as_ref input = ok s → s.len.val * 4 ≤ Usize.max) :
    B5c043f9DengNew.decode.decode_engine (engMap instO) asRef input engine =
      (do let r ← B5c043f9DengOld.decode.decode_engine instO asRef input engine; ok (resMap r)) := by
  have hr := deng_rel htrunc hasmut hmap instO asRef input engine
  simp only [bind_tc_eq] at hr ⊢
  rw [hr]
  cases h : asRef.as_ref input with
  | ret s =>
    obtain ⟨z, hz⟩ := mul4_ok s.len (hno s h)
    obtain ⟨w, hw⟩ := div3_ok z
    rw [bind_ok, hz, bind_ok, hw, bind_ok]
  | vis i k =>
    unfold B5c043f9DengNew.decode.decode_engine B5c043f9DengNew.decode.decode_engine_vec
    simp only [bind_tc_eq, Std.bind_assoc]
    rw [h, bind_vis, bind_vis]
    congr 1; funext x
    cases i with
    | fail e => exact PEmpty.elim x
  | div =>
    unfold B5c043f9DengNew.decode.decode_engine B5c043f9DengNew.decode.decode_engine_vec
    simp only [bind_tc_eq, Std.bind_assoc]
    rw [h, bind_div, bind_div]

include htrunc hasmut hmap in
/-- Refinement: whenever the old code returns, the new code returns the same value. -/
theorem deng_refines {E T C D : Type} (instO : B5c043f9DengOld.engine.Engine E C D)
    (asRef : core.convert.AsRef T (Slice U8)) (input : T) (engine : E) r
    (hold : B5c043f9DengOld.decode.decode_engine instO asRef input engine = ok r) :
    B5c043f9DengNew.decode.decode_engine (engMap instO) asRef input engine = ok (resMap r) := by
  by_cases hov : ∃ s, asRef.as_ref input = ok s ∧ Usize.max < s.len.val * 4
  · obtain ⟨s, has, hov⟩ := hov
    rw [deng_old_overflow instO asRef input engine s has hov] at hold
    exact absurd hold fail_not_ok
  · rw [deng_equiv_no_overflow htrunc hasmut hmap instO asRef input engine ?_, hold]
    simp only [bind_tc_eq, bind_ok]
    intro s hs
    have := not_exists.mp hov s
    by_contra hc
    exact this ⟨hs, by omega⟩

end
end C5c043f9Proof

#print axioms C5c043f9Proof.vec_rel
#print axioms C5c043f9Proof.deng_rel
#print axioms C5c043f9Proof.deng_old_overflow
#print axioms C5c043f9Proof.deng_equiv_no_overflow
#print axioms C5c043f9Proof.deng_refines
