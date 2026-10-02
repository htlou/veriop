import Base64Unroll8PublicRef.Base64Unroll8PublicRef

open Aeneas Aeneas.Std Aeneas.Std.Result
namespace Base64CapacityProof
set_option maxHeartbeats 2000000
set_option maxRecDepth 8192

theorem checked_add_lower (a b size : Usize) (h : Usize.checked_add a b = some size) :
    a.val ≤ size.val := by
  have hs := Usize.checked_add_bv_spec a b
  rw [h] at hs
  omega

theorem encoded_len_spec (bytes_len : Usize) (padding : Bool) :
    Base64Unroll8PublicRef.encode.encoded_len bytes_len padding ⦃ o =>
      ∀ size, o = some size → 4 * (bytes_len.val / 3) ≤ size.val ⦄ := by
  unfold Base64Unroll8PublicRef.encode.encoded_len
  step*
  all_goals simp_all only [Option.some.injEq, reduceCtorEq, false_implies,
    forall_const, forall_eq']
  all_goals try (split <;> simp only [Aeneas.Std.bind_ok, WP.spec_ok])
  all_goals intro size hs
  all_goals have hl := checked_add_lower _ _ size hs
  all_goals scalar_tac

#print axioms encoded_len_spec
end Base64CapacityProof
