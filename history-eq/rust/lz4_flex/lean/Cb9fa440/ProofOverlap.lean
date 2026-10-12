import Cb9fa440.ApidBoth
open Aeneas Aeneas.Std Result

/-!
# b9fa440 "Optimize safe decoder": `duplicate_overlapping_slice` (and `duplicate_slice`)
-/

namespace Pb9fa440Overlap

abbrev OldDOS := Lb9fa440ApidOld.block.decompress_safe.duplicate_overlapping_slice
abbrev NewDOS := Lb9fa440ApidNew.block.decompress_safe.duplicate_overlapping_slice
abbrev OldLoop := Lb9fa440ApidOld.block.decompress_safe.duplicate_overlapping_slice_loop
abbrev NewLoop := Lb9fa440ApidNew.block.decompress_safe.duplicate_overlapping_slice_loop

/-- The byte-copy loops of the two versions are the same function. -/
theorem loop_eq : OldLoop = NewLoop := by
  with_unfolding_all rfl

#print axioms loop_eq

/-- Empty range: the loop returns its inputs unchanged. -/
theorem loop_none (r : core.ops.range.Range Std.Usize) (back : Slice Std.U8 → Slice Std.U8)
    (s : Slice Std.U8) (i : Std.Usize) (h : r.end.val ≤ r.start.val) :
    NewLoop r back s i = ok (s, i, back) := by
  rw [NewLoop, Lb9fa440ApidNew.block.decompress_safe.duplicate_overlapping_slice_loop]
  obtain ⟨⟨o, r'⟩, hn, ho, hr⟩ :=
    WP.spec_imp_exists (core.iter.range.IteratorRange.next_Usize_none_spec r h)
  rw [hn]
  subst ho
  simp

#print axioms loop_none

/-- Non-empty range whose first source index is out of bounds: the loop fails. -/
theorem loop_oob (r : core.ops.range.Range Std.Usize) (back : Slice Std.U8 → Slice Std.U8)
    (s : Slice Std.U8) (i : Std.Usize) (h : r.start.val < r.end.val)
    (hoob : s.length ≤ r.start.val) :
    NewLoop r back s i = fail .arrayOutOfBounds := by
  rw [NewLoop, Lb9fa440ApidNew.block.decompress_safe.duplicate_overlapping_slice_loop]
  obtain ⟨⟨o, r'⟩, hn, ho, -, -⟩ :=
    WP.spec_imp_exists (core.iter.range.IteratorRange.next_Usize_some_spec r h)
  rw [hn]
  subst ho
  have hidx : Slice.index_usize s r.start = fail .arrayOutOfBounds := by
    simp only [Slice.index_usize]
    rw [show s[r.start]? = none from ?_]
    simp [Slice.getElem?_Usize_eq]
    scalar_tac
  simp [Lb9fa440ApidNew.block.Sink.as_slice, hidx]

#print axioms loop_oob

/-! ## (a) Counterexamples (raw level) -/

def empty : Slice Std.U8 := Slice.from [] (by simp)
def out1 : Slice Std.U8 := Slice.from [7#u8] (by simp; scalar_tac)

theorem len_empty : Slice.len empty = 0#usize := by
  apply UScalar.eq_of_val_eq
  simp [empty]

/-- Witness A: offset = 1, pos = 0, output = [7] (satisfies pos ≤ len and len ≠ 0).
    Old panics on `pos - 1` (usize underflow). -/
theorem cexA_old :
    OldDOS { output := out1, pos := 0#usize } 1#usize 0#usize = fail .integerOverflow := by
  have : (0#usize - 1#usize : Result Usize) = fail .integerOverflow := by
    show UScalar.sub _ _ = _
    simp [UScalar.sub]
  simp [OldDOS, Lb9fa440ApidOld.block.decompress_safe.duplicate_overlapping_slice,
    Lb9fa440ApidOld.block.Sink.as_slice, Lb9fa440ApidOld.block.Sink.impl.pos, this]

#print axioms cexA_old

/-- Witness A, New: returns `Err(OffsetOutOfBounds)` with the sink unchanged. -/
theorem cexA_new : ∃ b,
    NewDOS { output := out1, pos := 0#usize } 1#usize 0#usize =
      ok (.Err .OffsetOutOfBounds, { output := out1, pos := 0#usize }, b) := by
  simp [NewDOS, Lb9fa440ApidNew.block.decompress_safe.duplicate_overlapping_slice,
    Lb9fa440ApidNew.block.Sink.as_slice, Lb9fa440ApidNew.block.Sink.impl.pos, lift]

#print axioms cexA_new

theorem cexA_ne :
    OldDOS { output := out1, pos := 0#usize } 1#usize 0#usize ≠
      NewDOS { output := out1, pos := 0#usize } 1#usize 0#usize := by
  obtain ⟨b, hb⟩ := cexA_new
  rw [cexA_old, hb]
  simp

#print axioms cexA_ne

/-- Witness B: empty output, pos = 0, offset = 0, match_length = 0.
    Satisfies the Sink invariant pos ≤ output.len, yet Old returns
    `Err(UnexpectedOutputEmpty)` while New returns `Ok(())`: both defined, different. -/
theorem cexB_old : ∃ b,
    OldDOS { output := empty, pos := 0#usize } 0#usize 0#usize =
      ok (.Err .UnexpectedOutputEmpty, { output := empty, pos := 0#usize }, b) := by
  simp [OldDOS, Lb9fa440ApidOld.block.decompress_safe.duplicate_overlapping_slice,
    Lb9fa440ApidOld.block.Sink.impl.pos, lift, len_empty]

#print axioms cexB_old

theorem cexB_new : ∃ b,
    NewDOS { output := empty, pos := 0#usize } 0#usize 0#usize =
      ok (.Ok (), { output := empty, pos := 0#usize }, b) := by
  obtain ⟨z, hz, hzv⟩ := WP.spec_imp_exists
    (Usize.add_spec (x := 0#usize) (y := 0#usize) (by scalar_tac))
  have hz0 : z = 0#usize := by scalar_tac
  subst hz0
  simp [NewDOS, Lb9fa440ApidNew.block.decompress_safe.duplicate_overlapping_slice,
    Lb9fa440ApidNew.block.Sink.impl.pos, lift, hz, loop_none]

#print axioms cexB_new

theorem cexB_ne :
    OldDOS { output := empty, pos := 0#usize } 0#usize 0#usize ≠
      NewDOS { output := empty, pos := 0#usize } 0#usize 0#usize := by
  obtain ⟨b, hb⟩ := cexB_old
  obtain ⟨b', hb'⟩ := cexB_new
  rw [hb, hb']
  simp

#print axioms cexB_ne

/-- Witness C (violates the Sink invariant pos ≤ output.len, as in the task):
    empty output, pos = 5, offset = 2, match_length = 1.
    Old returns `Err(UnexpectedOutputEmpty)`; New panics (index 3 out of bounds). -/
theorem cexC_old : ∃ b,
    OldDOS { output := empty, pos := 5#usize } 2#usize 1#usize =
      ok (.Err .UnexpectedOutputEmpty, { output := empty, pos := 5#usize }, b) := by
  have hos : core.num.Usize.overflowing_sub 5#usize 2#usize = (3#usize, false) := by
    have := core.num.Usize.overflowing_sub_eq 5#usize 2#usize
    generalize core.num.Usize.overflowing_sub 5#usize 2#usize = p at this ⊢
    obtain ⟨a, c⟩ := p
    simp at this
    obtain ⟨h1, rfl⟩ := this
    simp only [Prod.mk.injEq, and_true]
    scalar_tac
  simp [OldDOS, Lb9fa440ApidOld.block.decompress_safe.duplicate_overlapping_slice,
    Lb9fa440ApidOld.block.Sink.impl.pos, lift, len_empty, hos]

#print axioms cexC_old

theorem cexC_new :
    NewDOS { output := empty, pos := 5#usize } 2#usize 1#usize = fail .arrayOutOfBounds := by
  have hos : core.num.Usize.overflowing_sub 5#usize 2#usize = (3#usize, false) := by
    have := core.num.Usize.overflowing_sub_eq 5#usize 2#usize
    generalize core.num.Usize.overflowing_sub 5#usize 2#usize = p at this ⊢
    obtain ⟨a, c⟩ := p
    simp at this
    obtain ⟨h1, rfl⟩ := this
    simp only [Prod.mk.injEq, and_true]
    scalar_tac
  obtain ⟨z, hz, hzv⟩ := WP.spec_imp_exists
    (Usize.add_spec (x := 3#usize) (y := 1#usize) (by scalar_tac))
  have hz4 : z = 4#usize := by scalar_tac
  subst hz4
  simp [NewDOS, Lb9fa440ApidNew.block.decompress_safe.duplicate_overlapping_slice,
    Lb9fa440ApidNew.block.Sink.impl.pos, lift, hos, hz]
  have hl := loop_oob { start := 3#usize, «end» := 4#usize } (fun s1 => s1) empty 5#usize
    (by simp) (by simp [empty])
  simp only [NewLoop] at hl
  simp [hl]

#print axioms cexC_new

theorem cexC_ne :
    OldDOS { output := empty, pos := 5#usize } 2#usize 1#usize ≠
      NewDOS { output := empty, pos := 5#usize } 2#usize 1#usize := by
  obtain ⟨b, hb⟩ := cexC_old
  rw [hb, cexC_new]
  simp

#print axioms cexC_ne

/-! ## (b) Refinement -/

/-- General characterisation: whenever Old does not panic, either New returns the
    very same result, or Old returned `Err(UnexpectedOutputEmpty)` (the removed
    `checked-decode` guard, reachable only when `output.len = 0`). -/
theorem dos_refines_general (sink : block.Sink) (offset ml : Std.Usize)
    (hnf : ∀ e, OldDOS sink offset ml ≠ fail e) :
    OldDOS sink offset ml = NewDOS sink offset ml ∨
      (sink.output.length = 0 ∧
        ∃ b, OldDOS sink offset ml = ok (.Err .UnexpectedOutputEmpty, sink, b)) := by
  simp only [OldDOS, NewDOS, Lb9fa440ApidOld.block.decompress_safe.duplicate_overlapping_slice,
    Lb9fa440ApidNew.block.decompress_safe.duplicate_overlapping_slice,
    Lb9fa440ApidOld.block.Sink.impl.pos, Lb9fa440ApidNew.block.Sink.impl.pos,
    Lb9fa440ApidOld.block.Sink.as_slice, Lb9fa440ApidNew.block.Sink.as_slice, lift, loop_eq]
    at hnf ⊢
  simp only [bind_ok] at hnf ⊢
  have hos := core.num.Usize.overflowing_sub_eq sink.pos offset
  generalize core.num.Usize.overflowing_sub sink.pos offset = p at hos ⊢
  obtain ⟨start, b⟩ := p
  by_cases h1 : offset = 1#usize
  · subst h1
    left
    simp only [if_true] at hnf ⊢
    by_cases hp : sink.pos.val = 0
    · exfalso
      have : (sink.pos - 1#usize : Result Usize) = fail .integerOverflow := by
        show UScalar.sub _ _ = _
        simp [UScalar.sub, hp]
      apply hnf .integerOverflow
      simp [this]
    · obtain ⟨z, hz, hzv, -⟩ := WP.spec_imp_exists
        (Usize.sub_spec (x := sink.pos) (y := 1#usize) (by scalar_tac))
      have hlt : ¬ (sink.pos.val < (1#usize).val) := by simp; omega
      simp only [hlt, if_false] at hos
      obtain ⟨hs, rfl⟩ := hos
      have : z = start := by scalar_tac
      subst this
      simp [hz]
  · simp only [h1, if_false]
    cases b
    · by_cases hlen : Slice.len sink.output = 0#usize
      · right
        refine ⟨?_, fun sink1 => { sink with output := sink1.output }, ?_⟩
        · have := congrArg UScalar.val hlen; simpa using this
        · simp [hlen]
      · left
        simp [hlen]
    · left
      simp

#print axioms dos_refines_general

/-- REFINES (raw level) under the precondition `output.len ≠ 0`:
    whenever Old does not panic, New returns exactly the same result. -/
theorem dos_refines (sink : block.Sink) (offset ml : Std.Usize)
    (hne : sink.output.length ≠ 0)
    (hnf : ∀ e, OldDOS sink offset ml ≠ fail e) :
    OldDOS sink offset ml = NewDOS sink offset ml := by
  rcases dos_refines_general sink offset ml hnf with h | ⟨h, -⟩
  · exact h
  · exact absurd h hne

#print axioms dos_refines

/-- The same, stated with the Sink invariant `pos ≤ output.len` plus non-empty output.
    Witness A (`cexA_*`: output = [7], pos = 0, offset = 1) satisfies this
    precondition and Old panics there while New returns `Err(OffsetOutOfBounds)`,
    so the refinement is strict (REFINES, not EQUIV). Witness B (`cexB_*`) shows the
    non-emptiness hypothesis cannot be dropped: with `pos ≤ len` alone, Old and New
    both return (different) values. -/
theorem dos_refines_inv (sink : block.Sink) (offset ml : Std.Usize)
    (_hinv : sink.pos.val ≤ sink.output.length) (hne : 0 < sink.output.length)
    (hnf : ∀ e, OldDOS sink offset ml ≠ fail e) :
    OldDOS sink offset ml = NewDOS sink offset ml :=
  dos_refines sink offset ml (by omega) hnf

#print axioms dos_refines_inv

theorem cexA_strict :
    (0#usize : Std.Usize).val ≤ out1.length ∧ 0 < out1.length ∧
    (∃ e, OldDOS { output := out1, pos := 0#usize } 1#usize 0#usize = fail e) ∧
    (∃ v, NewDOS { output := out1, pos := 0#usize } 1#usize 0#usize = ok v) := by
  refine ⟨by simp [out1], by simp [out1], ⟨_, cexA_old⟩, ?_⟩
  obtain ⟨b, hb⟩ := cexA_new
  exact ⟨_, hb⟩

#print axioms cexA_strict

/-! ## duplicate_slice -/

noncomputable abbrev OldDS := Lb9fa440ApidOld.block.decompress_safe.duplicate_slice
noncomputable abbrev NewDS := Lb9fa440ApidNew.block.decompress_safe.duplicate_slice

theorem osub_ok (x y : Std.Usize) (h : y.val ≤ x.val) :
    ∃ z : Std.Usize, core.num.Usize.overflowing_sub x y = (z, false) ∧ z.val = x.val - y.val := by
  have := core.num.Usize.overflowing_sub_eq x y
  generalize core.num.Usize.overflowing_sub x y = p at this ⊢
  obtain ⟨a, c⟩ := p
  have hlt : ¬ (x.val < y.val) := by omega
  simp only [hlt, if_false] at this
  obtain ⟨h1, rfl⟩ := this
  exact ⟨a, rfl, h1⟩

theorem oadd_ok (x y : Std.Usize) (h : x.val + y.val ≤ Usize.max) :
    ∃ z : Std.Usize, core.num.Usize.overflowing_add x y = (z, false) ∧ z.val = x.val + y.val := by
  have := core.num.Usize.overflowing_add_eq x y
  generalize core.num.Usize.overflowing_add x y = p at this ⊢
  obtain ⟨a, c⟩ := p
  simp only at this
  split_ifs at this with hov
  · exfalso; scalar_tac
  obtain ⟨h1, rfl⟩ := this
  exact ⟨a, rfl, h1⟩

theorem uadd_ok (x y : Std.Usize) (h : x.val + y.val ≤ Usize.max) :
    ∃ z : Std.Usize, x + y = ok z ∧ z.val = x.val + y.val := by
  obtain ⟨z, hz, hzv⟩ := WP.spec_imp_exists (Usize.add_spec (x := x) (y := y) h)
  exact ⟨z, hz, hzv⟩

/-- Witness E (satisfies the Sink invariant pos ≤ len; no `copy_within` involved):
    empty output, pos = 0, offset = 0, match_length = 1.
    Old: `1 + 16 >= 0` → overlapping path → `Err(UnexpectedOutputEmpty)`.
    New: `1 > 0` → overlapping path → byte loop reads index 0 of the empty slice → panic. -/
theorem cexE_old : ∃ b,
    OldDS { output := empty, pos := 0#usize } 0#usize 1#usize =
      ok (.Err .UnexpectedOutputEmpty, { output := empty, pos := 0#usize }, b) := by
  obtain ⟨z, hz, hzv⟩ := uadd_ok 1#usize 16#usize (by scalar_tac)
  have hz17 : z = 17#usize := by scalar_tac
  subst hz17
  have h0 : ¬ (17#usize < 0#usize) := by scalar_tac
  simp [OldDS, Lb9fa440ApidOld.block.decompress_safe.duplicate_slice, hz,
    Lb9fa440ApidOld.block.decompress_safe.duplicate_overlapping_slice,
    Lb9fa440ApidOld.block.Sink.impl.pos, lift, len_empty,
    core.result.Result.Insts.CoreOpsTry.branch,
    core.result.Result.Insts.CoreOpsTry_traitFromResidualResult.from_residual]

#print axioms cexE_old

theorem cexE_new :
    NewDS { output := empty, pos := 0#usize } 0#usize 1#usize = fail .arrayOutOfBounds := by
  obtain ⟨z, hz, hzv⟩ := uadd_ok 0#usize 1#usize (by scalar_tac)
  have hz1 : z = 1#usize := by scalar_tac
  subst hz1
  obtain ⟨st, hst, hstv⟩ := osub_ok 0#usize 0#usize (by simp)
  have hst0 : st = 0#usize := by scalar_tac
  subst hst0
  have hl := loop_oob { start := 0#usize, «end» := 1#usize } (fun s1 => s1) empty 0#usize
    (by simp) (by simp [empty])
  simp only [NewLoop] at hl
  have hgt : (0#usize : Std.Usize) < 1#usize := by scalar_tac
  simp [NewDS, Lb9fa440ApidNew.block.decompress_safe.duplicate_slice, hgt,
    Lb9fa440ApidNew.block.decompress_safe.duplicate_overlapping_slice,
    Lb9fa440ApidNew.block.Sink.impl.pos, lift, hz, hl]

#print axioms cexE_new

theorem cexE_ne :
    OldDS { output := empty, pos := 0#usize } 0#usize 1#usize ≠
      NewDS { output := empty, pos := 0#usize } 0#usize 1#usize := by
  obtain ⟨b, hb⟩ := cexE_old
  rw [hb, cexE_new]
  simp

#print axioms cexE_ne

/-- Witness F (strict refinement through `duplicate_slice`, invariant holds, no `copy_within`):
    output = [7], pos = 0, offset = 1, match_length = 2. Old panics (`pos - 1`), New returns
    `Err(OffsetOutOfBounds)`. -/
theorem cexF_old :
    OldDS { output := out1, pos := 0#usize } 1#usize 2#usize = fail .integerOverflow := by
  obtain ⟨z, hz, hzv⟩ := uadd_ok 2#usize 16#usize (by scalar_tac)
  have hz18 : z = 18#usize := by scalar_tac
  subst hz18
  have h0 : ¬ (18#usize < 1#usize) := by scalar_tac
  have : (0#usize - 1#usize : Result Usize) = fail .integerOverflow := by
    show UScalar.sub _ _ = _
    simp [UScalar.sub]
  simp [OldDS, Lb9fa440ApidOld.block.decompress_safe.duplicate_slice, hz,
    Lb9fa440ApidOld.block.decompress_safe.duplicate_overlapping_slice,
    Lb9fa440ApidOld.block.Sink.impl.pos, Lb9fa440ApidOld.block.Sink.as_slice, this]

#print axioms cexF_old

theorem cexF_new : ∃ b,
    NewDS { output := out1, pos := 0#usize } 1#usize 2#usize =
      ok (.Err .OffsetOutOfBounds, { output := out1, pos := 0#usize }, b) := by
  have hgt : (1#usize : Std.Usize) < 2#usize := by scalar_tac
  simp [NewDS, Lb9fa440ApidNew.block.decompress_safe.duplicate_slice, hgt,
    Lb9fa440ApidNew.block.decompress_safe.duplicate_overlapping_slice,
    Lb9fa440ApidNew.block.Sink.impl.pos, lift,
    core.result.Result.Insts.CoreOpsTry.branch,
    core.result.Result.Insts.CoreOpsTry_traitFromResidualResult.from_residual]

#print axioms cexF_new

/-- Witness D (respects the Sink invariant pos ≤ len, no `copy_within`, but needs a huge
    output buffer): output of length L with `Usize.max - 15 ≤ L < Usize.max`,
    pos = L, offset = L, match_length = 1.
    Old: `1 + 16 < L` → non-overlapping path; `output_end = L + 1 > capacity = L` →
    `Err(OffsetOutOfBounds)` (the check removed by the commit).
    New: `1 ≤ L` → non-overlapping path; `output_end + 15` overflows usize → panic. -/
theorem cexD_old (out : Slice Std.U8)
    (hL1 : Usize.max - 15 ≤ out.length) (hL2 : out.length < Usize.max) :
    ∃ b, OldDS { output := out, pos := Slice.len out } (Slice.len out) 1#usize =
      ok (.Err .OffsetOutOfBounds, { output := out, pos := Slice.len out }, b) := by
  have hlv : (Slice.len out).val = out.length := Slice.len_val out
  obtain ⟨z, hz, hzv⟩ := uadd_ok 1#usize 16#usize (by scalar_tac)
  have hz17 : z = 17#usize := by scalar_tac
  subst hz17
  obtain ⟨st, hst, -⟩ := osub_ok (Slice.len out) (Slice.len out) (le_refl _)
  obtain ⟨oe, hoa, hoe⟩ := oadd_ok (Slice.len out) 1#usize (by scalar_tac)
  have h17 : ¬ (out.val.length ≤ 17) := by scalar_tac
  simp [OldDS, Lb9fa440ApidOld.block.decompress_safe.duplicate_slice, hz, hoa, h17,
    Lb9fa440ApidOld.block.Sink.impl.pos, Lb9fa440ApidOld.block.Sink.capacity, lift, hst]
  rw [if_pos (by scalar_tac)]
  exact ⟨_, rfl⟩

#print axioms cexD_old

theorem cexD_new (out : Slice Std.U8)
    (hL1 : Usize.max - 15 ≤ out.length) (hL2 : out.length < Usize.max) :
    NewDS { output := out, pos := Slice.len out } (Slice.len out) 1#usize =
      fail .integerOverflow := by
  have hlv : (Slice.len out).val = out.length := Slice.len_val out
  have hng : ¬ (1#usize > Slice.len out) := by scalar_tac
  obtain ⟨st, hst, -⟩ := osub_ok (Slice.len out) (Slice.len out) (le_refl _)
  obtain ⟨oe, hoe, hoev⟩ := uadd_ok (Slice.len out) 1#usize (by scalar_tac)
  obtain ⟨f, hf, hfv⟩ := WP.spec_imp_exists
    (Usize.sub_spec (x := 16#usize) (y := 1#usize) (by scalar_tac))
  have hf15 : f = 15#usize := by scalar_tac
  subst hf15
  have hov : (oe + 15#usize : Result Usize) = fail .integerOverflow := by
    show UScalar.add _ _ = _
    simp only [UScalar.add, UScalar.tryMk, UScalar.tryMkOpt]
    have hcb : ¬ (oe.val + 15 < 2 ^ System.Platform.numBits) := by
      have : Usize.max = 2 ^ System.Platform.numBits - 1 := by simp [Usize.max, Usize.numBits]
      scalar_tac
    simp [hcb]
  simp [NewDS, Lb9fa440ApidNew.block.decompress_safe.duplicate_slice, hng,
    Lb9fa440ApidNew.block.Sink.impl.pos, Lb9fa440ApidNew.block.Sink.capacity, lift, hst, hoe,
    hf, hov]

#print axioms cexD_new

/-- A concrete buffer of length `Usize.max - 1` (exists as a Lean value; in real Rust such an
    allocation is impossible since allocations are bounded by `isize::MAX`). -/
noncomputable def bigOut : Slice Std.U8 :=
  Slice.from (List.replicate (Usize.max - 1) 0#u8) (by simp)

theorem cexD_ne :
    (Slice.len bigOut).val ≤ bigOut.length ∧
    OldDS { output := bigOut, pos := Slice.len bigOut } (Slice.len bigOut) 1#usize ≠
      NewDS { output := bigOut, pos := Slice.len bigOut } (Slice.len bigOut) 1#usize := by
  have hlen : bigOut.length = Usize.max - 1 := by simp [bigOut]
  have hpos : 0 < Usize.max := by scalar_tac
  refine ⟨by simp, ?_⟩
  obtain ⟨b, hb⟩ := cexD_old bigOut (by omega) (by omega)
  rw [hb, cexD_new bigOut (by omega) (by omega)]
  simp

#print axioms cexD_ne

end Pb9fa440Overlap
