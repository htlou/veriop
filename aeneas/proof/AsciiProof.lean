import Base64Ascii.Base64Ascii
import Base64PairsValue.Base64PairsValue
import Mathlib.Tactic.IntervalCases

open Aeneas Aeneas.Std
open Base64PairsValue.engine.general_purpose
set_option maxHeartbeats 8000000

theorem encode_standard_spec (value : U8) (hvalue : value.val < 64) :
    Base64Ascii.engine.general_purpose.encode_standard value
      ⦃ result => result = encode_scalar_tail.STANDARD_ALPHABET.val[value.val]! ⦄ := by
  unfold Base64Ascii.engine.general_purpose.encode_standard
  by_cases h25 : value > 25#u8 <;>
    by_cases h51 : value > 51#u8 <;>
    by_cases h61 : value > 61#u8 <;>
    by_cases h62 : value > 62#u8
  all_goals try (exfalso; scalar_tac)
  all_goals simp only [h25, h51, h61, h62, ite_true, ite_false]
  all_goals step*
  all_goals
    apply UScalar.val_eq_imp
    interval_cases h : value.val <;>
      simp_all [encode_scalar_tail.STANDARD_ALPHABET]

#print axioms encode_standard_spec

theorem encode_standard_equiv (value : U8) (hvalue : value.val < 64) :
    Base64Ascii.engine.general_purpose.encode_standard value =
      Array.index_usize encode_scalar_tail.STANDARD_ALPHABET
        (UScalar.cast .Usize value) := by
  have hlookup : Array.index_usize encode_scalar_tail.STANDARD_ALPHABET
      (UScalar.cast .Usize value)
        ⦃ result => result = encode_scalar_tail.STANDARD_ALPHABET.val[value.val]! ⦄ := by
    step as ⟨result, hresult⟩
    simp_all
  obtain ⟨left, hl, heql⟩ := WP.spec_imp_exists (encode_standard_spec value hvalue)
  obtain ⟨right, hr, heqr⟩ := WP.spec_imp_exists hlookup
  exact hl.trans ((congrArg Result.ok (heql.trans heqr.symm)).trans hr.symm)

#print axioms encode_standard_equiv
