import Cae7823d.ApidBoth
open Aeneas Aeneas.Std Result
set_option maxHeartbeats 4000000
set_option linter.unusedSimpArgs false
set_option linter.unusedTactic false

theorem uext {ty} {a b : UScalar ty} (h : a.val = b.val) : a = b := by
  rw [UScalar.eq_equiv_bv_eq]; apply BitVec.eq_of_toNat_eq; exact h

theorem uadd_ok {ty} (x y : UScalar ty) (h : x.val + y.val < 2^ty.numBits) :
    x + y = ok (UScalar.ofNatCore (x.val + y.val) h) := by
  have hm : x.val + y.val ≤ UScalar.max ty := by
    rw [UScalar.max]; omega
  obtain ⟨w, hw, hv⟩ := WP.spec_imp_exists (UScalar.add_spec hm)
  rw [hw]; congr 1; apply uext; rw [hv, UScalar.ofNatCore_val_eq]

theorem usub_fail {ty} (x y : UScalar ty) (h : x.val < y.val) :
    x - y = fail .integerOverflow := by
  simp only [HSub.hSub, UScalar.sub, if_pos h]

def cexInput : Slice U8 :=
  Slice.from ([0#u8, 1#u8] ++ List.replicate 18 0#u8) (by simp; scalar_tac)

def cexOutput : block.Sink :=
  { output := Slice.from (List.replicate 16 0#u8) (by simp; scalar_tac), pos := 0#usize }

theorem cexInput_len : cexInput.len = 20#usize := by
  apply uext; simp [cexInput]
@[simp] theorem cexInput_val : cexInput.val = [0#u8, 1#u8] ++ List.replicate 18 0#u8 := by
  simp [cexInput]
theorem sat20 : core.num.Usize.saturating_sub 20#usize 18#usize = 2#usize := by
  apply uext
  simp only [core.num.Usize.saturating_sub, UScalar.saturating_sub]
  first
  | (simp only [UScalar.val, BitVec.toNat_ofNat]; simp only [UScalar.val] at *; rw [Nat.mod_eq_of_lt (by scalar_tac)]; simp)
  | scalar_tac
theorem add0_1 : (0#usize + 1#usize : Result Usize) = ok 1#usize := by
  rw [uadd_ok _ _ (by scalar_tac)]; congr 1
theorem add1_0 : (1#usize + 0#usize : Result Usize) = ok 1#usize := by
  rw [uadd_ok _ _ (by scalar_tac)]; congr 1
theorem and0_15 : (0#u8 &&& 15#u8) = 0#u8 := by rfl
theorem and0_240 : (0#u8 &&& 240#u8) = 0#u8 := by rfl
theorem shr0 : (0#u8 >>> 4#i32 : Result U8) = ok 0#u8 := by rfl
theorem cast0 : UScalar.cast .Usize 0#u8 = 0#usize := by
  apply uext; simp [UScalar.cast_val_eq]

theorem old_eval : ∃ v, Lae7823dApidOld.block.decompress_safe.decompress_into cexInput cexOutput = ok v ∧
    v.1 = .Err .OffsetOutOfBounds := by
  unfold Lae7823dApidOld.block.decompress_safe.decompress_into
    Lae7823dApidOld.block.decompress_safe.decompress_into_with_dict
  unfold Lae7823dApidOld.block.decompress_safe.decompress_into_with_dict_loop
  simp [cexInput_len, core.slice.Slice.is_empty, Lae7823dApidOld.block.Sink.impl.pos,
    Std.Array.to_slice, Std.Array.empty, sat20, add0_1, add1_0, and0_15, and0_240, shr0, cast0,
    Lae7823dApidOld.block.decompress_safe.does_token_fit,
    Lae7823dApidOld.block.decompress_safe.is_safe_distance,
    Lae7823dApidOld.block.decompress_safe.read_u16,
    Lae7823dApidOld.block.Sink.extend_from_slice,
    Lae7823dApidOld.block.decompress_safe.copy_from_dict,
    Lae7823dApidOld.block.decompress_safe.FIT_TOKEN_MASK_LITERAL,
    Lae7823dApidOld.block.decompress_safe.FIT_TOKEN_MASK_MATCH, lift]
  all_goals trace_state
  all_goals sorry
