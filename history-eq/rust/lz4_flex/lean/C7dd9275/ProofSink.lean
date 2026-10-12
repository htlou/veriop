import C7dd9275.ModsinkBoth
open Aeneas Aeneas.Std Result

namespace C7dd9275.ProofSink

noncomputable abbrev Old := L7dd9275ModsinkOld.sink.SliceSink.extend_from_within
noncomputable abbrev New := L7dd9275ModsinkNew.sink.SliceSink.extend_from_within

/-- (i-strong) Old is exactly "the two removed checks, then New". Note that the old checks
    include the (overflow-checked) addition `start + copy_len`. -/
theorem old_eq_checks_then_new (self : sink.SliceSink) (start wild_len copy_len : Usize) :
    Old self start wild_len copy_len =
      (do
        massert (copy_len ≤ wild_len)
        let i ← start + copy_len
        massert (i ≤ self.pos)
        New self start wild_len copy_len) := by
  rfl

#print axioms old_eq_checks_then_new

/-- (i) Refinement: whenever Old does not fail, Old and New have the same result
    (in particular the same `ok` value, and the same divergence behaviour). -/
theorem refines (self : sink.SliceSink) (start wild_len copy_len : Usize)
    (h : ∀ e, Old self start wild_len copy_len ≠ fail e) :
    Old self start wild_len copy_len = New self start wild_len copy_len := by
  rw [old_eq_checks_then_new] at h ⊢
  by_cases h1 : copy_len.val ≤ wild_len.val
  · by_cases hov : start.val + copy_len.val ≤ Usize.max
    · obtain ⟨i, ei, hi⟩ := WP.spec_imp_exists (Usize.add_spec (x := start) (y := copy_len) hov)
      by_cases h2 : i.val ≤ self.pos.val
      · simp [massert, h1, h2, ei]
      · exfalso
        exact h .assertionFailure (by simp [massert, h1, h2, ei])
    · exfalso
      have e : (start + copy_len : Result Usize) = fail .integerOverflow := by
        show UScalar.tryMk _ _ = _
        simp only [UScalar.tryMk, UScalar.tryMkOpt]
        rw [dif_neg]
        · rfl
        · rw [UScalar.check_bounds_eq_inBounds]
          simp [UScalar.inBounds]
          rw [Usize.max_def] at hov
          simp only [Usize.numBits, UScalarTy.numBits] at hov ⊢
          omega
      exact h .integerOverflow (by simp [massert, h1, e])
  · exfalso
    exact h .assertionFailure (by simp [massert, h1])

#print axioms refines

/-! (ii) Strictness witness attempt: with `copy_len > wild_len`, Old fails on the first assert,
    while New's result is *exactly* the opaque `copy_within` call followed by a successful
    `pos + copy_len`; since `copy_within` is an uninterpreted axiom, New's failure/success is
    not determined in the model, so strictness cannot be proved. -/

def out0 : Slice U8 := Slice.from [0#u8] (by simp; scalar_tac)
def self0 : sink.SliceSink := { output := out0, pos := 0#usize }

theorem witness_old : Old self0 0#usize 0#usize 1#usize = fail .assertionFailure := by
  simp [Old, L7dd9275ModsinkOld.sink.SliceSink.extend_from_within, massert]

#print axioms witness_old

theorem witness_new : New self0 0#usize 0#usize 1#usize =
    (do
      let s ← core.slice.Slice.copy_within
        (core.ops.range.Range.Insts.CoreOpsRangeRangeBounds Std.Usize)
        core.marker.CopyU8 out0 { start := 0#usize, «end» := 0#usize } 0#usize
      ok ({ output := s, pos := 1#usize },
          fun self1 => ({ self0 with output := self1.output } : sink.SliceSink))) := by
  have e1 : (0#usize + 0#usize : Result Usize) = ok 0#usize := by
    obtain ⟨i, ei, hi⟩ := WP.spec_imp_exists (Usize.add_spec (x := 0#usize) (y := 0#usize) (by scalar_tac))
    rw [ei]; congr 1; scalar_tac
  have e2 : (0#usize + 1#usize : Result Usize) = ok 1#usize := by
    obtain ⟨i, ei, hi⟩ := WP.spec_imp_exists (Usize.add_spec (x := 0#usize) (y := 1#usize) (by scalar_tac))
    rw [ei]; congr 1; scalar_tac
  simp [New, L7dd9275ModsinkNew.sink.SliceSink.extend_from_within, self0, e1, e2]

#print axioms witness_new

/-- Conditional strictness: assuming the (Rust-guaranteed) success of the opaque
    `copy_within` on the empty in-bounds range `0..0` with destination `0` of a 1-byte slice,
    Old fails while New succeeds. The hypothesis is NOT provable in the model since
    `copy_within` is an uninterpreted axiom. -/
theorem strict_if_copy_within_ok
    (hcw : ∃ s, core.slice.Slice.copy_within
        (core.ops.range.Range.Insts.CoreOpsRangeRangeBounds Std.Usize)
        core.marker.CopyU8 out0 { start := 0#usize, «end» := 0#usize } 0#usize = ok s) :
    Old self0 0#usize 0#usize 1#usize = fail .assertionFailure ∧
      ∃ r, New self0 0#usize 0#usize 1#usize = ok r := by
  refine ⟨witness_old, ?_⟩
  obtain ⟨s, hs⟩ := hcw
  rw [witness_new, hs]
  exact ⟨_, bind_tc_ok _ _⟩

#print axioms strict_if_copy_within_ok

end C7dd9275.ProofSink
