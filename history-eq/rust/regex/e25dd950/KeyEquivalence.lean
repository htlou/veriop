import Key

open Aeneas Aeneas.Std RegexDfaKey

theorem clone_vec_u8 (v : alloc.vec.Vec U8) :
    alloc.vec.CloneVec.clone core.clone.CloneU8 v = .ok v := by
  have h : ∀ x ∈ v.slice.val, core.clone.CloneU8.clone x = .ok x := by
    intro x hx
    simp [core.clone.CloneU8, core.clone.impls.CloneU8.clone]
  have hs := Slice.clone_spec (s := v.slice) h
  obtain ⟨s, hres, heq⟩ := spec_imp_exists hs
  simp [alloc.vec.CloneVec.clone, hres, ← heq]

theorem finish_equal (v : alloc.vec.Vec U8) (flags : U8) (isMatch : Bool) :
    old_finish v flags isMatch =
      (do let pair ← new_finish v flags isMatch; .ok pair.1) := by
  simp [old_finish, new_finish, clone_vec_u8]
