open Aeneas Aeneas.Std

theorem never_branch_correct (b : Bool) :
    NeverCall.branch b = (if b then Result.fail Error.panic else Result.ok 7#u8) := by
  cases b <;> simp [NeverCall.branch, NeverCall.panic_now]

theorem never_spin_diverges : NeverCall.spin = Result.div := by
  have h : WP.dspec NeverCall.spin (fun _ => False) := by
    apply NeverCall.spin.fixpoint_induct
      (motive := fun r => WP.dspec r (fun _ => False))
    · exact WP.dspec_admissible _
    · intro r hr
      cases hr with
      | ret h => contradiction
      | div => simpa using (WP.dspec.div (fun _ : Never => False))
  have only_div (r : Result Never) (hr : WP.dspec r (fun _ => False)) :
      r = Result.div := by
    cases hr with
    | ret h => contradiction
    | div => rfl
  exact only_div _ h

theorem never_call_preserves_divergence : NeverCall.call_spin = Result.div := by
  simp [NeverCall.call_spin, never_spin_diverges]

#print axioms never_branch_correct
#print axioms never_spin_diverges
#print axioms never_call_preserves_divergence
