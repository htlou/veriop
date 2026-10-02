open Aeneas Aeneas.Std

theorem bool_negation_correct (b : Bool) : BoolNot.negate b = Result.ok (!b) := by
  cases b <;> rfl

theorem bool_branch_correct (b : Bool) :
    BoolNot.branch b = Result.ok (if b then 2#u8 else 1#u8) := by
  cases b <;> rfl

theorem bool_comparison_correct (x : U8) :
    BoolNot.negate_comparison x = Result.ok (decide (¬ x < 15#u8)) := by
  simp [BoolNot.negate_comparison]

theorem bool_token_correct (x : U8) : BoolNot.token_fits x =
    Result.ok (decide ((x &&& 15#u8) ≠ 15#u8 ∧ (x &&& 240#u8) ≠ 240#u8)) := by
  simp [BoolNot.token_fits, lift]
  split <;> simp_all <;> scalar_tac

#print axioms bool_negation_correct
#print axioms bool_branch_correct
#print axioms bool_comparison_correct
#print axioms bool_token_correct
