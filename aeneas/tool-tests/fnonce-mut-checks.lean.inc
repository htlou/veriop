
open Aeneas Aeneas.Std

theorem replace_semantics (value replacement : U8) :
    FnonceMut.replace value replacement = Result.ok (value, replacement) := by
  with_unfolding_all rfl

theorem identity_semantics (value : U8) :
    FnonceMut.identity value = Result.ok value := by
  with_unfolding_all rfl

theorem swap_semantics (x y : U8) :
    FnonceMut.swap x y = Result.ok (x, y, x) := by
  with_unfolding_all rfl

#print axioms replace_semantics
#print axioms identity_semantics
#print axioms swap_semantics
