import Aeneas
import Mathlib.Tactic.IntervalCases

open Aeneas Aeneas.Std
set_option maxHeartbeats 2000000

-- Index identities used by the actual three-byte pair-table remainder path.
-- These are supporting lemmas, not replacement models of the Rust functions.
theorem tail_pair_indices (a b c : BitVec 8) :
    (((a.setWidth 16 <<< 4) ||| (b.setWidth 16 >>> 4)) >>> 6 = (a >>> 2).setWidth 16) ∧
    (((a.setWidth 16 <<< 4) ||| (b.setWidth 16 >>> 4)) &&& 63 =
      (((a <<< 4) ||| (b >>> 4)) &&& 63).setWidth 16) ∧
    ((((b.setWidth 16 &&& 15) <<< 8) ||| c.setWidth 16) >>> 6 =
      (((b <<< 2) ||| (c >>> 6)) &&& 63).setWidth 16) ∧
    ((((b.setWidth 16 &&& 15) <<< 8) ||| c.setWidth 16) &&& 63 = (c &&& 63).setWidth 16) := by
  repeat' constructor
  all_goals
    apply BitVec.eq_of_getLsbD_eq
    intro i hi
    interval_cases i <;> simp

#print axioms tail_pair_indices

theorem tail_pair_nat_indices (a b c : U8) :
    let first := (a.val <<< 4) ||| (b.val >>> 4)
    let second := ((b.val &&& 15) <<< 8) ||| c.val
    first < 4096 ∧ second < 4096 ∧
    first >>> 6 = a.val >>> 2 ∧
    first &&& 63 = (((a.val <<< 4) % 256) ||| (b.val >>> 4)) &&& 63 ∧
    second >>> 6 = (((b.val <<< 2) % 256) ||| (c.val >>> 6)) &&& 63 ∧
    second &&& 63 = c.val &&& 63 := by
  dsimp only
  have ha : a.val < 256 := by scalar_tac
  have hb : b.val < 256 := by scalar_tac
  have hc : c.val < 256 := by scalar_tac
  have hmask : b.val &&& 15 ≤ 15 := Nat.and_le_right
  have has : a.val <<< 4 < 4096 := by simpa only [Nat.shiftLeft_eq] using (show a.val * 16 < 4096 by omega)
  have hbs : (b.val &&& 15) <<< 8 < 4096 := by
    simpa only [Nat.shiftLeft_eq] using (show (b.val &&& 15) * 256 < 4096 by omega)
  have hbr : b.val >>> 4 < 4096 := by simp only [Nat.shiftRight_eq_div_pow]; omega
  have hf := Nat.or_lt_two_pow (n := 12) has hbr
  have hs := Nat.or_lt_two_pow (n := 12) hbs (show c.val < 4096 by omega)
  refine ⟨hf, hs, ?_⟩
  obtain ⟨h0, h1, h2, h3⟩ := tail_pair_indices a.bv b.bv c.bv
  have n0 := congrArg BitVec.toNat h0
  have n1 := congrArg BitVec.toNat h1
  have n2 := congrArg BitVec.toNat h2
  have n3 := congrArg BitVec.toNat h3
  have h15 : (15 : BitVec 16).toNat = 15 := rfl
  have h63 : (63 : BitVec 16).toNat = 63 := rfl
  have h63b : (63 : BitVec 8).toNat = 63 := rfl
  simp only [BitVec.toNat_ushiftRight, BitVec.toNat_and, BitVec.toNat_or,
    BitVec.toNat_shiftLeft, BitVec.toNat_setWidth_of_le (by decide : 8 ≤ 16),
    UScalar.bv_toNat, h15, h63, h63b, Nat.reducePow,
    Nat.mod_eq_of_lt (show a.val <<< 4 < 65536 by omega),
    Nat.mod_eq_of_lt (show (b.val &&& 15) <<< 8 < 65536 by omega)] at n0 n1 n2 n3
  exact ⟨n0, n1, n2, n3⟩

#print axioms tail_pair_nat_indices
